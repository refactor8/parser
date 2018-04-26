require 'spec_helper'

RSpec.describe Parser::Report do
  subject { Parser::Report.new }

  describe '#build' do
    it "raises an exception" do
     expect { subject.build }.to raise_error(RuntimeError)
    end
  end

  describe '#print' do
    it "raises an exception" do
     expect { subject.build }.to raise_error(RuntimeError)
    end
  end
end
