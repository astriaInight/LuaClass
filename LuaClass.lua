local LuaClass = {}

function LuaClass.Extend(class, extendTo)
	return setmetatable(class, { __index = extendTo })
end

function LuaClass.Create(classData, subClass)
	local newClass = {}
	
	function newClass.new()
		return LuaClass.Extend({}, newClass)
	end
	
	if subClass then
		LuaClass.Extend(newClass, subClass)
	end
	
	return newClass
end

return LuaClass
