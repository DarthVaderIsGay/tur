do
local function info_reply(ex,suc,res)
if is_sudo(msg) then
local msg = res
local info = 'نام : '..(msg.from.first_name or '')..'\nفامیل : '..(msg.from.last_name or '')..'\nیوزرنیم : @'..(msg.from.username or 'ندارد')..'\n+'..(msg.from.phone or 'شماره تلفن موجود نیست')
reply_msg(ex, info, ok_cb, false)
end
end
function run(msg, matches)
if msg.reply_id then
get_message(msg.reply_id, info_reply, msg.id)
else
local info = 'نام : '..(msg.from.first_name or '')..'\nفامیل : '..(msg.from.last_name or '')..'\n+'..(msg.from.phone or 'شماره تلفن موجود نیست')
reply_msg(msg.id, info, ok_cb, false)
end
end

return {
patterns = {
"^[!/#]number"
},
run =