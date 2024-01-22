def ftoc(temp)
    return ((temp-32)/1.8).round #.round arrondi le float, pcq ici =36.999 au lieu de 37
end

def ctof (temp)
    return (temp *1.8) +32
end