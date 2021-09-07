# akrech-rev-shell   ---a simple metasploit automated reverse-shell-listener tool written in bash.
#this tool is made for time saving & day-to-day usage specifically for tryhackme users.
#metasploit has must be installed to ran this script on your machine.
#found me on tweeter-- https://twitter.com/a_k_r_e_c_H

#!/bin/bash

 
echo " \e[91m


░█████╗░██╗░░██╗██████╗░███████╗░█████╗░██╗░░██╗
██╔══██╗██║░██╔╝██╔══██╗██╔════╝██╔══██╗██║░░██║
███████║█████═╝░██████╔╝█████╗░░██║░░╚═╝███████║
██╔══██║██╔═██╗░██╔══██╗██╔══╝░░██║░░██╗██╔══██║
██║░░██║██║░╚██╗██║░░██║███████╗╚█████╔╝██║░░██║
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝"
echo " \e[5m
                       git- a-k-r-e-c-h
                       mail- itz.a.k.r.e.c.h@gmail.com
                      "

msfconsole -q -x " use exploit/multi/handler;    
  set lhost tun0 ;
   set lport 4444 ;
    exploit ;"
