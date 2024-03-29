namespace :sbar do
  desc "Rebuild db with drop, create, migrate, test:prepare (dev only)"
  task :rebuild => :environment do
    input = ''
    STDOUT.puts "Drop, recreate, and migrate league app database? y[es] or n[o]"
    input = STDIN.gets.chomp
    if input == "y" && Rails.env == 'development'
      Rake::Task["db:drop"].execute
      Rake::Task["db:create"].execute
      Rake::Task["db:migrate"].execute
      Rake::Task["db:test:prepare"].execute
    else
      puts "Aborting ebuild tasks"
    end
  end
end