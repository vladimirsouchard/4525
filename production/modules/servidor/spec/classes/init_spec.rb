require 'spec_helper'
describe 'servidor' do
  context 'with default values for all parameters' do
    it { should contain_class('servidor') }
  end
end
