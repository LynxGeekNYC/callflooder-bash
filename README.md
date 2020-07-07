Please Donate:
==============
CashApp: LynxGeekNYC or 
PayPal: mirvisconsulting@gmail.com

Created by 'MasterChen' but Perfected by 'Alexander Mirvis / LynxGeekNYC'
Use Asterisk and a SIP provider to send a flood of phone calls to a target.

# CallFlooder    
Use Asterisk and a SIP provider to send a flood of phone calls to a target.

#  DISCLAIMER      
-------
THIS IS FOR EDUCATIONAL PURPOSES ONLY AND FOR STRESS TESTING YOUR OWN SYSTEM. I CANNOT BE HELD RESPONSIBLE FOR ANY MALICIOUS IMPLEMENTATION OF THESE SCRIPTS. THIS IS EXACTLY WHAT THE TITLE SAYS. IT FLOODS A TARGET WITH CALLS FROM A VOIP SERVER. THIS IS RECOMMENDED FOR TESTING YOUR OWN ABILITY TO HANDLE DOS ATTEMPTS.

Materials Needed
================
+ Asterisk (tested on v1.8 and higher) or Free PBX      
+ SIP provider      
+ BASH      


Usage
=====
Edit the callfile.back to edit the number you will be dialing.

From your working directory:      
`./flood-static.sh <number of calls>` - Will flood the number with a static one CallerID number based of callfile.bak
`./flood-all.sh <number of calls>` - Will flood the number with a random CallerID number from all over US
`./flood-local.sh <number of calls>` Will flood the number with a random Local CallerID number from all over US based on what you have compiled in local.cpp

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

NOTE:
=====
- All the recordings are stored in: '/var/spool/asterisk/monitor'
- By default, it plays a really annoying "spam2" Audio about buying penis enlargements. Please do some research on how to put your own audio file in. All the audio files are in ULAW format at: 'var/lib/asterisk/sounds/en'
