-- pa2.lua
-- Chenyi Ling
-- 2020-02-08
--
-- For CS F331 Assignment 2 exercise 2
-- This is a module not a complete program

local pa2 = {} -- Module table 

function pa2.filterTable(p,t)
	local tbl = {}
	
	for k,v in pairs(t) do
		if p(t[k]) == true then
			tbl[k] = v
		end
	end
		
	return tbl
	
end

--   


function pa2.concatMax(str,n)
	local len = string.len(str)
	local reps = math.floor(n/len)
	local newstr = string.rep(str,reps)
	return newstr

end



function pa2.collatz(k)
	
	while k ~= nil do
		if k % 2 == 0 then
			k = k/2	
		else
			k = 3*k + 1
		end	
		
		print("yield".." "..k)
		coroutine.yield(k)
		
		
	end
	
end

return pa2
