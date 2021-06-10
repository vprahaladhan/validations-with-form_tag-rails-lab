class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with PostValidator
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category!" }
end