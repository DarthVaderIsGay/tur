do

function run(msg, matches)
  return [[☇Group Commands☇

!kick [username|id]
You can also do it by reply
〰〰〰〰〰〰〰〰〰〰
!ban [ username|id]
You can also do it by reply
〰〰〰〰〰〰〰〰〰〰
!unban [id]
You can also do it by reply
〰〰〰〰〰〰〰〰〰〰
!who
Members list
〰〰〰〰〰〰〰〰〰〰
!modlist
Moderators list
〰〰〰〰〰〰〰〰〰〰
!promote [username]
Promote someone
〰〰〰〰〰〰〰〰〰〰
!demote [username]
Demote someone
〰〰〰〰〰〰〰〰〰〰
!kickme
Will kick user
〰〰〰〰〰〰〰〰〰〰
!about
Group description
〰〰〰〰〰〰〰〰〰〰
!setphoto
Set and locks group photo
〰〰〰〰〰〰〰〰〰〰
!setname [name]
Set group name
〰〰〰〰〰〰〰〰〰〰
!rules
Group rules
〰〰〰〰〰〰〰〰〰〰
!id
Return group id or user id
〰〰〰〰〰〰〰〰〰〰
!help
Get commands list
〰〰〰〰〰〰〰〰〰〰
!lock [member|name|bots|leave] 
Locks [member|name|bots|leaveing] 
〰〰〰〰〰〰〰〰〰〰
!unlock [member|name|bots|leave]
Unlocks [member|name|bots|leaving]
〰〰〰〰〰〰〰〰〰〰
!set rules [text]
Set [text] as rules
〰〰〰〰〰〰〰〰〰〰
!set about [text]
Set [text] as about
〰〰〰〰〰〰〰〰〰〰
!settings
Returns group settings
〰〰〰〰〰〰〰〰〰〰
!newlink
Create/revoke your group link
〰〰〰〰〰〰〰〰〰〰
!link
Returns group link
〰〰〰〰〰〰〰〰〰〰
!owner
Returns group owner id
〰〰〰〰〰〰〰〰〰〰
!setowner [id]
Will set id as owner
〰〰〰〰〰〰〰〰〰〰
!setflood [value]
Set [value] as flood sensitivity
〰〰〰〰〰〰〰〰〰〰
!stats
Simple message statistics
〰〰〰〰〰〰〰〰〰〰
!save [value] [text]
Save [text] as [value]
〰〰〰〰〰〰〰〰〰〰
!get [value]
Returns text of [value]
〰〰〰〰〰〰〰〰〰〰
!clean [modlist|rules|about]
Will clear [modlist|rules|about] and set it to nil
〰〰〰〰〰〰〰〰〰〰
!res [username]
Returns user id
〰〰〰〰〰〰〰〰〰〰
!log
Will return group logs
〰〰〰〰〰〰〰〰〰〰
!banlist
Will return group ban list
〰〰〰〰〰〰〰〰〰〰
⚠You can use both "/" and "!"

⚠Only mods, owner and admin can add bots in group

⚠Only moderators and owner can use kick,ban,unban,newlink,link,setphoto,setname,lock,unlock,set rules,set about and settings commands

⚠Only owner can use res,setowner,promote,demote and log commands

]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^[!#/][Hh]elp$",
    "^[Hh]elp$"
  }, 
  run = run 
}

end
