def average(num1, num2)

   return (num1 + num2) / 2.0  

end

def average_array(array)
    sum = 0
    
    array.each do |num|
        sum += num
    end

    return sum / (array.length * 1.0)

end


def repeat(string, num)
    newstr = ''
    num.times do 
        newstr += string
    end

    newstr 
end


def yell(str)

    return str.upcase + '!'

end

def alternating_case(string)

    array = string.split(' ')

    newwords = array.map.with_index do |str, idx|
        if idx % 2 == 0 
            str = str.upcase
        else
            str = str.downcase
        end
    end

     newwords.join(' ')
end
