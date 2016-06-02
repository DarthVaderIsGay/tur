local function run(msg, matches)
	if matches[1]:lower() == "github>" then
		local dat = https.request("https://api.github.com/repos/"..matches[2])
		local jdat = JSON.decode(dat)
		if jdat.message then
			return "☡ERROR☡"
		end
		local base = "curl 'https://codeload.github.com/"..matches[2].."/zip/master'"
		local data = io.popen(base):read('*all')
		f = io.open("file/github.zip", "w+")
		f:write(data)
		f:close()
		return send_document("chat#id"..msg.to.id, "file/github.zip", ok_cb, false)
	else
		local dat = https.request("https://api.github.com/repos/"..matches[2])
		local jdat = JSON.decode(dat)
		if jdat.message then
			return "☡ERROR☡"
		end
		local res = https.request(jdat.owner.url)
		local jres = JSON.decode(res)
		send_photo_from_url("chat#id"..msg.to.id, jdat.owner.avatar_url)
		return "●GitHub●\n"
   .."♚GitName: "..(jres.name or "-----").."\n"
			.."♛UserName: "..jdat.owner.login.."\n"
			.."♜CompanyName: "..(jres.company or "-----").."\n"
			.."♝WebSite: "..(jres.blog or "-----").."\n"
			.."♞Email: "..(jres.email or "-----").."\n"
			.."♟Location: "..(jres.location or "-----").."\n"
			.."🕀Repository: "..jres.public_repos.."\n"
			.."⚆Followers: "..jres.followers.."\n"
			.."⚈Following: "..jres.following.."\n"
   .."🕇Created At: "..jres.created_at.."\n"
   .."🛆Bio: "..(jres.bio or "-----").."\n\n"
   .."○Project○\n"
   .."♔ProjectName: "..jdat.name.."\n"
   .."♕Project URL: "..jdat.html_url.."\n"
   .."♖Clone URL: "..jdat.clone_url.."\n"
			.."♗ProjectBlog: "..(jdat.homepage or "-----").."\n"
			.."🕆Created At: "..jdat.created_at.."\n"
			.."🔩Updated At: "..(jdat.updated_at or "-----").."\n"
			.."🖋Language: "..(jdat.language or "-----").."\n"
			.."📉Size: "..jdat.size.."\n"
			.."⛤Stars: "..jdat.stargazers_count.."\n"
			.."⚉Watchers: "..jdat.watchers_count.."\n"
			.."🔖Forks: "..jdat.forks_count.."\n"
			.."👥Subscribers: "..jdat.subscribers_count.."\n"
			.."📃Description:\n"..(jdat.description or "-----").."\n"
	end
end

return {
	description = "Github Informations",
	usagehtm = '<tr><td align="center">github پروژه/اکانت</td><td align="right">آدرس گیتهاب را به صورت پروژه/اکانت وارد کنید<br>مثال: github shayansoft/umbrella</td></tr>'
	..'<tr><td align="center">github> پروژه/اکانت</td><td align="right">با استفاده از این دستور، میتوانید سورس پروژه ی مورد نظر را دانلود کنید. آدرس پروژه را مثل دستور بالا وارد کنید</td></tr>',
	usage = {
		"github (account/proje) : مشخصات پروژه و اکانت",
		"github> (account/proje) : دانلود سورس",
		},
	patterns = {
		"^[!/#]([Gg]ithub>) (.*)",
		"^[!/#]([Gg]ithub) (.*)",
		},
	run = run
}
