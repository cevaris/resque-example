#!/usr/bin/env ruby

iterations = 100
(0..iterations).each do |id|
  `curl -i -F file=@test.jpeg http://localhost:5000/upload >> log.txt`
  print "\r\e[KExecute job-#{id}"
  sleep 0.5
end