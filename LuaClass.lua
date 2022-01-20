local LuaClass = {}

function LuaClass.Extend(class : {}, extendTo : {}) : {} | any
	return setmetatable(class, { __index = extendTo })
end

function LuaClass.Create(classData : {}, subClass : {}?) : {}
	local newClass = {}
	
	if subClass then
		LuaClass.Extend(newClass, subClass)
	end
	
	return newClass
end

return LuaClass
