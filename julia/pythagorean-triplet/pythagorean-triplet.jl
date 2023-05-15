function pythagorean_triplets(n::Int)
    triplets = []
    for a in 1:n-2
        for b in a+1:n-1
            c = n - a - b
            if c > 0 && a^2 + b^2 == c^2
                push!(triplets, (a, b, c))
            end
        end
    end
    return triplets
end
