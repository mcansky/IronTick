namespace :ci do
  desc "CI"
  task :build => ['db:migrate', 'spec', 'features']
end