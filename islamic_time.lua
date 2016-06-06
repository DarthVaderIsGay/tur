local function run(msg, matches)
	local res = http.request("http://muslimsalat.com/"..URL.escape(matches[2])..".json?key=0c67a5121190c05e9e09d83f3af2cb3a")
	local jtab = JSON.decode(res)
	if jtab.country then
		local gheble = tonumber(jtab.qibla_direction)
		if gheble < 5 then
			compass = "360.webp"
		elseif gheble < 10 then
			compass = "10.webp"
		elseif gheble < 20 then
			compass = "20.webp"
		elseif gheble < 30 then
			compass = "30.webp"
		elseif gheble < 40 then
			compass = "40.webp"
		elseif gheble < 50 then
			compass = "50.webp"
		elseif gheble < 60 then
			compass = "60.webp"
		elseif gheble < 70 then
			compass = "70.webp"
		elseif gheble < 80 then
			compass = "80.webp"
		elseif gheble < 90 then
			compass = "90.webp"
		elseif gheble < 100 then
			compass = "100.webp"
		elseif gheble < 110 then
			compass = "110.webp"
		elseif gheble < 120 then
			compass = "120.webp"
		elseif gheble < 130 then
			compass = "130.webp"
		elseif gheble < 140 then
			compass = "140.webp"
		elseif gheble < 150 then
			compass = "150.webp"
		elseif gheble < 160 then
			compass = "160.webp"
		elseif gheble < 170 then
			compass = "170.webp"
		elseif gheble < 180 then
			compass = "180.webp"
		elseif gheble < 190 then
			compass = "190.webp"
		elseif gheble < 200 then
			compass = "200.webp"
		elseif gheble < 210 then
			compass = "210.webp"
		elseif gheble < 220 then
			compass = "220.webp"
		elseif gheble < 225 then
			compass = "225.webp"
		elseif gheble < 230 then
			compass = "230.webp"
		elseif gheble < 240 then
			compass = "240.webp"
		elseif gheble < 250 then
			compass = "250.webp"
		elseif gheble < 260 then
			compass = "260.webp"
		elseif gheble < 270 then
			compass = "270.webp"
		elseif gheble < 280 then
			compass = "280.webp"
		elseif gheble < 290 then
			compass = "290.webp"
		elseif gheble < 300 then
			compass = "300.webp"
		elseif gheble < 310 then
			compass = "310.webp"
		elseif gheble < 320 then
			compass = "320.webp"
		elseif gheble < 330 then
			compass = "330.webp"
		elseif gheble < 340 then
			compass = "340.webp"
		elseif gheble < 350 then
			compass = "350.webp"
		elseif gheble < 360 then
			compass = "360.webp"
		end
		send_document(get_receiver(msg), "file/compass/"..compass, ok_cb, false)
		return "موقعیت مکانی:\n"..jtab.country..", "..jtab.state..", "..(jtab.city or "").." ("..jtab.latitude..","..jtab.longitude..")\n\n"
		.."اذان صبح: "..jtab.items[1].fajr.."\n"
		.."طلوع خورشید: "..jtab.items[1].shurooq.."\n"
		.."اذان ظهر: "..jtab.items[1].dhuhr.."\n"
		.."نماز عصر: "..jtab.items[1].asr.."\n"
		.."اذان مغرب: "..jtab.items[1].maghrib.."\n"
		.."نماز عشا: "..jtab.items[1].isha.."\nقبله:"
	else
		return "مکان وارد شده صحیح نیست"
		
	end
end

return {
	description = "Islamic Times",
	usagehtm = '<tr><td align="center">azan شهر</td><td align="right">نمایش اوقات شرعی شهرهای ایران. میتوانید نام شهر را لاتین یا فارسی وارد کنید</td></tr>',
	usage = {"azan (city) : اوقات شرعی"},
	patterns = {"^([/#!][Aa]zan) (.*)$"},
	run = run,
}

--http://api.aladhan.com/timingsByCity?city="..URL.escape(matches[1]).."&country=IR&method=2
--[[local url = "http://muslimsalat.com/qibla_compass/500/"..tonumber(jtab.qibla_direction)..".png"
local qibla = tostring(jtab.qibla_direction):sub(0,3)
local url = "http://www.qiblaway.com/images/compass-arrows/"..qibla..".png"
local pach = download_to_file(url, "Qheble.webp")]]