#!/bin/bash

#enregistrer le resultat de la commande pydf dans resultat.txt
save(){
sudo pydf >> ~/Desktop/resultat.txt
echo "Saved"
}
save
