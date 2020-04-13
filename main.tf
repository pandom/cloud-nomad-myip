data "http" "myip" {
  url = "https://ipv4bot.whatismyipaddress.com"
  request_headers = {
    Accept = "application/json"
  }
}


output "myip" {
  value = data.http.myip.body
}