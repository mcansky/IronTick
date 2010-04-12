namespace :bundle do
  desc 'install bundler gems'
  task :install do
    `bundle install #{RAILS_ROOT}/bundled_gems`
  end
end