

# bash $Obc/rc/rc_xml-mb_make.sh
# - preparing for  $OSAB/nodes/set/jo-1-Openbox.sh:

mb_orx="$machBld/jo/openbox/rc.xml"
cp $Obc/rc/rc-mb-header.xml $mb_orx
sed '0,/JH/d' $Obc/rc/rc-generic.xml >> $mb_orx
sed -i "s/ \$urxvtGeometry/ $urxvtGeometry/" $mb_orx
sed -i "s/ \$Nvdg/ $Nvdg/" $mb_orx

