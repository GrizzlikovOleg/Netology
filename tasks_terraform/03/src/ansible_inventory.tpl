[webservers]
%{ for web in webservers ~}
${web.vm_name} ansible_host=${web.external_ip} fqdn=${web.hostname}.auto.internal
%{ endfor ~}

[databases]
%{ for db in databases ~}
${db.vm_name} ansible_host=${db.external_ip} fqdn=${db.hostname}.auto.internal
%{ endfor ~}

[storage]
%{ for store in storages ~}
${store.vm_name} ansible_host=${store.external_ip} fqdn=${store.hostname}.auto.internal
%{ endfor ~}