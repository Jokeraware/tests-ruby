def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, number_repeat=2)
    return (word + " ") * (number_repeat-1) + word #rajoute un espace, * le nb, et rajoute le mot pour ne pas finir par un espace
end

def start_of_word(word, position)
    return word[0..position-1] #[0..position-1] ex:position=1 commence à zero jusqu'à position-1 soit 0 
end

def first_word(string)
    return string.split.first #.split return array de string diff .map qui renvoie array de num 
end

def titleize(word)
    nocap = %w(and the a in or if) # %w() crée une array de mots séparé par espace
    resultat = [] #création liste
    array = word.split 
    array.each.with_index do |word, index| 
        if nocap.include?(word) && index != 0
            resultat << word
        else
            resultat << word.capitalize
        end
    end
    return resultat.join(" ")
end


