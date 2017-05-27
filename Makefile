vpn_without_elastic_ip:
	./update_cloudformation personal-vpn $(APP_REGION) vpn_without_elastic_ip.json parameters_without_elastic_ip.json

reset_vpn_ip:
	./vpn_manage
