#!/bin/bash


graph(){
yad --form --width=250 --height=150 --text="<span foreground='red'><b>Choisir votre choix</b></span>:" \
--field="<span foreground='blue'><b>-lpy</b></span>":fbtn "./khaled.sh" \
--field="<span foreground='orange' background='black'><b>-ldk</b></span>":fbtn "./moatez.sh" \
--field="<span foreground='green' background='black'><b>-save</b></span>":fbtn "./save.sh" \
--field="<span foreground='purple'><b>-aff</b></span>":fbtn "./aff.sh" \
--button=gtk-cancel:2 \

}
graph

