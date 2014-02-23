Lua-Logging
===========

A port of Lua-Logging for OpenComputers. Lua-Logging was originaly created by [Neopallium](https://github.com/Neopallium) and can be found [here](https://github.com/Neopallium/lualogging). It is designed after log4J

This port has the basic logging features of Lua Logging. It also has the appenders for the console, a file and a rolling file. NOTE: OCs current seek behavior doesn't allow for the use of rolling files. You have to close the file before you can roll. Use at your own risk. 

To install it, simply place it into you `package.path`. 
