wget -O ng.sh https://raw.githubusercontent.com/SahrulGunawan-ID/Google-RDP-Desktop-NoMachine/refs/heads/main/MODULE-NGROK/ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh


function goto
{
    label=$1
    cd 
    cmd=$(sed -n "/^:[[:blank:]][[:blank:]]*${label}/{:a;n;p;ba};" $0 | 
          grep -v ':$')
    eval "$cmd"
    exit
}

: ngrok
clear
echo "Go to: https://dashboard.ngrok.com/get-started/your-authtoken"
read -p "Paste Ngrok Authtoken: " CRP
./ngrok config add-authtoken $CRP 

clear
echo "Repo: https://github.com/kmille36/Docker-Ubuntu-Desktop-NoMachine"
echo "======================="
echo "choose ngrok region (for better connection)."
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 4000 &>/dev/null &
sleep 1
if curl --silent --show-error http://127.0.0.1:4040/api/tunnels  > /dev/null 2>&1; then echo OK; else echo "Ngrok Error! Please try again!" && sleep 1 && goto ngrok; fi
docker run --rm -d --network host --privileged --name nomachine-xfce4 -e PASSWORD=123456 -e USER=user --cap-add=SYS_PTRACE --shm-size=1g thuonghai2711/nomachine-ubuntu-desktop:wine
clear
echo "NoMachine: https://www.nomachine.com/download"
echo Done! NoMachine Information:
echo IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' 
echo User: user
echo Passwd: 123456
echo
# "Colors Data"
##################################
K="\033[33;1m" # kuning
M="\033[31;1m" # Merah
P="\033[39;1m" # Putih
R="\033[36;1m" # purple
B="\033[34;1m" # biru
I="\033[32;1m" # ijo
C="\033[35;1m" # purple
##################################
seq 1 43200 | while read i; do
echo -en "\r Running Now  ${M}𐌉             $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉${K}𐌉            $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉${I}𐌉           $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉${P}𐌉          $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉${R}𐌉         $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉${B}𐌉        $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉${C}𐌉       $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉𐌉${M}𐌉      $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉${K}𐌉     $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉${I}𐌉    $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉${P}𐌉   $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉${R}𐌉  $i s /43200 s";sleep 0.2;
echo -en "\r Running Now  𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉𐌉${B}𐌉 $i s /43200 s";sleep 0.2;