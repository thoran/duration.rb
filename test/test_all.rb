# test/test_all.rb

Dir[File.join(__dir__, '**/*_test.rb')].each do |test_file|
  require test_file
end
