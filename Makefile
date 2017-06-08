deploy:
	./update_cloudformation personal-vpn $(AWS_DEFAULT_REGION) vpn_without_elastic_ip.json parameters_without_elastic_ip.json

reset:
	./vpn_manage reset

start:
	./vpn_manage start

stop:
	./vpn_manage stop

start_tunnel: reset
	./vpn_manage start_tunnel

stop_tunnel:
	./vpn_manage stop_tunnel

check_tunnel:
	./vpn_manage check_tunnel
