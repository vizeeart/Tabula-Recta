# Tabula-Recta
Implementation Tabula Recta for Vigenère Chiper

Tabula Recta is a cryptographic table used to perform encryption and decryption in the Vigenère cipher technique. The Vigenère cipher technique is an ancient cryptographic method that uses a key-repeating pattern to encode text. Tabula Recta facilitates the encryption and decryption processes in the Vigenère cipher by arranging the alphabet in tabular form.

The Tabula Recta table consists of two lines of the alphabet (usually written in uppercase) arranged in a repeating manner. The first line is the regular alphabetical order from A to Z. The second line is also in alphabetical order but starts with a different letter. For example, if the first line starts with A, then the second line starts with B, and so on.

The way to use Tabula Recta to encrypt text using the Vigenère cipher is to match the plaintext letters in the first row with the key letters in the first row, then get the letters located at the intersection of the first row and the column of the key letters in the second row. This letter will be the cipher letter for the plaintext letter. The process is repeated for each letter in the plaintext.

Likewise, to decrypt text that has been encrypted with the Vigenère cipher, you can use Tabula Recta by looking for the corresponding key letter in the first row for each cipher letter, then finding the plaintext letter by looking at the appropriate column in the first row.

Tabula Recta is a useful tool in implementing Vigenère ciphers and provides a visual representation of the relationship between letters in the encryption and decryption processes.
