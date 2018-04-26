require 'spec_helper'

RSpec.describe Parser::MostPageViewsReport do
  subject do
    file = File.dirname(__FILE__) + "/fixtures/webserver.log"
    log = Parser::LogTransform.new(Parser::LogParser.new(file).parse)
    report = Parser::MostPageViewsReport.new
    report.log = log
    report
  end

  describe "#build" do
    it "builds a report" do
      expect(subject.build).to eq [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
    end
  end

  describe "#print" do
    it "prints out a report" do
      subject.build
      expect(subject.print).to eq [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
    end
  end
end
