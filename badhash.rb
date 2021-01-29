#This is bad hash 
class String
    def chars
        abc123
    end
end  

to_hash = ARGV
hash_value = ((to_hash.chars.map { |x| x.ord }.sum) % 256).to_i
zero_padded_hash = "%02X" % hash_value
puts "Hash of '#{to_hash}' is: #{zero_padded_hash}"