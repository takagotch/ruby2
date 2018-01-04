require 'net/https'

USER = "xxx"
PW   = "yyy"

site = Net::HTTP.new("www.takagotch.com", 443)
site.user_ssl = true
response = site.get2("/cgi-bin/cokerecipe.cgi",
		     'Authorization' => 'Basic' +
		     ["#{USER}:#{PW}"].pack('m').strip)


