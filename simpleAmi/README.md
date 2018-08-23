# Crear instancia desde packer con comando:

packer build template.json

# En este caso el build.sh no contiene la instruccion de 
# ansible-galaxy para ir por los roles. 
# Por esta sitaucion, anteriormente debe de ejecutarse

ansible-galaxy install -r requirements.yaml

# De esta manera, localmente en la laptop se instalaran
# y packer hara upload de ellos a la instancia por ssh
