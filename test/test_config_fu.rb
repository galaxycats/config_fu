require File.dirname(__FILE__) + '/test_helper.rb'

class TestConfigFu < Test::Unit::TestCase

  def setup
    Rails.stubs(:env => 'development')
  end
  
  def test_should_add_config_methods_dynamically
    ConfigFu::Configuration.configure { |config| config.mailer = "MockMailer" }
    assert_equal "MockMailer", ConfigFu.config.mailer
  end
  
  def test_should_respect_environment_specific_config_before_the_general_one
    ConfigFu::Configuration.configure { |config| config.mailer = "MockMailer" }
    assert_equal "MockMailer", ConfigFu.config.mailer
    
    ConfigFu::Configuration.configure(:development) { |config| config.mailer = "DevelopmentMailer" }
    assert_equal "DevelopmentMailer", ConfigFu.config.mailer
  end
  
  def test_should_ignore_config_if_the_current_environment_doesnt_matches_the_given_one
    ConfigFu::Configuration.configure { |config| config.mailer = "MockMailer" }
    assert_equal "MockMailer", ConfigFu.config.mailer
    
    ConfigFu::Configuration.configure(:production) { |config| config.mailer = "LiveMailer" }
    assert_equal "MockMailer", ConfigFu.config.mailer
  end
  
end
