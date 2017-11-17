# require 'aws-sdk'
require 'aws-sdk-s3'

puts "Docker environment"
puts "------------------\n"
puts `ip a`
puts `ping localstack -c 5`

puts "Ruby container toward localstack instance (S3)"
puts "----------------------------------------------\n"
localstack = 'http://localstack:4572/'
puts "Setting endpoint to #{localstack}"
Aws.config.update(endpoint: localstack, credentials: Aws::Credentials.new('sofake', 'solie'), region: 'eu-west-1')
puts "Aws.config=#{Aws.config.inspect}"

puts "sleeping 5s"

STDOUT.flush
sleep(5)

begin 
puts "Aws::S3::Resource.new.bucket('mybucket').exists?"
puts Aws::S3::Resource.new.bucket('mybucket').exists?.inspect
rescue
  puts "Sleeping for some years, letting you hop into the container…"
  STDOUT.flush
  sleep(99999999)
end
