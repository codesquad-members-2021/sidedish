echo "#########################################################"
#콘피규레이숀
SERVADDR='ec2-13-125-229-168.ap-northeast-2.compute.amazonaws.com' #배포할 AWS EC2 서버
KEYFILE='/Users/dong/Downloads/DongDong.pem' # 내 개발콤퓨타의 key 위치
AUTOINJECT_JAR=1 #1:자동으로 scp명령어로 밀어넣기,   #0=안밀어넣고 명령어만 보여주고 끝내기
#
echo "## DongDong's 바이너리파일 밀어넣기 스크립트 "
echo "##  >>  작품명 : 인생은 아름다워  << "
echo "#########################################################"


cd ../../../
./gradlew build
#ls
cd build/libs
BINFILE=`ls`
echo $BINFILE

if [ ${AUTOINJECT_JAR} -eq 1 ];then
    scp -i $KEYFILE $BINFILE ubuntu@$SERVADDR:/home/ubuntu
    echo "JAR FILE SEND OK...!"
fi


echo ""
echo "## tip!"
echo ""
echo "#how to run?"
echo "nohup java -jar ${BINFILE} &"
echo ""
echo "#how to show log file?"
echo "tail -F nohup.out"
