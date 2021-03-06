$:.unshift './lib'
require 'sword'
require 'gutenberg/mixins'

Gutenberg.new do
  def repo; 'sword' end
  def user; 'somu'  end

  def sword
    "[![Sword](http://#{repo}.mu/#{repo}.gif)]" \
    "(http://#{repo}.mu)"
  end

  def dir_sample
    %w[directory/you/wanna/watch your/project/directory].sample
  end

  def options
    parser = Sword::Execute::Parser.new([], 25)
    parser.instance_eval { @parser }.to_s.split("\n")[1..-1].join("\n")
  end

  def paypal
    "[![Paypal](https://www.paypalobjects.com/en_GB/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8PCQ52CFPFSKL)"
  end

  def version;   Sword::VERSION     end
  def directory; Sword::E.directory end
  def port;      Sword::E.port      end

  def executable; "https://github.com/#{user}/#{repo}/blob/master/#{repo}.exe?raw=true" end
  include Gutenberg::Mixins
end
