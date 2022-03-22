if @valid_input && @valid_word
  json.result json.partial!('games/results/valid_answer.html.erb')
  json.best_answers json.partial!('games/results/best_answers.html.erb')
elsif !@valid_input && !@valid_word
  json.result json.partial!('games/results/invalid_input_and_word.html.erb')
  json.best_answers json.partial!('games/results/best_answers.html.erb')
elsif !@valid_input
  json.result json.partial!('games/results/invalid_input.html.erb')
  json.best_answers json.partial!('games/results/best_answers.html.erb')
else
  json.result json.partial!('games/results/invalid_word.html.erb')
  json.best_answers json.partial!('games/results/best_answers.html.erb')
end
