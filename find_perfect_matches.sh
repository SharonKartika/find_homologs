#!/usr/bin/bash
blastn -query $1 -subject $2 -task blastn-short -outfmt 6 |
 awk '$3==100.0 {print $0}' >  $3
wc -l $3 | awk '{print $1}'
