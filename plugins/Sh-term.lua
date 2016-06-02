do

function run(msg, matches)
  if is_sudo(msg) then
  return io.popen(matches[1]):read('*all')
  end
end

return {

  patterns = {
    "^[!/#][Ss][Hh] (.*)$"
  },
  run = run,
}

end
