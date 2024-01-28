```bash
$ ansible-playbook -i inventory.ini setup_dns.yml
```

```text:/etc/resolv.conf
# サーバー側
nameserver 8.8.8.8
nameserver 8.8.4.4
nameserver 127.0.0.1
```