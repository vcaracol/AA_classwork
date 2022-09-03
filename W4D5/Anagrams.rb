def all_anagram?(str1)
    return [str1] if str1.length <= 1
    first = str1[0]
    perms = all_anagram?(str1[1..-1])
    total_permutations = []
    perms.each do |perm|
      (0..perm.length).each do |i|
        total_permutations << perm[0...i] + first + perm[i..-1]
      end
    end
    total_permutations
end

def first_anagram?(str1, str2)
    variable = all_anagram?(str1)
    variable.each do |ele|
        return true if ele == str2
    end
    false
end

def second_anagram?(str1, str2)
  anagram = str2.split
  str1.each_char do |char|
    if str2.index(char)
      i = str2.index(char)
      str2[i] = ""
    end
  end
  str2.empty?
end

def third_anagram?(str1, str2)
    sorted1 = str1.split("").sort
    sorted2 = str2.split("").sort

    sorted1 == sorted2
end

#O(n)
def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char do |ele|
        hash1[ele] += 1
    end

    str2.each_char do |ele|
        hash2[ele] += 1
    end

    hash1 == hash2
end

