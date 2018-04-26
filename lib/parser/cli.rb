module Parser
  class CLI
    def initialize(file)
      @log = LogParser.new(file).parse

      Parser.configure do |configure|
        configure.visitors = "visitors"
        configure.unique_visits = "unique visits"
      end
    end

    def print
      builder = ReportBuilder.new(LogTransform.new(@log))
      builder.build(MostPageViewsReport.new)
      builder.print

      builder = ReportBuilder.new(LogTransform.new(@log))
      builder.build(UniquePageViewsReport.new)
      builder.print
    end
  end
end
