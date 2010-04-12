namespace :ci do
  task :build => ['db:migrate', 'spec', 'features']
end