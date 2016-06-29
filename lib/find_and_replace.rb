class String
  define_method(:find_and_replace) do |str, replaced_str|
    self.gsub!(/\b#{str}\b/, replaced_str)
  end
end
