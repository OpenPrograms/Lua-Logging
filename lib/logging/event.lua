local computer = require "computer"
local logging = require "logging"

function logging.event(eventname, logPattern)
  eventname = eventname or "logger_event"
  return logging.new(function(self, level, message)
    local s = logging.prepareLogMsg(logpattern, os.date(), level, message)
    computer.pushSignal(eventname, s)
    return true
  end)
end

return logging.event
