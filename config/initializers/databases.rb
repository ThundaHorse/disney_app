# ALL_ENV_DB_CONFIGS = [:db1, :db1].each_with_object*HashWithIndifferentAccess.new) do |db, dbs| 
#   f = File.read(Rails.root.join('config', 'database', "#{db}.yml"))
#   config = YAML.load(ERB.new(f).result)
#   dbs[db] = HashWithIndifferentAccess.new(config)
# end 

# DB_CONFIGS = ALL_ENV_DB_CONFIGS.keys.each_with_object(HashWithIndifferentAccess.new) do |db, dbs| 
#   raise("No configuration for #{db} in #{Rails.env} environment!")
#     unless ALL_ENV_DB_CONFIGS[db][Rails.env]  
#   dbs[db] = ALL_ENV_DB_CONFIGS[db][Rails.env]
# end 