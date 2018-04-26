require "parser/version"
require "parser/cli"
require "parser/report"
require "parser/log_parser"
require "parser/log_transform"
require "parser/report_builder"
require "parser/most_page_views_report"
require "parser/unique_page_views_report"

module Parser
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration) if block_given?
    end

    def reset
      @configuration = Configuration.new
    end
  end

  class Configuration
    attr_accessor :visitors, :unique_visits

    def initialize
      visitors = "visitors"
      unique_visits = "unique visits"
    end
  end
end
