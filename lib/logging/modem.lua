local component = require "component"
local logging = require "logging"

function logging.modem(port, address, logPattern)
  local modem, send = component.modem, nil
  if not modem then
    return nil, "No modem available"
  end
  if address then
    send = function(message)
      modem.send(address, port, message)
    end
  else
    send = function(message)
      modem.broadcast(port, message)
    end
  end
  return logging.new(function(self, level, message)
    local s = logging.prepareLogMsg(logPattern, os.date(), level, message)
    return send(message)
  end)
end

return logging.modem
