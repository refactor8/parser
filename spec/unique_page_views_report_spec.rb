require 'spec_helper'

RSpec.describe Parser::UniquePageViewsReport do
  subject do
    file = File.dirname(__FILE__) + "/fixtures/webserver.log"
    log = Parser::LogTransform.new(Parser::LogParser.new(file).parse)
    report = Parser::UniquePageViewsReport.new
    report.log = log
    report
  end

  describe "#build" do
    it "builds a report" do
      expect(subject.build).to eq [["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]]
    end
  end

  describe "#print" do
    it "prints out a report" do
      subject.build
      expect(subject.print).to eq  [["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]]
    end
  end
end
