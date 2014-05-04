class Encryption

  def encrypt (message) #"hello"
    message = message.downcase
    alphabet = ('a'..'z').to_a
    encrypted_message = ""

    message.chars.reduce("") do |encrypted_message, letter| 

      index_in_alphabet = alphabet.index(letter)
      encrypted_message << alphabet[index_in_alphabet - 13] 
    end
  end

end