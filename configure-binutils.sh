script_loc=`cd $(dirname $0) && pwd -P`

. $script_loc/common.sh

$BINUTILS_PATH/configure                        \
 --build=$BUILD                                 \
 --target=arm-eabi                              \
 --prefix=$PREFIX                               \
 --disable-nls                                  \
 --disable-werror                               \
 --enable-interwork

make -w -j2

make -w install

exit
