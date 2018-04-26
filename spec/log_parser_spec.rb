require 'spec_helper'

RSpec.describe Parser::LogParser do
  subject do
    Parser::LogParser.new(File.dirname(__FILE__) + "/fixtures/webserver.log")
  end

  describe "#parse" do
    it "parses the log file" do
      expect(subject.parse.count).to eq 500
    end
  end
end
