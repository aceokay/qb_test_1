require 'rails_helper'

describe OptionOption do
  it { should belong_to :option }
  it { should belong_to :question }
end
