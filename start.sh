if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/VigaBotsTrio12/viga_filter_url_short.git /Lucifer
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lucifer
fi
cd /Lucifer
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
