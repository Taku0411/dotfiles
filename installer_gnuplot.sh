export CC='gcc -I /usr/local/Cellar/xorgproto/2022.2/include'
export CXX="g++ -std=c++11 -I /usr/local/Cellar/xorgproto/2022.2/include"


export pre="/usr/local/Cellar/qt@5/5.15.8_3/include"

export QT_CFLAGS="-I $pre/QtSvg -I $pre/QtConcurrent -I $pre/QtConcurrent  -I $pre/QtDBus  -I $pre/QtNetwork  -I $pre/QtOpenGLExtensions  -I $pre/QtPrintSupport  -I $pre/QtTest  -I $pre/QtCore  -I $pre/QtGui   -I $pre/QtOpenGL  -I $pre/QtPlatformHeaders   -I $pre/QtSql  -I $pre/QtWidgets -I $pre/QtXml -I $pre "



../configure \
	--without-latex \
	PKG_CONFIG_PATH="/usr/local/Cellar/qt@5/5.15.8_3/lib/pkgconfig:/usr/local/Cellar/xorgproto/2022.2/share/pkgconfig" \
	--with-wx="/usr/local/Cellar/wxwidgets/3.2.2.1_1" \
	--prefix="$HOME/.local/" \
	--with-qt=qt5 \

