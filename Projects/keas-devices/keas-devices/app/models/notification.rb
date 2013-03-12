class Notification < ActiveRecord::Base
  attr_accessible :collectionType, :date, :ownerId, :ownerType, :subscriptionId
end
