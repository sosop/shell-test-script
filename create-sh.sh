#!/bin/bash

NOW=`date +%Y%m%d%H%M`

FILE_NAME=$NOW'-'$1".sh"

touch $FILE_NAME

chmod u+x $FILE_NAME

echo "#!/bin/bash" >> $FILE_NAME
