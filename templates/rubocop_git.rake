if Rails.env.development? || Rails.env.test?
  require 'rubocop/git/cli'

  namespace :rubocop do
    desc 'Reviews all staged files for style guide violations'
    task :git do
      puts
      begin
        RuboCop::Git::CLI.new.run ['--staged']
      rescue SystemExit => e
      end
    end
  end
end
