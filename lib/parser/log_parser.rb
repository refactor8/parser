module Parser
  class LogParser
    REGEX = /(?<url>[^:\/\s]+)(:[0-9]+)?((?:\/\w+)*\/?\d*)+\s(?<ip>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b)/m

    attr_reader :file, :lines

    def initialize(file)
      @file = file
    end

    def parse
      @lines = IO.foreach(@file).lazy.grep(REGEX).to_a.collect { |e| e.strip }
    end
  end
end
