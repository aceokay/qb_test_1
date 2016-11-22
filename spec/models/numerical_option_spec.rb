require 'rails_helper'

describe NumericalOption do
  it { should have_many :option_options }
  it { should have_many :questions }
end
