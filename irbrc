if RUBY_VERSION == '1.8.7'
IRB.conf[:IRB_RC] = Proc.new do
  Gem.source_index.refresh! if defined?(Bundler)

  requires = %w[looksee awesome_print hirb wirble]
  requires.each do |lib|
    Gem.activate(lib) if defined?(Bundler)
    require lib
  end

  Wirble.init
  Wirble.colorize
  Hirb.enable(:pager => false)
  ActiveRecord::Base.connection.instance_variable_set :@logger, Logger.new(STDOUT) if defined?(ActiveRecord)
end
end

require 'irb/completion'
require 'irb/ext/save-history'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
