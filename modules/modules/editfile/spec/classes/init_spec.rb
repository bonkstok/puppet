require 'spec_helper'
describe 'editfile' do
  context 'with default values for all parameters' do
    it { should contain_class('editfile') }
  end
end
