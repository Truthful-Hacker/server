if [[ -e ngrok && -d ngrok ]];
	      
then
apt update && apt install git -y
#rm ngrok
#rm -rf ngrok
#git clone https://github.com/Truthful-Hacker/ngrok
cd ngrok
unzip ngrok.zip
chmod 777 ngrok
clear
echo -e  "\033[91mSelect any server"
echo -e "\033[92m"
echo "[1] HTTP"
echo ""
echo "[2] TCP"
echo -e  "\033[93m"
echo -e "Select 1 or 2\033[92m "
read conn


case $conn in
1)
        read -p "Enter port number : " port
        ./ngrok http $port
        ;;
2)
        read -p "Enter port number : " port
        ./ngrok tcp $port
        ;;
esac

else
apt update && apt install git -y
git clone https://github.com/Truthful-Hacker/ngrok
cd ngrok
unzip ngrok.zip
chmod 777 ngrok
clear
echo -e  "\033[91mSelect any server"
echo -e "\033[92m"
echo "[1] HTTP"
echo ""
echo "[2] TCP"
echo -e  "\033[93m"
read -p "Select 1 or 2 : " conn
case $conn in
1)
	read -p "Enter port number : " port
	./ngrok http $port
	;;
2)
	read -p "Enter port number : " port
	./ngrok tcp $port
	;;
esac
fi
