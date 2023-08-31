if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nayaganfilterbo/Nayaganbot.git /Nayaganbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Nayaganbot
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting Nayaganbot...."
python3 bot.py
