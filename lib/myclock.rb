require 'time'

module MyClock
  def MyClock.get_time
    return Time.now.utc
  end
end
