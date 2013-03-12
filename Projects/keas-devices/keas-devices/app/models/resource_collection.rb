class ResourceCollection < ActiveRecord::Base
  attr_accessible :resource_name, :collected, :resource_name, :date, :device_id
  serialize :collected, Hash
  
  belongs_to :device
end
