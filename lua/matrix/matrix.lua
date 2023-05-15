return function(strMatrix)
    local matrixRows = {}
    for strRow in string.gmatch(strMatrix .. '\n', '.-\n') do
        local row = {}
        for elem in strRow:gmatch('%d+') do
            row[#row + 1] = tonumber(elem)
        end
        matrixRows[#matrixRows + 1] = row
    end
    local class = {
        row = function(i)
            return matrixRows[i]
        end,
        
        column = function(i)
            local col = {}
            for _, row in ipairs(matrixRows) do
                col[#col + 1] = row[i]
            end
            return col
        end
    }
    return class
end
