require 'pp'

# After receiving notification from FitBit subscription, need to create Keas HealthStatistic
class NotificationController < ApplicationController  
  def create
    Rails.logger.info "in create"
    json_file = params[:updates].tempfile
    json_string = File.read(json_file)
    parsed_json = ActiveSupport::JSON.decode(json_string)       
    Rails.logger.info 'PARSED JSON'
    Rails.logger.info parsed_json
    # Iterate through notifications within json file
    parsed_json.each do |notification|
      notification.symbolize_keys!      
      collectionType = notification[:collectionType]
      date = notification[:date]
      ownerId = notification[:ownerId]
      ownerType = notification[:ownerType]
      subscriptionId = notification[:subscriptionId]
      
      # Create notification item to be enqueued
      n = Notification.create(:collectionType => collectionType, :date => date, 
      :ownerId => ownerId, :ownerType => ownerType, :subscriptionId => subscriptionId)
      # Enqueue Notification
      Rails.logger.info 'before enqueue'
      Resque.enqueue(StatisticCreator, n.id)
      Rails.logger.info 'after enqueue'
    end
  end
end
