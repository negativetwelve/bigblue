require 'pp'
class StatisticCreator
  @queue = :notifications
  
  def self.perform(notification_id)
    puts 'Creating statistic'
    
    # Load the existing yml config
    config = begin
      Fitgem::Client.symbolize_keys(YAML.load(File.open("config/fitgem.yml")))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
      exit
    end
    
    notification = Notification.find(notification_id)
    date = notification[:date]
    ownerId = notification[:ownerId]
    
    # Only looking up activities for now
    resource = 'activities'
    if (notification[:collectionType] == resource)
      # Need to initialize new FitBit client for every notification
      consumer_key = config[:oauth][:consumer_key]
      consumer_secret = config[:oauth][:consumer_secret]
      fitbit_device = Device.where("name = ? AND owner_id = ?", 'fitbit', ownerId).first  #Assumes there's only one device
      client = Fitgem::Client.new(:consumer_key => consumer_key, :consumer_secret => consumer_secret, :token => fitbit_device[:token], :secret => fitbit_device[:secret])

      # Look up if existing ResourceCollection with resource_name and date
      resource_collection = fitbit_device.resource_collections.where("resource_name = ? AND date = ?", resource, date).first
      # If collection for that day doesn't exist, create a new one
      if resource_collection.blank?
        resource_collection = ResourceCollection.create(:device_id => fitbit_device.id, :resource_name => resource, 
        :date => date, :collected => Hash.new)
      end

      activities = client.activities_on_date(date)["activities"]  #Array
###
      pp activities         
      # Need to edit to only take difference
      activities.each do |logItem|   #Each logItem is a Hash
        logId = logItem["logId"]
        if not resource_collection[:collected].has_key?(logId)         #if not already in collected,  
          resource_collection[:collected][logId] = logItem             #1) insert into hash, 
          if logItem["name"] == "Walking"                                                                  
            WalkingStatistic.create(:user_id => fitbit_device.user_id, #and 2) create statistic
            :time => logItem["startTime"], :date => date, :distance_in_miles => logItem["distance"])
          end
        end
      end

      resource_collection.save # SAVES changes to changed ResourceCollection!
    end
    
  end
end