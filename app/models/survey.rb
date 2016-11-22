class Survey < ActiveRecord::Base
  has_many :questions

  validates :name, presence: true
  validates :body, presence: true
end
