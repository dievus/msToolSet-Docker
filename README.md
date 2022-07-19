# msToolSet-Docker

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/M4M03Q2JN)

Dockerized version of my MS-Tools. These include:

- oh365UserFinder - https://github.com/dievus/Oh365UserFinder
- geeMainUserFinder - https://github.com/dievus/geeMailUserFinder
- msDorkDump - https://github.com/dievus/msdorkdump
- msDNSScan - https://github.com/dievus/msdnsscan
- Threader3000 - https://github.com/dievus/threader3000

Instructions for using each tool can be found at each of the links above.

### Installing msToolSet-Docker from Linux:

Download the contents of the repository, extract, and run from the msToolSet-Docker directory: ```docker build . -t msToolSet```

Once started, access msToolSet-Docker with ```docker exec -it <docker container name> zsh```

### Installing msToolSet-Docker from Windows:

Download the contents of the repository, extract, and open Powershell from the msToolSet-Docker directory and run: ```Get-Content .\Dockerfile | docker build . -t mstoolset```

Once started, access msToolSet-Docker with ```docker exec -it <docker container name> zsh```

