module Parser
  class UniquePageViewsReport < Report
    def initialize
      super
    end

    def build
      @log.uniq
      @log.split
      @log.to_h
      @log.sort
    end

    def print
      puts "List of webpages with most unique page views"
      @log.print.each do |r|
        printf("|%15s%6d unique visits|\n", r[0], r[1])
      end
    end
  end
end
