# akrech-rev-shell
It's the first tool that I had made with bash scripting.
a very simple but useful(maybe) tool for tryhackme users.

#PROCESS
easyly download/clone (akrech.sh) file by --- git clone https://github.com/a-k-r-e-c-h/akrech-rev-shell
$ cd akrech-rev-shell
$ chmod +x akrech.sh
& ./akrech.sh

#use "nano akrech.sh"if you want's to change the exploit or the IP/network interface.





#akrech   ---a simple metasploit automated reverse-shell-listener tool written in bash.
#this tool is made for time saving & day-to-day usage.
#metasploit has must be installed to ran this script on your machine.
#found me on tweeter-- https://twitter.com/a_k_r_e_c_H
#download

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

msfconsole -q -x " use ```exploit/multi/handler```;    <---change this, if you wants to set another exploit--->
  set lhost ```tun0``` ;                               <---change this, if you wants to set another IP/network interface---> 
   set lport ```4444``` ;                              <---change this, if you wants to listen on another port--->
    exploit ;"
