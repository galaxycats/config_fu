$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'singleton'

module ConfigFu
  class <<self
    attr_accessor :config
  end

  class Configuration
    include Singleton

    def self.configure(env = Rails.env.to_sym)
      env = [env].flatten
      return unless env.include?(Rails.env.to_sym)

      yield instance if block_given?
      ConfigFu.config = instance
    end
    
    def method_missing(meth, *args)
      if meth.to_s =~ /\w+=/
        self.class.send(:attr_accessor, meth.to_s.gsub(/=/, ''))
        send(meth, *args)
      end
    end
  end
  
  VERSION = '0.1.2'
end