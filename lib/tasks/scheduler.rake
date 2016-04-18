require './lib/assets/men_preprocessor'
require './lib/assets/women_preprocessor'

desc "This task is called by the Heroku scheduler add-on"
task :update_videos => :environment do
  puts "Updating Male videos..."
  men_preprocessor = MenPreprocessor.new
  men_preprocessor.process
  puts "Male videos updated!"
  puts "Updating Female videos..."
  women_preprocessor = WomenPreprocessor.new
  women_preprocessor.process
  puts "Female videos updated!"
  puts "Videos are finished!"
end
