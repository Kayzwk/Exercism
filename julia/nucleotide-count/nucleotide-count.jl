function count_nucleotides(seq)
    counts = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for char in seq
        if char in keys(counts)
            counts[char] += 1
        else
            throw(DomainError(seq, "Invalid nucleotide: $char"))
        end
    end
    return counts
end
