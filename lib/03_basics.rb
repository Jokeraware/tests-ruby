def who_is_bigger(a,b,c)
    array = [a, b, c]
    if array.include?(nil)
        return "nil detected"
    elsif a < c && b < c
        return "c is bigger"
    elsif a < b && b > c
        return "b is bigger"
    else
        return "a is bigger"
    end
end

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
