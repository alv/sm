class Question < ActiveRecord::Base
  # Relations
  belongs_to :user
  # Validations
  validates_presence_of :title
  validates_presence_of :user_id, :on => :create
  validates_uniqueness_of :title
end
