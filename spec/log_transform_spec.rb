require 'spec_helper'

RSpec.describe Parser::LogTransform do
  subject do
    Parser::LogTransform.new(@log)
  end

  before :each do
    @log = Parser::LogParser.new(File.dirname(__FILE__) + "/fixtures/webserver.log").parse
  end

  describe "#clone" do
    it "clones the log" do
      expect(subject.clone).to eq @log
    end
  end

  describe "#to_h" do
    it "returns a hash" do
      expect(subject.to_h).to be_a(Hash)
    end
  end

  describe "#split" do
    it "splits url addresses and ip addresses" do
      expect(subject.split.take(5)).to eq ["/help_page/1", "/contact", "/home", "/about/2", "/help_page/1"]
    end
  end

  describe "#sort" do
    it "returns a sorted hash" do
      expect(subject.split.sort.take(5)).to eq  ["/about", "/about", "/about", "/about", "/about"]
    end
  end

  describe "#uniq" do
    it "returns a sorted hash" do
      expect(subject.split.sort.take(5)).to eq  ["/about", "/about", "/about", "/about", "/about"]
    end
  end
end
