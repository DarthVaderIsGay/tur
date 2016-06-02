do

function run(msg, matches)
  return "کس ننت " .. matches[1] .. "\n بار بعدی کاری با ننت ندارم باباتو میکنم تخم سگ"
end

return {
  description = "Says hello to someone", 
  usage = "say hello to [name]",
  patterns = {
    "^[!#/]فحش بده به (.*)$",
    "^[!#/]فحش بده به (.*)$"
  }, 
  run = run 
}

end
