function square_of_sum(n::Int)
    sum_of_numbers = n * (n + 1) / 2
    return convert(Integer, sum_of_numbers^2)
end

function sum_of_squares(n::Int)
    return convert(Integer, n * (n + 1) * (2n + 1) / 6)
end

function difference(n::Int)
    return square_of_sum(n) - sum_of_squares(n)
end
