class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :description, :github_url, :given_name, :last_name, :linkedin_url, :tag_line
end
