
def reformat_languages(languages)
hash = {}
languages.each do |k, v| 
    v.each do |k1, v1| 
        if hash[k1]
            hash[k1][:style] << k
        else
            hash[k1] = {type: v1[:type], style: [k]}
        end
    end
end
hash
end