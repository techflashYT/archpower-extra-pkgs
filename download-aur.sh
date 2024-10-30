if [ "$1" = "" ]; then
	echo "provide a package name"
	exit 1
fi
curl -L https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz | zcat | tar x
