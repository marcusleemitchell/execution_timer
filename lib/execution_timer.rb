require "execution_timer/version"

module ExecutionTimer

  def self.get_time(&block)
    s = Time.now
    yield(block) if block_given?
    return (Time.now - s)
  end

end
