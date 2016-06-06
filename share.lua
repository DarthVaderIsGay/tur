do

function run(msg, matches)
send_contact(get_receiver(msg), "+14422428848", "CRUEL", "BOT", ok_cb, false)
end

return {
patterns = {
"^[/#!]share$"

},
run = run
}

end