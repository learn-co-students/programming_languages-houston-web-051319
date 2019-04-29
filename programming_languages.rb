def reformat_languages(languages)
  new_hash = {}
  languages.each do |type|
    type[1].each do |style|
    if new_hash[style[0]]== nil
      new_hash[style[0]] = style [1]
    end
    if new_hash[style[0]][:style] == nil
      new_hash[style[0]][:style] = [type[0]]
    elsif !new_hash[style[0]][:style].include?(type[0])
      new_hash[style[0]][:style] << type[0]
    end
  end
    
  end 
  new_hash    
end
