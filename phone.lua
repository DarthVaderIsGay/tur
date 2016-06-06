do
local function info_reply(ex,suc,res)
local msg = res
local info = 'نام : '..(msg.from.first_name or '')..'\nفامیل : '..(msg.from.last_name or '')..'\nیوزرنیم : @'..(msg.from.username or 'ندارد')..'\n+'..(msg.from.phone or 'شماره تلفن موجود نیست')
reply_msg(ex, info, ok_cb, false)
end
function run(msg, matches)
if msg.reply_id then
get_message(msg.reply_id, info_reply, msg.id)
else
local info = 'نام : '..(msg.from.first_name or '')..'\nفامیل : '..(msg.from.last_name or '')..'\n+'..(msg.from.phone or 'شماره تلفن موجود نیست')
reply_msg(msg.id, info, ok_cb, false)
end
end
  local function res_user_callback(extra, success, result) -- /number <username> function
  
  if success == 1 then  
  if result.username then
   Username = '@'..result.username
   else
   Username = '----'
  end
    local info = 'نام : '..(msg.from.first_name or '')..'\nفامیل : '..(msg.from.last_name or '')..'\nیوزرنیم : @'..(msg.from.username or 'ندارد')..'\n+'..(msg.from.phone or 'شماره تلفن موجود نیست')
send_msg(extra.receiver, info, ok_cb, false)
      end
    end
    
  

return {
patterns = {
"^[!/#]number",
"^[!/#]phone (.*)",
          
},
run = run
}

end