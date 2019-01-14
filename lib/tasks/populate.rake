require 'factory_bot_rails'
#usage:
# rake db:populate
# rake db:populate["Customer"]

namespace :db do
  desc "Populate the dev database with FactoryBot data"
  task :populate, [:count] => [:environment] do |_, args|
    # adapted from https://gist.github.com/jgv/4638318
    args.with_defaults(:count => 10)
    puts args.inspect
    puts "Resetting the database"
    Rake::Task['db:drop:_unsafe'].invoke
    Rake::Task['db:setup'].invoke
    puts "Creating #{args[:count]} of each class"
    factory_names = FactoryBot.factories.map(&:name)
    puts "Found factories: #{factory_names.inspect}"

    models = factory_names.map {|n| FactoryBot.create_list(n, args[:count].to_i)}
    puts "#{models.size} factories, classes:"
    puts models.map {|m| m[0].class.name}.to_set.inspect
  end
end