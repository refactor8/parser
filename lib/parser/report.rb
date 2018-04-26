module Parser
  class Report
    attr_accessor :log

    def initialize; end;

    def build
      raise "method show not implemented in #{self.class.name}"
    end

    def print
      raise "method show not implemented in #{self.class.name}"
    end
  end
end
