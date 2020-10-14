class Stream
  def input_oval
    puts 'Enter value:'
    oval = gets.chomp
    oval.to_f
  end

  def input_scale
    puts 'Enter (C, K, F):'
    gets.chomp
  end

  def output_nval(nval)
    puts "Result: #{nval}"
  end
end
