
## Summary

Some basic AWS CloudShell things to keep in sync across instances.

## Usage

Add the following lines to your cloudshell's `.bashrc` file 

```
if [ ! -d cloudshell ]
then
    git clone https://github.com/geekprotem/cloudshell.git
fi
cd cloudshell
git pull
sh setup.sh
```
