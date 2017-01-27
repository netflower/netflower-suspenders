require 'simplecov'
SimpleCov.start do
  load_profile 'test_frameworks'

  add_filter '/config/'
  add_filter '/db/'
  add_filter '/vendor/bundle/'
  add_filter '/components/'

  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Decorators', 'app/decorators'
  add_group 'Mailers', 'app/mailers'
  add_group 'Workers', 'app/workers'
  add_group 'Helpers', 'app/helpers'

  add_group 'Changed' do |source_file|
    `git ls-files --exclude-standard --others \
      && git diff --name-only \
      && git diff --name-only --cached`.split("\n").detect do |filename|
      source_file.filename.ends_with?(filename)
    end
  end
end
