# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 
    return false
  end
  h = {"A" => true, "E" => true, "I" => true, "O" => true, "U" => true, "a" => true, "e" => true, "i" => true, "o" => true, "u" => true}
  return (s[0]=~ /\A\p{Alnum}+\z/) && !(h.key?(s[0]))
end

def binary_multiple_of_4? s
  if s.length == 1 && s[0] == '0'
    return true
  elsif s.length == 0
    return false
  end
  s = s.reverse
  i = 0
  while (i < s.length)
    if s[i] != '0' && s[i] != '1'
      return false
    elsif (i < 2) && s[i] != '0'
      return false
    end
    i += 1
  end 
  return true
end
