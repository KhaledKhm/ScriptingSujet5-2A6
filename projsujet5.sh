#!/bin/bash

#-----------------------------SUJET 3---------------------------
#----------CREATED BY KHALED MAAMMAR & MOATEZ KHEMIRI-----------
#-------------------------------2A6-----------------------------
#------------------ALL RIGHTS RESERVED 2020---------------------

#installation de python necessaire https://websiteforstudents.com/installing-the-latest-python-3-7-on-ubuntu-16-04-18-04/?fbclid=IwAR2Iwrdui7BYMR45iHSUtw5OvP4aCu-ws8Yeqaf1fSoDrvWNllhOXHqzUWg

#graph(){
#yad --form --width=250 --text="Choisir votre choix	:" \
#--field="-lpy":fbtn "./khaled.sh" \
#--field="-ldk":fbtn "./moatez.sh" \
#--field="-save":fbtn "sudo pydf >> ~/Desktop/resultat.txt" \
#--field="-aff":fbtn "./aff.sh" \
#--button=gtk-cancel:2 \
#--button="fdisk":2 \
#--button="help":3 \
#}

#foo=$?


#verification si pydf existe ou nn
verif_python()
{	
	echo "update your system and install pydf if it doesnt exist"
	python --version
}


#creation et affichage de menu dans le console
menu(){
until [ "$proj5" = "-q" ] 
do
echo Les options':' 
echo
echo " -lpy : lancer la commande Pydf: "
echo " -ldk : lancer la commande fdisk -l:" #afficher les caracteristique de disque dur 
echo "-save : enregistrer les resultat de -lpy un fichier (/Desktop/resultats.txt):"
echo "-aff : ouvrir /Desktop/resultat.txt" 
echo "-hel : ouvrir help pour verifier -lpy"
echo " -q : QUITTER"
echo
echo
read proj5
echo 
echo
echo

if [ "$proj5" = "-lpy" ]  #test si il a ecrit -lpy qui appelle la commande pydf
then	
	./khaled.sh #appel de le script

elif [ "$proj5" = "-ldk" ] #test si il a ecrit -ldk qui appelle la commande -fdisk -l
then
	./moatez.sh #appel de script

elif [ "$proj5" = "-hel" ] #test si il a ecrit -hel qui affiche le HELP
then
	echo "--->"
	until [ "$hel" = "-r" ]
	do
	echo ":::::HELP:::::"
	echo " -vp: verfication de l'existance de python:" 
	echo "-r: retour au programme principal:"
	read hel
	echo
	echo
	
	if [ "$hel" = "-vp" ] #test si il a ecrit -vp qui appelle la commande la fonction verif_python
	then
		verif_python

	elif [ "$hel" = "-r" ] #test si il a ecrit -r qui retourne a le menu principal
	then
	echo "<---"
	else
		echo "verifiez votre syntaxe svp"
	fi

	echo
	echo
	
	done

	unset hel
	
elif [ "$proj5" = "-save" ] #test si il a ecrit -save qui appelle lescript save.sh
then
	#sudo pydf >> ~/Desktop/resultat.txt
	./save.sh #appel de script

elif [ "$proj5" = "-aff" ] #test si il a ecrit -aff qui appelle le script aff.sh
then	
	#gedit ~/Desktop/resultat.txt
	./aff.sh #appel de script
elif [ "$proj5" = "-q" ] #test si il a ecrit -q qui quitte le programme
then
	echo "GOOD BYE!"	

else
	echo 'verifier votre syntaxe'
	
fi
echo
echo
echo ________________________________________________________________
done
}

while getopts "ab" opt #test d'option pour activer l'interface ou manipulation de console
do
	case $opt in
	a) 
		./graph.sh ;; #appel de le script interface
	b) 
		menu ;; #appel de fonction menu
	/?) echo "choix invalide choisir a ou b"
esac
done
