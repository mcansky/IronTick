namespace :ci do
  desc "CI"
  task :build => ['db:migrate', 'features']
end