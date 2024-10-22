if [ "$1" = "" ]; then
	echo "provide a package name"
	exit 1
fi
curl -L https://gitlab.archlinux.org/archlinux/packaging/packages/$1/-/archive/main/$1-main.tar.gz | zcat | tar x
mv ./$1-main $1
