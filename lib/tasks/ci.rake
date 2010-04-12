namespace :ci do
  desc "CI"
  task :build => ['bundle:install', 'db:migrate', 'features']
end