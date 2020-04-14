mkdir -p ${HOME}/.config/systemd/user
mkdir -p ${HOME}/.bin
sed -i "s|REPLACE_USERNAME|$HOME|g" ./gocron-node.service
cp -f gocron-node.service ${HOME}/.config/systemd/user/gocron-node.service
# systemctl enable --user gocron-node
# systemctl start --user gocron-node
# systemctl status --user gocron-node
