sudo -i


if [ ! -x /usr/local/bin/ansible ]
then
        if [ -f /etc/debian_version ]
        then
                apt-get update
                apt-get install -y python-pip
        else
                yum install -y python-py
                yum install -y gcc
                yum install -y python-devel
        fi
        easy_install pip
        pip install ansible
fi
export PATH=$PATH:/usr/local/bin
ansible --version

