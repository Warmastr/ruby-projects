def caesar_cipher(string, key)
  string = string.bytes
  string = string.map do |byte|
    # if the character is a uppercase letter then wrap back to ascii char 65 if byte + key is > 90
    if byte >= 65 && byte <= 90 && byte + key > 90
      overage = 90 - byte
      rollover_add = key - overage
      byte = 65 + rollover_add - 1
    # if the character is a lowercase letter then wrap back to ascii char 97 if byte + key is > 122
    elsif byte >= 97 && byte <= 122 && byte + key > 122
      overage = 122 - byte
      rollover_add = key - overage
      byte = 97 + rollover_add - 1
    else
      byte
    end
  end
  string.pack('c*')
end

def caesar_cipher(string, key)
  string = string.bytes
  string = string.map do |byte|
    # if the character is a uppercase letter then wrap back to ascii char 65 if byte + key is > 90
    if byte >= 65 && byte <= 90
      if byte + key > 90 
        overage = 90 - byte
        rollover_add = key - overage
        byte = 65 + rollover_add - 1
      else
        byte + key
      end
      
    # if the character is a lowercase letter then wrap back to ascii char 97 if byte + key is > 122
    elsif byte >= 97 && byte <= 122
      if byte + key > 122
        overage = 122 - byte
        rollover_add = key - overage
        byte = 97 + rollover_add - 1
      else 
        byte + key
      end
    else
      byte
    end
  end
  string.pack('c*')
end

a = "What a string!"
caesar_cipher(a, 5)