class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :option_options
  has_many :open_options, through: :option_options, source: :option, source_type: 'OpenOption'
  has_many :numerical_options, through: :option_options, source: :option, source_type: 'NumericalOption'

  validates :question_text, presence: true
  validates :question_position, presence: true
end
