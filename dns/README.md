```bash
$ ansible-playbook -i inventory.ini setup_dns.yml
```

```text:/etc/resolv.conf
# サーバー側
namespace 127.0.0.1
```