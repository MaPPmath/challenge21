fake1 = %w(THI SIS JUS TARE DHER RIN GIM AFR AID)
fake2 = %w(YOU VEW AST EDYO URTI MEO NTH ISP ATH)
real  = %w(REA DIN GIS NOTJ USTB LAC KAN DWH ITE)

diagrams = %w(Red Green Blue).map{|w|%w(01 02 03).map{|n| w + n}}.flatten(1).shuffle

(0...9).to_a.shuffle.each do |n|
  file_name = diagrams[n]
  if file_name[0,3] == 'Red'
    red_word   = real[n]
    green_word = fake1[n]
    blue_word  = fake2[n]
  elsif file_name[0,5] == 'Green'
    red_word   = fake2[n]
    green_word = real[n]
    blue_word  = fake2[n]
  elsif file_name[0,4] == 'Blue'
    red_word   = fake1[n]
    green_word = fake2[n]
    blue_word  = real[n]
  else
    raise "cannot find color"
  end
  puts %q(
  \begin{center}
    \begin{tabular}{c}
      \includegraphics[width=0.8\linewidth]{aDiceySituation/dice) + file_name + %q(.pdf}
      \\\\
      \textcolor{red}{) + red_word + %q(} |
      \textcolor{darkGreen}{) + green_word + %q(} |
      \textcolor{blue}{) + blue_word + %q(}
    \end{tabular}
  \end{center}
  )
end