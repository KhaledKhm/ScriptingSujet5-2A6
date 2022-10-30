#!/bin/bash
#afficher les caracteristiques du disque dur
moatez()
{
	sudo fdisk -l
}
moatez #appel de fonction
