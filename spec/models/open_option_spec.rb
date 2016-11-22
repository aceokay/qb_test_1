require 'rails_helper'

describe OpenOption do
  it { should have_many :option_options }
  it { should have_many :questions }
end
