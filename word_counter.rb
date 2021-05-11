TEXT_FILE = "romeo-juliet.txt"
romeo_and_juliet = File.read(TEXT_FILE).downcase.gsub(/[^a-z]/, " ").split
