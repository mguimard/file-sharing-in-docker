#!/usr/bin/env sh

docker build --build-arg USERID=$(id -u) --build-arg GROUPID=$(id -g) -t mguimard/file-sharing-in-docker:latest .

echo "to be removed" > volume/remove.txt
chmod g+w volume/remove.txt

docker run --rm -v $(pwd)/volume:/data mguimard/file-sharing-in-docker:latest sh -c "ls -al /data && rm /data/remove.txt && echo Hello > /data/file.txt"
rm -f volume/file.txt
