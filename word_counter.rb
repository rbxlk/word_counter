TEXT_FILE = "romeo-juliet.txt"
COMPARE_FILE = "hamlet.txt"

# Load the words from a file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
    puts "Please provide the following file: #{text_file}"
    exit
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)
compare = words_from_file(COMPARE_FILE).uniq

# Create dictionary of word counts
WORD_COUNT = {}
words.each do |word|
    WORD_COUNT[word] = 0 unless WORD_COUNT[word]
    WORD_COUNT[word] += 1
end

# Show the most frequent words and their counts
UNIQUE_WORDS = {}
WORD_COUNT.each do |word, count|
    UNIQUE_WORDS[word] = count unless compare.include? word
end

UNIQUE_WORDS.sort_by {|word, count| count}.reverse[0...40].each {|word, count| puts "#{word}: #{count}"}