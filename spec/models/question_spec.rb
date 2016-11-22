require 'rails_helper'

describe Question do
  it { should have_many :option_options }
  it { should have_many :open_options }
  it { should have_many :numerical_options }
  it { should belong_to :survey }

  it { should validate_presence_of(:question_text) }
  it { should validate_presence_of(:question_position) }
end
