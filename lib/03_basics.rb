# def who_is_bigger(a,b,c)
#     hash = [a, b, c]
#     (&:nil)
# end

def reverse_upcase_noLTA(string)
    return string.reverse.upcase.delete("LTA")
end

def array_42(array)
    return array.include?(42) ? true : false #":" = otherwise
end

def magic_array(number)
    return number.flatten.sort.map{|n|n*2}.reject{|n|n%3==0}.uniq
    #n % 3==0 multiple de 3, 0 reste | .uniq = supprime les doublons
end
