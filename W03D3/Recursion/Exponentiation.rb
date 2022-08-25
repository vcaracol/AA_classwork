def exp(base, power)
    return 1 if power == 0
    return base if power == 1
    answer = exp(base, power-1)
    base * answer
end

p exp(2, 5)

def exp2(base, power)
    return 1 if power == 0
    return base if power == 1
    even = exp2(base, power / 2)
    odd = exp2(base, (power - 1) / 2)

    if power.even?
        even * even
    else
        base * odd * odd
    end
end

p exp2(5,5)