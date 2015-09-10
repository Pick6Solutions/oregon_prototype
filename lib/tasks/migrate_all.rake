desc "migrate db and test db"
task :migrate_all do
  `RACK_ENV=test bundle exec rake db:migrate`
  `bundle exec rake db:migrate`
end