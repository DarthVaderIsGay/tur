do

function run(msg, matches)     -- Bot number     -- first name        -- last name
send_contact(get_receiver(msg), "+19164097168", "Turbo", "TG", ok_cb, false)
end

return {
patterns = {
"^[!#/][Ss][Hh][Aa][Rr][Ee]$",
"^[!#/][Pp][Hh][Oo][Nn][Ee]$",
"^[!#/][Nn][Uu][Mm][Bb][Ee][Rr]"
},
run = run
}

end
