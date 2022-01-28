clear

echo Cloning noVNC...
git clone https://github.com/novnc/noVNC.git > /dev/null 2>&1
echo Starting noVNC Server...
nohup ./noVNC/utils/novnc_proxy --listen 8080 --vnc localhost:5901 &>/dev/null &
echo All done! Please click Open Desktop to access your VM!

