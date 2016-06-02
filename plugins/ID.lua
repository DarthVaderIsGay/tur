do function run(msg, matches)
if matches[1]:lower() == 'id' and is_sudo(msg) then
return "🌟☇Sudo☇🌟\n🔹#Your_ID: "..msg.from.id.."\n🔸#Your_Name: "..msg.from.print_name.."\n🔹#Group_Name: "..msg.to.title.."\n🔸#Group_ID: "..msg.to.id.."\n🔹#MSG_ID: "..msg.id.."\n🔸#Your_MSG: "..msg.text.."\n🔹#Username: @"..msg.from.username
end
if matches[1]:lower() == 'id' and is_admin(msg) then
return "🌟Admin🌟\n🔹#Your_ID: "..msg.from.id.."\n🔸#Your_Name: "..msg.from.print_name.."\n🔹#Group_Name: "..msg.to.title.."\n🔸#Group_ID: "..msg.to.id.."\n🔹#MSG_ID: "..msg.id.."\n🔸#Your_MSG: "..msg.text.."\n🔹#Username: @"..msg.from.username
end
if matches[1]:lower() == 'id' and is_owner(msg) then
return "⭐Owner⭐\n🔹#Your_ID: "..msg.from.id.."\n🔸#Your_Name: "..msg.from.print_name.."\n🔹#Group_Name: "..msg.to.title.."\n🔸#Group_ID: "..msg.to.id.."\n🔹#MSG_ID: "..msg.id.."\n🔸#Your_MSG: "..msg.text.."\n🔹#Username: @"..msg.from.username
end
if matches[1]:lower() == 'id' and is_momod(msg) then
return "★Moderator★\n🔹#Your_ID: "..msg.from.id.."\n🔸#Your_Name: "..msg.from.print_name.."\n🔹#Group_Name: "..msg.to.title.."\n🔸#Group_ID: "..msg.to.id.."\n🔹#MSG_ID: "..msg.id.."\n🔸#Your_MSG: "..msg.text.."\n🔹#Username: @"..msg.from.username
end
if matches[1]:lower() == 'id' then
return "☆Member☆\n🔹#Your_ID: "..msg.from.id.."\n🔸#Your_Name: "..msg.from.print_name.."\n🔹#Group_Name: "..msg.to.title.."\n🔸#Group_ID: "..msg.to.id.."\n🔹#MSG_ID: "..msg.id.."\n🔸#Your_MSG: "..msg.text.."\n🔹#Username: @"..msg.from.username
end
end
return {
description = "show your id",
usage = "!id : show your userid and information",
patterns = {
"^[!/#]([Ii][Dd])$",
"^[Ii][Dd]$",
},
run = run
}
end
