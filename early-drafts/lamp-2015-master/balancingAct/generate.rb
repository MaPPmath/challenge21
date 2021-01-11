solution = "YOU MAY ENJOY WORKING OUT WITH OLE MCDONALD HERE"
solution = solution.gsub(/\s+/, "")

# shuffle = [37, 17, 23, 6, 7, 1, 9, 25, 30, 2, 33, 27, 18, 40, 35, 13, 15, 38,
          #  21, 22, 20, 28, 5, 19, 24, 32, 39, 11, 14, 4, 26, 3, 31, 10, 12, 8, 29, 36, 34, 16]
# not really shuffled, but moved around to order scales sensibly
shuffle = [1, 3, 9, 27, 4, 10, 28, 2, 8, 26, 12, 30, 6, 24, 36, 18, 13, 31, 5, 23, 7,
           37, 17, 25, 19, 11, 29, 35, 39, 15, 21, 33, 40, 14, 22, 32, 34, 20, 16, 38]

raise shuffle.sort.to_s unless shuffle.sort == (1..40).to_a

shuffle.each_slice(4) do |slice|
  puts '  \begin{center}'
  slice.each do |i|
    puts '    \begin{tabular}{c}\includegraphics[width=0.2\linewidth]{balancingAct/balanceScale' + i.to_s.rjust(2, "0") + '.pdf}\\\\' + solution[i-1] + '\end{tabular}'
  end
  puts '  \end{center}'
end