def fibonnaci(n)
    return [] if n == 0
    return [1] if n == 1
    return [1,1] if n == 2
    
    ele = fibonnaci(n -1)
    ele << ele[-1] + ele[-2]

end

p fibonnaci(0)
p fibonnaci(1)
p fibonnaci(2)
p fibonnaci(8)
