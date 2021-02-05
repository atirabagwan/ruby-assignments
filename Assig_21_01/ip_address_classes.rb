def in_range(ip)
    if ip < 0 || ip > 255
        return false
    end
    return true
end

ip = "123.34.65.8978"

split_ip = ip.split('.')

# puts split_ip

if(split_ip.length != 4)
    puts "Invalid IP address"
    exit(1)
end

split_ip.each do |i|
    if !in_range(i.to_i)
        puts "Invalid IP address"
        exit(1)
    end 
end

if split_ip[0].to_i >=0 and split_ip[0].to_i<=127
puts "Class A"
elsif split_ip[0].to_i >=128 and split_ip[0].to_i<=191
puts "Class B"
elsif split_ip[0].to_i >=192 and split_ip[0].to_i<=223
puts "Class C"
elsif split_ip[0].to_i >=224 and split_ip[0].to_i<=239
puts "Class D"
elsif split_ip[0].to_i >=240 and split_ip[0].to_i<=255
puts "Class E"
else
puts "Invalid IP address"
end

