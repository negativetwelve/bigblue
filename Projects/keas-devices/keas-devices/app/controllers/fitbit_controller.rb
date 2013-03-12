#http://www.fitbitclient.com/guide/getting-started
#http://keas-fitbit.herokuapp.com/fitbit?oauth_token=c03f209de94008314375dfc3ec922340&oauth_verifier=mc51um9ohths7l80jb71h7513e

class FitbitController < ApplicationController
  
  #Authorizes Fitgem::Client with verifier entered by user
  #Creates a FitBit device
  def create
    # Load the existing yml config
    config = begin
      Fitgem::Client.symbolize_keys(YAML.load(File.open("config/fitgem.yml")))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
      exit
    end
    
    client = session[:client]
    token = params[:token]
    secret = params[:secret]
    verifier = params[:verifier]
        
    begin
      access_token = client.authorize(token, secret, { :oauth_verifier => verifier })
    rescue Exception => e
      puts "Error: Could not authorize Fitgem::Client with supplied oauth verifier: " + verifier
      exit
    end

    user_id = client.user_info['user']['encodedId']

###    config[:oauth].merge!(:token => access_token.token, :secret => access_token.secret, :user_id => user_id)
    #:owner_id => user_id might be a bit confusing
    Device.create(:name => 'fitbit', :user_id => current_user.id, :owner_id => user_id, 
    :token => access_token.token, :secret => access_token.secret )
    # Write the whole oauth token set back to the config file
###    File.open("config/fitgem.yml", "w") {|f| f.write(config.to_yaml) }
    
    #Create subscription using fitgem
    client.create_subscription(:type => :all, :subscription_id => user_id)  #one subscription per user
    
    respond_to do |format|
      format.html { redirect_to '/fitbit' }
    end
  end
  
  #Displays link to authorize FitBit account and field to enter verifier
  def authorize
    # Load the existing yml config
    config = begin
      Fitgem::Client.symbolize_keys(YAML.load(File.open("config/fitgem.yml")))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
      exit
    end
    @client = Fitgem::Client.new(config[:oauth])  #passed as hidden field
    session[:client] = @client
    
    #Already have a FitBit account
### if config[:oauth][:token] && config[:oauth][:secret]
###      @fitbit = true
    #Need to be directed to FitBit verify page
###    else
    request_token = @client.request_token
    @token = request_token.token
    @secret = request_token.secret
    @auth_url = "http://www.fitbit.com/oauth/authorize?oauth_token=#{@token}" #URL to authorize Keas with FitBit
###    end    
  end
  
  #After authorizing FitBit, user is given verifier code on this page that it must enter in authorize page
  def verifier
    @verifier = params[:oauth_verifier]
  end
    
  def remove_sub
    config = begin
      Fitgem::Client.symbolize_keys(YAML.load(File.open("config/fitgem.yml")))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
      exit
    end
    
#NEED TO EDIT WITH NEWLY MOVED TOKEN AND SECRET
    client = Fitgem::Client.new(config[:oauth])
    
    client.remove_subscriptions(:type => :all, :subscription_id => "24N6YJ", :subscriber_id => "1")    
  end
   
  # Displays notifications
  def index 
    # Load the existing yml config
    config = begin
      Fitgem::Client.symbolize_keys(YAML.load(File.open("config/fitgem.yml")))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
      exit
    end
    
    client = Fitgem::Client.new(config[:oauth])  
    # With USER CREDENTIALS token and secret, try to use them to reconstitute a usable Fitgem::Client
    # Then display subscription info
    
    if current_user
      if fitbit_device = current_user.devices.where("name = ?", 'fitbit').first #found device
        @fitbit = true
        begin
          access_token = client.reconnect(fitbit_device[:token], fitbit_device[:secret])
        rescue Exception => e
          puts "Error: Could not reconnect Fitgem::Client due to invalid token and secret in device"
          exit
        end
        @subscriptions = client.subscriptions(:type => :all)
      #Provide link to Add FitBit
      else
        @fitbit = false
      end
    end
    
    @total_distance = WalkingStatistic.all.sum(&:distance_in_miles)
  end
 
end