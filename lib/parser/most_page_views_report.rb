module Parser
  class MostPageViewsReport < Report
    def initialize
      super
    end

    def build
      @log.split
      @log.to_h
      @log.sort
    end

    def print
      puts "List of webpages with most page views ordered"
      @log.print.each do |r|
        printf("|%15s%6d visitors|\n", r[0], r[1])
      end
    end
  end
end
