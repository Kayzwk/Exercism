local PhoneNumber = {}

function PhoneNumber:new(number)
  local cleaned_number = self:clean(number)
  local phone_number = {
    number = cleaned_number,
    area_code = string.sub(cleaned_number, 1, 3)
  }
  setmetatable(phone_number, self)
  self.__index = self
  return phone_number
end

function PhoneNumber:clean(number)
  local digits = number:gsub("%D", "")
  if #digits == 11 and digits:sub(1, 1) == "1" then
    digits = digits:sub(2)
  elseif #digits ~= 10 then
    digits = "0000000000"
  end
  return digits
end

function PhoneNumber:areaCode()
  return self.area_code
end

function PhoneNumber:__tostring()
  return string.format("(%s) %s-%s",
                       string.sub(self.number, 1, 3),
                       string.sub(self.number, 4, 6),
                       string.sub(self.number, 7, 10))
end

return PhoneNumber
