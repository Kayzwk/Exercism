function square_root(S)
    S < 0 && throw(DomainError(S, "S must be ≥ 0"))
    x = S
    while true
        next_x = (S/x + x) / 2
        next_x == x && return x
        x = next_x
    end
end
