class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  include ActiveModel::Validations
  validates_with PhoneValidator
end