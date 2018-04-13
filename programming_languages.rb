def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, list|
    list.each do |name, description|
      new_hash[name] = description
    end
  end

  new_hash.each do |name, description|
    if languages[:oo].keys.include?(name) && languages[:functional].keys.include?(name)
      new_hash[name][:style] = [:oo, :functional]
    elsif languages[:oo].keys.include?(name)
      new_hash[name][:style] = [:oo]
    else
      new_hash[name][:style] = [:functional]
    end
  end

  new_hash
end

# description.each do |info, data|
#   if name == :ruby
#   n_hash = {style:[type]}
#   new_hash[name] = description.merge(n_hash)
#   end
# end
