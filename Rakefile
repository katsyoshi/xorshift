# frozen_string_literal: true

require "bundler/gem_tasks"
task default: %i[test]
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['./test/lib/*_test.rb']
  t.verbose = true
end
