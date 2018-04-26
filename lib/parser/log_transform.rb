module Parser
  class LogTransform
    def initialize(log)
      @log = log
      clone
    end

    def clone
      @replica = @log
    end

    def to_h
      @replica = @replica.group_by(&:itself).transform_values(&:size)
    end

    def split
      @replica = @replica.collect { |v| v.split(' ')[0] }
    end

    def sort
      @replica = @replica.sort_by { |k, v| v }.reverse
    end

    def uniq
      @replica = @replica.uniq
    end

    def print
      @replica
    end
  end
end
