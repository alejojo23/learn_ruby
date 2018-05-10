#write your code here
def add x, y
    x + y 
end

def subtract x, y
    x - y 
end

def sum array
    sum = 0
    if array.length
        array.each{ |x| sum += x}
    end
    sum
end

def multiply (*arguments)
    mul = 1
    arguments.each { |x| mul*= x}
    return mul
end

def power (x, y)
    result = (x ** y).to_i
    return result
end

def factorial factor
    result = 1
    x = 1
    while x <= factor do
        result *= x
        x += 1
    end
    return result
end