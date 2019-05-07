def reformat_languages(languages)
   # your code here
   new_hash = {}
   languages.each do |type, lang_hash|
     lang_hash.each do |lang, type_hash|
       type_hash.each do |sym, str|
         if new_hash.include?(lang)
           new_hash[lang][:style] << type
         else
           new_hash[lang] = {:type => str, :style => [type]}
         end
       end
     end
   end
   new_hash
 end
