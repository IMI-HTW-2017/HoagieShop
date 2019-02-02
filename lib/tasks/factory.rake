require 'factory_bot_rails'
#usage:
# rake db:factory["Customer",10]

namespace :db do
  desc "Populate the dev database with FactoryBot data"
  task :factory, [:class, :count] => [:environment] do |_, args|
    # adapted from https://gist.github.com/jgv/4638318
    args.with_defaults(:count => 10)
    puts args.inspect
    puts "Creating #{args[:count]} of #{args[:class]}"
    FactoryBot.create_list(args[:class].to_sym, args[:count].to_i)
  end
end