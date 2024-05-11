

# bash $Obc/rc/rc_xml-mb_make.sh

# make
mb_orx="$machBld/jo/openbox/rc.xml"
# - for  $OSAB/bs-symlinks/jo-1-Openbox.sh:
cp $Obc/rc/rc-mb-header.xml $mb_orx
sed '0,/JH/d' $Obc/rc/rc-generic.xml >> $mb_orx
sed -i "s/ \$urxvtGeometry/ $urxvtGeometry/" $mb_orx
sed -i "s/ \$Awd/ $Awd/" $mb_orx
sed -i "s/ \$Awp/ $Awp/" $mb_orx

