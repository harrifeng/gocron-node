mkdir -p ${HOME}/.config/systemd/user
mkdir -p ${HOME}/.bin
cp -f gocron-node ${HOME}/.bin/gocron-node

cp -f gocron-node.service ${HOME}/.config/systemd/user/gocron-node.service
sed -i "s|REPLACE_USERNAME|$HOME|g" ${HOME}/.config/systemd/user/gocron-node.service

systemctl enable --user gocron-node
systemctl start --user gocron-node
systemctl status --user gocron-node
