echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/elenlilco/GrooveTG /GrooveTG
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/elenlilco/GrooveTG -b $BRANCH /GrooveTG
fi
cd /GrooveTG
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
