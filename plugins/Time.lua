--[[
#
#    Time And Date
#
#    @Dragon_born
#	@GPMod
#
#
]]

function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒FA Time:\n'..jdat.FAtime..' \n📆FA Date:\n'..jdat.FAdate..'\n🕒EN Time:\n'..jdat.ENtime..'\n📆EN Date:\n '..jdat.ENdate.. '\n---------------\n@Xx_Epicure_xX'
return text
end
return {
  patterns = {
  "^[/#!]([Tt][iI][Mm][Ee])$"
  }, 
run = run 
}


