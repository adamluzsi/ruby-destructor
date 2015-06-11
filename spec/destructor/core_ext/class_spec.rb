require_relative '../../spec_helper'
describe Destructor::CoreExt::Class do

  let(:super_klass){ Class.new }
  subject { super_klass.new.tap { |o| o.extend(self.described_class) } }

  describe '#new' do

    it 'should call superclass new method than add finalizer to it' do
    end

  end

end