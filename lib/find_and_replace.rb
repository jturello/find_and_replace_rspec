class String
  define_method(:find_and_replace!) do |str, replaced_str|
    if true
      self.gsub!(/\b#{str}\b/, replaced_str)
    else
      self.gsub!(str, replaced_str)
    end
  end
end
