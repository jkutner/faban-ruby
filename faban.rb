require 'java'

begin
  com.sun.faban.driver.util.FabanHTTPBench.main(ARGV)
rescue java.lang.NullPointerException
  puts "Done!"
  java.lang.System.exit(0)
end
