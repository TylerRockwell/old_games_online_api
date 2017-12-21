Dir["#{File.dirname(__FILE__)}/seeds/*.rb"].each { |file| require file }

SEED_LIST = %w(Admin User)

def run_seed_file(model)
  print "Seeding #{model.pluralize}..."
  "#{model}Seeds".constantize.run
  puts "done"
end

SEED_LIST.each { |model| run_seed_file(model) }
