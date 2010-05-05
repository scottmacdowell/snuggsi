namespace :db do
  task :migrate_one => :environment do
    raise '*** Must provide klass name***' if ENV['class'].nil?

    file = Dir["db/migrate/*create_#{ENV['class'].tableize}.rb"].first
    require(file)

    klass = file.scan(/([0-9]+)_([_a-z0-9]*).rb/)[0][1].camelize.constantize 
    klass.migrate(:down) # unless ENV['DIRECTION'] == 'up'
    klass.migrate(:up) # unless ENV['DIRECTION'] == 'down'
  end
end