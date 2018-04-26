require 'spec_helper'

RSpec.describe Parser::CLI do
  subject do
    Parser::CLI.new(File.dirname(__FILE__) + "/fixtures/webserver.log")
  end

  context 'when parsing a webserver log' do
    it 'prints out a report' do
      subject.print
    end
  end
end
