# rtm-docker

This is my attempt at dockerising the Project Return to Morroc files from Ornstein. Original files [here](https://drive.google.com/drive/folders/101h6AAgqiRcII_TP4C9EZ5sTp8Y-qjs7?usp=drive_link)

rAthena Docker documentation [here](https://rathena.github.io/user-guides/installing/docker/)
rAthena repository [here](https://github.com/rathena/rathena)

My instructions:

- Download the files from the "Original files" link above. 
- Place folder 2 ("02 emu rathena") in the `rathena` folder.
- Download the `prm.sql` file [here](todo)
- Place it in `rathena/sql-files`
- Run `./run.sh`

Optional:

- To modify the database, you will require a MySQL client. I used `mysql-shell` 

Original setup instructions: 

How to run it:

- run Openserver on folder 1 (server) (may need to install SQL server, good luck if you do)
- run runserver.bat on folder 2 (rathena)
- run PRM.exe on folder 3 (client)

How to run on radmin VPN/Hamachi for friends:

- change the IP address to the  virtual one on sclientinfo.xml, share the client with friends, make a network and have them join it.

You can change some easy settings on the folder:

02 emu rathena\conf\battle