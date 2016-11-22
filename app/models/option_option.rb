class OptionOption < ActiveRecord::Base
  belongs_to :option, polymorphic: true
  belongs_to :question
end
