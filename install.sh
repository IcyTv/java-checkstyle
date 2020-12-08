read -p "Enter your installation path [/usr/bin/checkstyle]" path
path=${path:-/usr/bin/checkstyle}
echo "Make sure you have python installed"
mkdir $path 2>/dev/null
rm $path/checkstyle 2>/dev/null
echo "#!/bin/bash">$path/checkstyle
echo python3 $path/checkstyle.py '$@' > $path/checkstyle
chmod +x $path/checkstyle
cp ./checkstyle.py $path/
echo "Please add $path to your PATH variable, by adding it to i.e. ~/.bashrc"