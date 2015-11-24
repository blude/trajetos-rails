class Location < ActiveRecord::Base
    act_as_mappable :default_units => :kms
end
