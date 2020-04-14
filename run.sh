sudo cp -f gocron-node /usr/local/bin/gocron-node
sudo cp -f gocron-node.service /usr/lib/systemd/system/gocron-node.service

sudo systemctl enable gocron-node
sudo systemctl start gocron-node
sudo systemctl status gocron-node
