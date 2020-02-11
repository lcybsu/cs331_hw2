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
	coroutine.yield(k)		
	while k ~= 1 do	
		if k % 2 == 0 then
			k = k/2	
		else
			k = 3*k + 1
		end			
		coroutine.yield(k)	
	end	
end


function pa2.allSubs(s)
	
	local len = string.len(s)
	print("string length is "..len)
	
	
	
	--return function()
		local arr_sub = {""}
		local substr
		local i,j
		local index = 0
		if len == 0 then
			table.insert(arr_sub,"")
			print("first element is "..arr_sub[1])
			return
		end
		
		--return function()
		
		while index ~= len*len+1 do 
			
			return function()
				for i = 1,len do
		
					for j = 1,len do 
			
						substr=string.sub(s,j,i)
						
						print("substr is "..substr)
						table.insert(arr_sub,substr)
						index = i*j
						j = j+1
						
						return arr_sub[index]
						
					end
			
					i = i+1
				end
			
			end
			
			
			
		end
	
		print("first thing is  "..arr_sub[1])
		print("second thing is  "..arr_sub[2])
		--return arr_sub
	
	
		--end

		
end






return pa2














