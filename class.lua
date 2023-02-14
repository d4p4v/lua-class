local Class = {}

function Class:new(inherit)
    local class = inherit and setmetatable({}, inherit) or {}
    class.__index = class

    return class
end

return setmetatable(Class, { __call = Class.new })