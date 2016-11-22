class NumericalOption < ActiveRecord::Base
  has_many :option_options, as: :option
  has_many :questions, through: :option_options
end
