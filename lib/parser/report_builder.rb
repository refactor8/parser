module Parser
  class ReportBuilder

    def initialize(log)
      @log = log
    end

    def build(report)
      @report = report
      @report.log = @log
      @report.build
    end

    def print
      @report.print if @report
    end
  end
end
