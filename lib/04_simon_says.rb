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
    return word[0..position-1] #[0..position-1] ex:position=1 commence à zero jusqu'à position-1 (donc 1-1) soit 0 
end

def first_word(string)
    return string.split.first #.split return array de string diff .map qui renvoie array de num 
end

def titleize(word)
    nocap = %w(and the a in or if) # %w() crée une array de mots séparé par espace
    resultat = [] #création liste
    array = word.split 
    array.each.with_index do |word, index| #each chaque element .with_index on veut l'index de chaque élément
        if nocap.include?(word) && index != 0 #si la liste des mots nocap est un mot word &&(and) qu'il est à l'index 0
            resultat << word #on rajoute le mot tel qu'il est à la liste résultat "<<" = ajoute l'élément à l'array
        else
            resultat << word.capitalize #sinon on capitalize le mot et on l'ajoute à la liste
        end
    end
    return resultat.join(" ")
end


