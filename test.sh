docker stop test1
docker rm test1
docker rmi test1
docker build -t test1 . | tee build.log
docker run --name test1 -a stdin -a stdout -i -t test1 /bin/bash
