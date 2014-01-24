#!/usr/bin/env ruby

iterations = 100
(0..iterations).each do |id|
  `curl -i -F file=@test.jpeg http://localhost:500#{rand(0..4)}/upload >> dev.log`
  print "Execute job-#{id}"
  sleep 0.5
end