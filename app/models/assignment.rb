class Assignment < ActiveRecord::Base
  attr_accessible :author, :commonCore, :description, :educationalUse, :inLanguage, :intendedEndUserRole, :interactivityType, :isBasedOnUrl, :learningResourceType, :location, :publisherId, :timeRequired, :title, :typicalAgeRange, :useRightsUrl
end
