module Sword
  LIBRARY  = File.dirname __FILE__
  $:.unshift LIBRARY

  require 'sword/output'
  require 'sword/windows'
  require 'sword/loader'
  require 'sword/version'
  
  SETTINGS = Loader.parse_settings

  require 'sword/helpers'
  require 'sword/application'
  require 'sword/routes'
end
