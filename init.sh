echo "#### Setting up repo ####"
WORKSPACE_DIR=$PWD
yarn install
cd /workspaces/xterm.js/addons/addon-webgl
yarn link
cd $WORKSPACE_DIR
yarn link @xterm/addon-webgl

echo "Installing AWS CLI"
curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip'
unzip -o awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip
rm -rf ./aws

echo "Hooking up AWS Credentials"
ln -s $WORKSPACE_DIR/.aws /home/node/.aws