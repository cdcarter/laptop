if [ -d ~/shark ]; then
  cd ~/shark
  git pull
else
  git clone https://github.com/cdcarter/shark ~/shark
fi
if [ -d ~/CumulusCI ]; then
  cd ~/CumulusCI
  git fetch --all
  git checkout patch-1
  git pull
else
  git clone https://github.com/cdcarter/CumulusCI ~/CumulusCI
  cd ~/CumulusCI
  git fetch --all
  git checkout patch-1
fi

cd ~
source ~/.bashrc

if [ -z "$CUMULUSCI_PATH" ] || [ "$CUMULUSCI_PATH" != "~/CumulusCI" ]; then
  echo "export CUMULUSCI_PATH=~/CumulusCI" >> ~/.bashrc
fi
if [ -z "$SHARK_PATH" ] || [ "$SHARK_PATH" != "~/shark" ]; then
  echo "export SHARK_PATH=~/shark" >> ~/.bashrc
fi

source ~/.bashrc
