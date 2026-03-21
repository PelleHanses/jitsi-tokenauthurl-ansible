# Jitsi med Podman

## Installera Jitsi med alla övriga containrar
Efter att värden satts i variabelfiler ovan och images har skapats starta enligt nedan. Anledningen till att allltid använda "-l <grupp>" är att vi då kan göra en kontroll i playbooken om man angett en grupp - detta för att inte av misstaag råka installera alla hostar som finns med i inventory-filen.
QA:
```
ansible-playbook playbook.yml --ask-become-pass -l jitsitestqa -i inventory.yml
```
Prod:
```
ansible-playbook playbook.yml --ask-become-pass -l jitsitest -i inventory.yml
```
