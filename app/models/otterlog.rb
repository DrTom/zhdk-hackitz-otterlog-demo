class Otterlog < ActiveRecord::Base
  set_primary_key :id
  attribute_names.map(&:to_sym).each{|att| attr_accessible att}
end
