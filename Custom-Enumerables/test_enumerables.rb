require_relative 'custom_enumerables.rb'

puts "my_each vs each"
[1,2,3].my_each {|num| puts num}
[1,2,3].each  {|num| puts num}

puts "my_each_with_index vs each_with_index"
[1,2,3].my_each_with_index {|val, idx| puts "#{val} #{idx}"}
[1,2,3].each_with_index {|val, idx| puts "#{val} #{idx}"}

puts "my_select vs select"
puts [1,2,3].my_select {|val| val % 2 == 0}
puts [1,2,3].select {|val| val % 2 == 0}

puts "my_all vs all"
puts [2,4,8].my_all? {|val| val % 2 == 0}
puts [2,4,8].all? {|val| val % 2 == 0}

puts "my_any vs any"
puts [1,4,9].my_any? {|val| val % 2 == 0}
puts [1,4,9].any? {|val| val % 2 == 0}

puts "my_none vs none"
puts [1,5,9].my_none? {|val| val % 2 == 0}
puts [1,5,9].none? {|val| val % 2 == 0}
