def reformat_languages(languages)
  # your code here
  new_hash = {}
  checkPoint = false 
  languagesCalledArr = []
  languages.each do |oo_functional, programmingLanguages|
    programmingLanguages.each do |pLanguage, typeHash|
      typeHash.each do |typeKey, typeValue|
        if languagesCalledArr.length != 0 
          languagesCalledArr.each do |currLanguage|
            if currLanguage == pLanguage
              checkPoint = true
            end
          end
        end
        if checkPoint == true
          new_hash[pLanguage][:style] << oo_functional
          checkPoint = false 
        else 
          new_hash[pLanguage] = {type: typeValue, style: [oo_functional]}
          languagesCalledArr << pLanguage
          checkPoint = false 
        end
      end
    end
  end
  new_hash
end

