- k apply -f ./pod.yaml
- k debug -f ./pod.yaml -it --image=busybox --target=nginx
	proc/1/root # cd /proc/1/root/etc/nginx && ls -la
	drwxr-xr-x    3 root     root          4096 Oct  5  2020 .
	drwxr-xr-x    1 root     root          4096 Jul 19 09:28 ..
	drwxr-xr-x    2 root     root          4096 Oct  5  2020 conf.d
	-rw-r--r--    1 root     root          1007 Apr 21  2020 fastcgi_params
	-rw-r--r--    1 root     root          2837 Apr 21  2020 koi-utf
	-rw-r--r--    1 root     root          2223 Apr 21  2020 koi-win
	-rw-r--r--    1 root     root          5231 Apr 21  2020 mime.types
	lrwxrwxrwx    1 root     root            22 Apr 21  2020 modules -> /usr/lib/nginx/modules
	-rw-r--r--    1 root     root           643 Apr 21  2020 nginx.conf
	-rw-r--r--    1 root     root           636 Apr 21  2020 scgi_params
	-rw-r--r--    1 root     root           664 Apr 21  2020 uwsgi_params
	-rw-r--r--    1 root     root          3610 Apr 21  2020 win-utf

- k debug -f ./pod.yaml -it --image=nicolaka/netshoot  --target=nginx
- k debug node/minikube -it --image=busybox
	/host/var/log/pods/default_nginx_4b4a7a97-f27e-4440-bcc1-a9c4292c5e2b/nginx # pwd
	/host/var/log/pods/default_nginx_4b4a7a97-f27e-4440-bcc1-a9c4292c5e2b/nginx
	/host/var/log/pods/default_nginx_4b4a7a97-f27e-4440-bcc1-a9c4292c5e2b/nginx # ls -la
	total 12
	drwxr-xr-x    2 root     root          4096 Jul 19 09:28 .
	drwxr-xr-x    7 root     root          4096 Jul 19 09:42 ..
	lrwxrwxrwx    1 root     root           165 Jul 19 09:28 0.log -> /var/lib/docker/containers/54af4cfd5ed49a517e8e15d9b2045f9031784c54969435b390c11ba415d1fb63/54af4cfd5ed49a517e8e15d9b2045f9031784c54969435b390c11ba415d1fb63-json.log
	cat /host/var/lib/docker/containers/54af4cfd5ed49a517e8e15d9b2045f9031784c54969435b390c11ba415d1fb63/54af4cfd5ed49a517e8e15d9b2045f9031784c54969435b390c11ba415d1fb63-json.log