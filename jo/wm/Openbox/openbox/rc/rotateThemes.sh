#!/bin/bash

# a script to rotate through themes

# Get the themes with these commands:
#  cd /usr/share/themes
#  fd -d1 -td >> $Obc/testThemes.sh

declare -a themes=(AbsE Airborne Anchos Arctic Artwiz-boxed Ayunb BBstyle Bamboo Bear-tangerine Bear2 Bland Bloohax Carbon Chaos2 Clearlooks Clearlooks-3.4 Clearlooks-Olive Cukoo-spit Curdled Cyclism Day Deep Default Dyne Ebox Emacs Flax Fog Fog-i Fog-maths Fog-mine Fog-t Fvwmish Gd-fog Gelb Gelb-chubby Gold Greenz I-merry I-merryb Isawagorilla Jolly Kong Light-industry Loma M0nst4-sky Mars Mavos Merrycity Mikachu Mint Mire_v2_blue Mire_v2_grey Mire_v2_lime Mire_v2_orange Mire_v2_pink Mist-Ashen Misted Murrina-Tangoesque Natura Neo Nop Nova-Blue Nova-Gold Nova-Lime Nova-Pink Nxpro OB-glossy Ob-in-dustry Oldred Onyx Onyx-Citrus Onyx-black Openbox-Human-Like Opensaw Operation Orang Orange-fog Palerider Peptide PixelElegance-1.1 Planton Rabbit Raffles Raleigh Real-milk Seven Simple Simple-Aubergine Simple-Generic Simple-Green Simple-Industrial Simple-Orange Simple-Red Simple-Slate Sodio Spiffe Spiffish Spoff Squadron SublimeWhite Surreal Syscrash Taqua Thebear TropicBomb Turq Wblue Weightless-industry Zenyellow) # all

declare -a themes=(Bloohax Clearlooks Clearlooks-3.4 Clearlooks-Olive Default Emacs M0nst4-sky Mavos Natura Operation Raleigh Simple-Generic Thebear) # preferred

# get the current theme
# sed -n '/^  <name>/'p $Obc/rc/rc.xml
tagged_ct=$(sed -n '/^  <name>/p' $Obc/rc.xml)
cttag=${tagged_ct#*>}
ct=${cttag%%<*} # current theme

# get the index of the current theme
for i in "${!themes[@]}"; do
   [[ "${themes[$i]}" = $ct ]] && break
done

len=${#themes[@]}
li=$((len-=1))
if [ $i != $li ]; then
    nt=${themes[$i+1]}
else
    nt=${themes[0]}
fi
echo $nt
sed -i "s/${themes[$i]}/$nt/" $Obc/rc.xml
openbox --reconfigure

