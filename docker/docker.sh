echo ========= Build docker image
docker build -t otus.lessons.14.01 .
echo ========= Check bulk version
docker run --rm -i otus.lessons.14.01 bulk -v
echo ========= Execute bulk
perl -e 'print "cmd$_" foreach 1..10;' | docker run --rm -i otus.lessons.14.01 bulk 4
echo ========= Remove docker image
docker rmi otus.lessons.14.01