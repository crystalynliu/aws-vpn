vpn_without_elastic_ip:
	./update_cloudformation personal-vpn $(APP_REGION) vpn_without_elastic_ip.json parameters_without_elastic_ip.json

reset:
	./vpn_manage reset

start:
	./vpn_manage start

stop:
	./vpn_manage stop
