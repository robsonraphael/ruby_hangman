def gerar_palavra
  dictionary = File.open('../dicionario.txt', 'r')
  clean_dictionary = []
  dictionary.each do |lines|
    next if lines.length < 5 or lines.length > 12

    clean_dictionary << lines
  end
  clean_dictionary.sample
end
