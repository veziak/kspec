Build kspec tool using docker

build the image:
sudo docker build -t  veziak/kspec .

Run the container and compile kspec
sudo docker run --rm --volume $(pwd):/tmp/kspec -w /tmp/kspec -t veziak/kspec scons 

