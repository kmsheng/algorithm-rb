# 1.1
# Is Unique: Implement an algorithm to determine
# if a string has all unique characters. What
# if you cannot use additional data structures ?

def is_uniq(str)
  len = str.length
  base = 'a'.ord - 1
  base_num = 0
  str.each_char { |c|
    n = c.ord - base - 1
    num = 2 ** n
    base_num |= num
  }
  # is unique if 1's count is equal to string length
  return base_num.to_s(2).gsub('0', '').length == len
end
