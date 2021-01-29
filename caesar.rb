# This is my Symmetrical ASCII Caesar Cipher
puts "Welcome to my Symmetrical ASCII Caesar Cipher"

def encrypt(string)
    ascii = $t.chars.map { |c| c.ord }
    shifted = ascii.map { |c| c + $K }
    ct = shifted.map { |c| c.chr }.join
    puts "Your Text has been Encrypted with Key = #{$K}"
    puts "Ciphertext:  " + ct
end

def decrypt(string)
    ascii = $t.chars.map { |m| m.ord }
    shifted = ascii.map { |m| m - $K }
    pt = shifted.map { |m| m.chr }.join
    puts "Your Text has been Decrypted with Key = #{$K}"
    puts "Plaintext: " + pt
end

$i = 1
while $i >= 1 do
    puts "Would you like to Encrypt or Decrypt? Enter E/D:"
    opt = gets.chomp

    puts "Enter your Text."
    $t = gets.chomp 

    puts "Enter your Key."
    $K = gets.chomp.to_i

    if opt == "e" || opt == "E"
        encrypt($t)
        $i += 1
        puts "Again? y/n"
        again = gets.chomp
        if again == "y" || again == "Y"
            $i += 1
        elsif again != "y" || again != "Y"
            $i = 0
        end
    elsif opt == "d" || opt == "D"
        decrypt($t)
        $i += 1
        puts "Again? y/n"
        again = gets.chomp
        if again == "y" || again == "Y"
            $i += 1
        elsif again != "y" || again != "Y"
            $i = 0
        end
    end
end