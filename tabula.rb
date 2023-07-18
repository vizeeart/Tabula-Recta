# Tabula Recta
# Vigenère Chiper
# Vizee Art

# Definisikan kelas TabulaRecta untuk menyimpan tabel Tabula Recta
class TabulaRecta
  attr_reader :table

  # Constructor untuk membuat tabel Tabula Recta
  def initialize
    @table = create_table
  end

  private

  # Metode untuk menciptakan tabel Tabula Recta
  def create_table
    alphabet = ('A'..'Z').to_a
    table = {}
    alphabet.each_with_index do |letter, index|
      # Geser alfabet sejumlah indeks yang sesuai untuk setiap baris
      shifted_alphabet = alphabet.rotate(index)
      table[letter] = shifted_alphabet
    end
    table
  end
end

# Fungsi untuk melakukan enkripsi teks menggunakan sandi Vigenère
def vigenere_encrypt(plaintext, keyword)
  plaintext = plaintext.upcase.gsub(/[^A-Z]/, '')
  keyword = keyword.upcase.gsub(/[^A-Z]/, '')

  # Buat objek TabulaRecta untuk mengakses tabel Tabula Recta
  tabula_recta = TabulaRecta.new
  encrypted_text = ""

  keyword_index = 0
  plaintext.each_char do |char|
    keyword_letter = keyword[keyword_index]
    shift = tabula_recta.table[keyword_letter].index(char)
    # Enkripsi teks menggunakan pergeseran yang sesuai
    encrypted_text += tabula_recta.table['A'][shift]

    keyword_index = (keyword_index + 1) % keyword.length
  end

  encrypted_text
end

# Fungsi untuk melakukan dekripsi teks yang telah dienkripsi dengan sandi Vigenère
def vigenere_decrypt(ciphertext, keyword)
  ciphertext = ciphertext.upcase.gsub(/[^A-Z]/, '')
  keyword = keyword.upcase.gsub(/[^A-Z]/, '')

  # Buat objek TabulaRecta untuk mengakses tabel Tabula Recta
  tabula_recta = TabulaRecta.new
  decrypted_text = ""

  keyword_index = 0
  ciphertext.each_char do |char|
    keyword_letter = keyword[keyword_index]
    shift = tabula_recta.table['A'].index(char)
    # Dekripsi teks dengan pergeseran yang sesuai
    decrypted_text += tabula_recta.table[keyword_letter][shift]

    keyword_index = (keyword_index + 1) % keyword.length
  end

  decrypted_text
end

# Fungsi untuk mencetak tabel Tabula Recta
def print_tabula_recta(tabula_recta)
  alphabet = ('A'..'Z').to_a
  puts "Tabula Recta:"
  puts "   #{alphabet.join(' ')}"
  tabula_recta.table.each do |letter, row|
    puts "#{letter}: #{row.join(' ')}"
  end
end

# Tampilkan tabel Tabula Recta
tabula_recta = TabulaRecta.new
print_tabula_recta(tabula_recta)

# Contoh penggunaan
print "\nPlaint Text: "
plaintext = gets.chomp
print "Keyword: "
keyword = gets.chomp
encrypted_text = vigenere_encrypt(plaintext, keyword)
puts "\nEncryption Result: #{encrypted_text}"

decrypted_text = vigenere_decrypt(encrypted_text, keyword)
puts "Decryption Result: #{decrypted_text}"
