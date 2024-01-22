def translate (word)
    vowels = %w[a e i o u y]
    # alphabet = ("a".."z").to_a #transforme en array
    # consonant = alphabet - vowels
    consonant_exception = %w[qu sch]
    # n = word.split #.split crée une array

    words = word.split.map do |word|
        if vowels.include?(word[0]) #prend la premiere lettre, si vowels ajoute ay
            word + "ay"
        elsif  consonant_exception.include?(word[0..1]) #si 1er et 2eme lettre = qu ou sch
            prefix = word[0..1]
            rest_char = word[2..-1]
            rest_char + prefix + "ay"
        elsif consonant_exception.include?(word[0..2])
            prefix = word[0..2]
            rest_char = word[3..-1]
            rest_char + prefix + "ay"
        else 
            first_char = word[0]
            rest_char = word[1..-1]
            rest_char + first_char + "ay"
        end
    end
    return words.join(" ")
end
