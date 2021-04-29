echo "#########################################################"
#시작설정
SERVADDR='ec2-13-125-229-168.ap-northeast-2.compute.amazonaws.com' #배포할 AWS EC2 서버
KEYFILE='~/Downloads/DongDong.pem' # 개발컴퓨터 key 위치
AUTOINJECT_JAR=1 #1:자동으로 scp명령어로 밀어넣기,   #0=안밀어넣고 명령어만 보여주고 끝내기
FE_PROJECT_DIR='./Workspace/sidedish/FE'
FE_BUILD_DIR='./Workspace/sidedish/FE/build'
#
echo "## DongDong's 밀어넣기 스크립트 "
echo "#########################################################"
echo "##  >>  Front-end build"``
echo "#########################################################"
cd ~
echo $pwd
cd $FE_PROJECT_DIR
echo $pwd
ls
yarn build
yarn global add serve
#serve -s build
echo '######################'
echo $FE_BUILD_DIR
scp -i $KEYFILE -r build ubuntu@$SERVADDR:/home/ubuntu/build
echo ""
echo "# 프론트엔드 배포 완료"