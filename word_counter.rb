TEXT_FILE = "romeo-juliet.txt"

# Load the words from a file
def words_from_file(text_file)
    File.read(TEXT_FILE).downcase.gsub(/[^a-z]/, " ").split
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)

# Create dictionary of word counts
word_count = {}
words.each do |word|
    # If this word is new, add it to word_count
    word_count[word] = 1
    # ... else increment its count
    word_count[word] += 1
end