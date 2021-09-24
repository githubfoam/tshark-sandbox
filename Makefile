IMAGE := alpine/fio
APP:="scripts/archlinux-req.sh"


detecting_reconnaissance:
	bash scripts/detecting_reconnaissance.sh

deploy-tshark:
	bash scripts/deploy-tshark.sh

virtualenv-ansible-specific:
	bash scripts/virtualenv-ansible-specific.sh

virtualenv-ansible:
	bash scripts/virtualenv-ansible.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-vagrant deploy-libvirt deploy-zabbix push-image
