Created by 'MasterChen' but Perfected by 'Alexander Mirvis / LynxGeekNYC'
Use Asterisk and a SIP provider to send a flood of phone calls to a target.

# CallFlooder    
Use Asterisk and a SIP provider to send a flood of phone calls to a target.

#  DISCLAIMER      
-------
THIS IS FOR EDUCATIONAL PURPOSES ONLY AND FOR STRESS TESTING YOUR OWN SYSTEM. I CANNOT BE HELD RESPONSIBLE FOR ANY MALICIOUS IMPLEMENTATION OF THESE SCRIPTS. THIS IS EXACTLY WHAT THE TITLE SAYS. IT FLOODS A TARGET WITH CALLS FROM A VOIP SERVER. THIS IS RECOMMENDED FOR TESTING YOUR OWN ABILITY TO HANDLE DOS ATTEMPTS.

Mat6erials Needed
================
+ Asterisk (tested on v1.8 and higher) or Free PBX      
+ SIP provider      
+ BASH      


Usage
=====
Edit the callfile.back to edit the number you will be dialing.

From your working directory:      
`./callscript.sh <number of calls>`

The script runs through a loop that keeps throwing the Asterisk callfile into the outgoing directory.
The speed of calls depends on a few things.
1. Computing power
2. The channel limit set by your SIP provider

Note: Making multiple directories and running multiple instances of the script will not work. 

CashApp: LynxGeekNYC (Donate)      
If you like my work, please consider a donation of any amount. It would be greatly appreciated!

INSTALLATION:
=============

For Asterisk:
Copy flood-context.txt contents into your Asterisk Extension Configuation file

For FreePBX:
Go to Free PBX Admin, go to: Custom_extnesions.conf and copy the flood-context.txt there

C++ File:
There are 2 C++ Files. One is designed to generate random caller ID all over the country and one is designed to generate LOCAL Caller ID's.
Before compile local CallerID C++ file, make changes to the Prefix of the caller ID's you will be using.
