class Assignment < ActiveRecord::Base
  attr_accessible :author, :common_core, :description, :educational_use, :in_language, :intended_end_userole, :interactivity_type, :is_based_on_url, :learning_resource_type, :location, :publisher_id, :time_required, :title, :typical_age_range, :use_rights_url
end


#author common_core description educational_use in_language intended_end_userole interactivity_type is_based_on_url learning_resource_type location publisher_id time_required title typical_age_rangeuse_rights_url