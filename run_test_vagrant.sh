#!/bin/bash

# Don't show commands
set +x
# Exit on any failure
set -e

if [ ! -d "$PWD/tests/roles" ]
then
  mkdir -p $PWD/tests/roles
fi

if [ ! -d "$PWD/tests/roles/ansible-role-sonarqube" ]
then
  ln -s /vagrant /vagrant/tests/roles/ansible-role-sonarqube
fi

cd $PWD/tests
# Install requirements if `requirements.yml` is present.
if [ -f "requirements.yml" ]; then
  echo "Requirements file detected; installing dependencies."
  ansible-galaxy install -r requirements.yml  --roles-path=./galaxy_roles
fi

ansible-playbook -i inventory --connection=local vagranttest.yml $*
