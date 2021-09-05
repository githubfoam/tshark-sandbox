IMAGE := alpine/fio
APP:="scripts/archlinux-req.sh"

deploy-tshark:
	bash scripts/deploy-tshark.sh


virtualenv-ansible-specific:
	bash scripts/virtualenv-ansible-specific.sh

virtualenv-ansible:
	bash scripts/virtualenv-ansible.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-vagrant deploy-libvirt deploy-zabbix push-image
