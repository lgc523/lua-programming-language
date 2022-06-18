#!/usr/local/bin/lua

names = {'spdier', 'nns', 'peter'}
grades = {
    Spider = 23,
    nns = 23,
    peter = 32
}

table.sort(names, function(n1, n2)
    -- return grades[n1] > grades[n2]
end)

function sortByGrade(names,grades)
    table.sort(names,function(n1,n2)
        -- return grades[n1]>grades[n2]
    end
    )
end


function newCounter()
    local i =0
    return function ()
        i = i+1
        return i
    end
end

c1=newCounter()
print(c1())
print(c1())
c2=newCounter()
print(c2())
