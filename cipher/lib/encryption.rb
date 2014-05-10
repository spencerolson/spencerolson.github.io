class Encryption

  def encrypt (message) #"hello world"
    message = message.downcase
    alphabet = ('a'..'z').to_a

    message.chars.inject("") do |encrypted_message, character|

      if alphabet.include? character
        encrypted_message << alphabet[alphabet.index(character) - 13]
      else
        encrypted_message << character
      end

    end   
  end
end