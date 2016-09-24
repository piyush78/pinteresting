class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  validates :email, uniqueness: true
end
