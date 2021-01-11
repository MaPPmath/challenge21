# solution = 'ITSFEATUREDEXHIBITHASPLATESANDBOWLS'.split('')
# alphabet = ('a'..'z').to_a

# cypher = solution.each_with_object([]) do |letter, arr|
#   arr << letter
#   arr.concat alphabet.shuffle[0..rand(2)]
# end

cypher = ["I", "c", "u", "T", "n", "S", "j", "e", "F", "f", "g", "E", "s", "h", "A", "q", "a", "T", "o", "c", "U", "l", "R", "f", "E", "d", "m", "D", "l", "E", "w", "X", "d", "i", "H", "i", "I", "j", "w", "B", "d", "I", "s", "T", "r", "c", "H", "p", "k", "A", "c", "S", "m", "P", "q", "L", "j", "m", "A", "c", "w", "T", "a", "c", "E", "c", "S", "x", "l", "A", "y", "N", "e", "D", "y", "B", "e", "k", "O", "y", "q", "W", "k", "L", "t", "S", "u"]

cypher.each_slice(6) do |slice|
  puts '\begin{center}'
  slice.each do |letter|
    if /[A-Z]/.match letter
      puts '  \includegraphics[width=0.12\linewidth]{dominoRally/letter' + letter + '.pdf}\hspace{0.03\linewidth}'
    else
      puts '  \includegraphics[width=0.12\linewidth]{dominoRally/letter' + letter.upcase + 'Fake.pdf}\hspace{0.03\linewidth}'
    end
  end
  puts '\end{center}'
end