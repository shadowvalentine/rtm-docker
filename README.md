# rtm-docker

This is my take on Ornstein's Return to Morroc server, built with Github Actions and hosted in AWS. Original files [here](https://drive.google.com/drive/folders/101h6AAgqiRcII_TP4C9EZ5sTp8Y-qjs7?usp=drive_link)

rAthena Docker documentation [here](https://rathena.github.io/user-guides/installing/docker/)

rAthena repository [here](https://github.com/rathena/rathena)

Credits: 
- **mokona (`echomokona`)**: Thanks for all the help testing and troubleshooting these configs!

Instructions:

- Set the following secrets in your GitHub repository:
  - aws_key_id: ${{ secrets.AWS_KEY_ID }}
  - aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY}}
  - aws_bucket: ${{ secrets.AWS_BUCKET }}
- On merge to main, it will automatically build the server files, compress the output and required configs, and upload to S3 using the secrets provided.
- My AWS configuration will not be made available here. However the output from the GitHub Runner is host-agnostic, and can be used to host the server anywhere.

The below instructions are relevant for Docker or local Linux hosting. Both setups used Docker as the database instance. These have been archived in `docker-archive` and `local-archive` branches respectively.

Archived instructions:

-----

Docker:

Requirements:

- Linux host
- Docker for Linux

- Navigate to `rathena/tools/docker/asset`
- **!! Important !!**
  -  In each of the `*_conf.txt` files, update `<< HOST IP GOES HERE >>`  with the public-facing IP address of the server
  - This is required to allow clients to connect
- Run `./rebuild-and-run.sh`

Note: 

- This is confirmed **not working** with WSL, or in a VM in Windows. Please host it on Docker for Linux, or build it for Windows using MSBuild.

Optional:

- To modify the database, you will require a MySQL client. I used `mysql-shell` 

-----

Local:

- Download the files from the "Original files" link above. 
- Place folder 2 ("02 emu rathena") in the `rathena` folder.
- Download the `prm.sql` file [here](todo)
- Place it in `rathena/sql-files`
- Run `./run.sh`

Original setup instructions: 

How to run it:

- run Openserver on folder 1 (server) (may need to install SQL server, good luck if you do)
- run runserver.bat on folder 2 (rathena)
- run PRM.exe on folder 3 (client)

How to run on radmin VPN/Hamachi for friends:

- change the IP address to the  virtual one on sclientinfo.xml, share the client with friends, make a network and have them join it.

You can change some easy settings on the folder:

02 emu rathena\conf\battle