require 'optparse'

module Sword::Tuner
  DEFAULTS  = {:Port => 1111}
  @@options = DEFAULTS
  @@parsers = []

  class << self
    def on(*args, &block)
      @@parsers << [*args, Proc.new(&block)]
    end

    def set(key, value)
      @@options[key] = value
    end

    def new(arguments)
      OptionParser.new do |op|
        @@parsers.sort.each { |p| op.on(*p) }
      end.parse(arguments)
      @@options
    ensure
      @@options = DEFAULTS
    end
  end

  on '-p', '--port <number>', 'Specify port, default: 1111' do |number|
    set :Port, number
  end

  on '-v', '--version', "Print Sword's version" do
    require 'sword/version'
    puts 'Sword ' << Sword::VERSION
    exit
  end

  on '-d', '--directory <path>', 'Specify root, default: ./' do |path|
    set :directory, path
  end

  # on '--host <ip>', '0.0.0.0 by default' do |ip|
  #   set :Host, ip
  # end
end
