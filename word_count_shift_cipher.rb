#Shifts each letter in word over x letters
#x being the number of letters in the word.
require "pry"
module WordCountShiftCipher
  
  def single_encryption(word)
    shift_length = word.length
    letters = word.split("")
    new_word_array = []
    letters.each do |l|
      new_letter_id = l.ord + shift_length
      if new_letter_id > 90
        difference = new_letter_id - 90
        new_letter_id = 65 + difference 
      end
      new_word_array << new_letter_id.chr
    end
    new_word_array.join("")
  end
  
    def encrypt(text)
      text = text.upcase
      words = text.split(" ")
      new_text_array = []
      words.each do |word|
        new_text_array << single_encryption(word)
      end
      new_text_array.join(" ")
    end
  
  def decrypt(cipher)
  end
  
end