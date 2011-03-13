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
