#!/bin/bash

# Joseph Harriott, Tue 29 Nov 2022

# list lost+found folder contents

hds=(
    /mnt/SD480GSSDPlus
    /mnt/WD1001FALS
    /mnt/ST4000VN008
    /mnt/SDU3D1TB
    )
for hd in "${hds[@]}"; do
    echo $hd
    exa -aF $hd/lost+found
done

