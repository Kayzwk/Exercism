function powerset(N) 
    combinations = Vector{Int}[[]]
    for x in 1:N, y in eachindex(combinations)
        push!(combinations, [combinations[y]; x])
    end
    return combinations
end
const POWERSET = powerset(9)
function combinations_in_cage(sum_of, cells, restrictions)
    filter(y -> all(x -> (x ∉ y), restrictions), combinations_in_cage(sum_of, cells))
end
function combinations_in_cage(sum_of, cells)
    filter(z -> length(z) == cells && sum(z) == sum_of, POWERSET) |> sort
end
