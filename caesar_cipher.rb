def caesar_cipher(plain_text, shift_factor)
    cipher_text = ""
    plain_text.each_char do |char|
        ascii = char.ord
        z_ascii = 'z'.ord
        first_ascii = 'A'.ord
        last_ascii  = 'Z'.ord
        if ascii > last_ascii
            first_ascii = 'a'.ord
            last_ascii = 'z'.ord
        end
        
        if !ascii.between?(first_ascii, last_ascii)
            cipher_text += char
            next
        end
        if last_ascii - ascii < shift_factor
            cipher_ascii = first_ascii + (last_ascii - ascii - shift_factor).magnitude - 1
        else
            cipher_ascii = ascii + shift_factor
        end

        cipher_text += cipher_ascii.chr
    end
    cipher_text
end

print(caesar_cipher("What a string!", 5))