= config_fu

http://github.com/railsbros/config_fu

A very simple gem that allows environment specific configuration within a Rails application.

Get it from Github: http://github.com/railsbros/config_fu

== EXAMPLE

Create a Rails initializer named 'config_fu.rb' with your custom config code:

    ConfigFu::Configuration.configure do |config|
      config.service_provider = "CentralProvider"
      config.thumbs = 4
      config.exception_handler = "MyExceptionHandler"
    end

    # special config for developent environment
    ConfigFu::Configuration.configure(:development) do |config|
    end

    # special config for test environment
    ConfigFu::Configuration.configure(:test) do |config|
      config.service_provider = "MockProvider"
      config.exception_handler = "MockExceptionHandler"
    end

    # special config for production environment
    ConfigFu::Configuration.configure(:production) do |config|
      config.service_provider = "MasterProvider"
      config.thumbs = 10
      config.exception_handler = "MailExceptionHandler"
    end

And add the following to your Rails environment:

    config.gem "railsbros-config_fu", :lib => "config_fu", :source => "http://gems.github.com"

== LICENSE:

(The MIT License)

Copyright (c) 2009 Dirk Breuer

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.