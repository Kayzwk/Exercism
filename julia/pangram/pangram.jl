function ispangram(sentence::AbstractString)
    sentence = replace(lowercase(sentence), r"[^a-z]" => "")
    unique_letters = Set(sentence)
    return length(unique_letters) == 26
end
