local function run(msg, matches)
	local base = "curl 'https://person.clearbit.com/v1/people/email/"..matches[1].."' -u 3986c574e76b9b21094c695606f8f76e:"
	local data = io.popen(base):read('*all')
	local jdat = JSON.decode(data)
	if not jdat.name then
		return "آدرس ایمیل وارد شده صحیح نیست. آدرس ایمیل را به صورت زیر وارد کنید:\nadmin@umbrella-cp.ir.tn"
	end
	if jdat.avatar then
		send_photo_from_url("chat#id"..msg.to.id, jdat.avatar)
	end
	return "🆎Full Name: "..(jdat.name.fullName or "-----").."\n"
		.."🅰First Name: "..(jdat.name.givenName or "-----").."\n"
		.."🅱Last Name: "..(jdat.name.familyName or "-----").."\n"
		.."🚻Gender: "..(jdat.gender or "-----").."\n"
		.."🏢Location: "..(jdat.geo.country or "").."  "..(jdat.geo.state or "").."  "..(jdat.geo.city or "").."\n"
		.."🚀WebSite: "..(jdat.site or "-----").."\n"
		.."⏳Bio:\n".. (jdat.bio or "-----")
end

return {
	description = "E-Mail Information Grabber",
	usagehtm = '<tr><td align="center">email آدرس ایمیل</td><td align="right">مشخصات صاحب ایمیل را به شما میدهد</td></tr>',
	usage = {"email (mail) : مشخصات ایمیل",},
	patterns = {
	"^[!#/][Ee]mail (.*)"
	},
	run = run
}
