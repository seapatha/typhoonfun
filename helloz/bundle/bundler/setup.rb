require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/backports-3.11.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/multi_json-1.13.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mustermann-1.0.3/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rack-2.0.6/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rack-protection-2.0.5/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/tilt-2.0.9/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sinatra-2.0.5/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sinatra-contrib-2.0.5/lib"
