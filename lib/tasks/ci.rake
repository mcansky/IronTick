namespace :ci do
  task :copy_yml do
    system("cp #{Rails.root}/config/database.yml.ci #{Rails.root}/config/database.yml")
  end
  desc "CI"
  task :build => ['copy_yml', 'db:migrate', 'features']
end