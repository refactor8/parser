require 'spec_helper'

RSpec.describe Parser::ReportBuilder do
  subject do
    file = File.dirname(__FILE__) + "/fixtures/webserver.log"
    log = Parser::LogTransform.new(Parser::LogParser.new(file).parse)
    Parser::ReportBuilder.new(log)
  end

  describe '#build' do
    it 'builds a most page views report' do
      expect(subject.build(Parser::MostPageViewsReport.new)).to eq [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
    end

    it 'builds a unique page views report' do
      expect(subject.build(Parser::UniquePageViewsReport.new)).to eq [["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]]
    end
  end
end
