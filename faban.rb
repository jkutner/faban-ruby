require 'java'

java_import "com.sun.faban.driver.util.FabanHTTPBench"

begin
  FabanHTTPBench.main(ARGV)
rescue java.lang.NullPointerException
  puts "Done!"
end
