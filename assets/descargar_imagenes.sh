#!/usr/bin/env bash
# Descarga las imágenes de internet que usa la página a esta carpeta (assets/).
# Después, en el HTML cambia cada src="https://image.tmdb.org/..." por "assets/<nombre>.jpg"
# (cada <img> tiene un comentario arriba con el nombre exacto).
cd "$(dirname "$0")"
T="https://image.tmdb.org/t/p"
dl() { echo "-> $1"; curl -fsSL -o "$1" "$2" || echo "   ERROR descargando $1"; }
dl cast_mark_fischbach.jpg  "$T/w500/2y59nq7vipTBdRMmMTsy1d4HeiG.jpg"
dl cast_caroline_kaplan.jpg "$T/w500/oMOswhHN3LfRtziULWTxNiYgAFj.jpg"
dl cast_troy_baker.jpg      "$T/w500/mppX8pDkwNvx3dJzclwcGkngEb3.jpg"
dl cast_david_szymanski.jpg "$T/w500/ne0QhzdjuQwItbKFsL6icp7mleD.jpg"
dl still_01.jpg "$T/w1280/3Q0qYD1oz9rO4ppJ8bYfkwX3nVm.jpg"
dl still_02.jpg "$T/w1280/fWl8yBkVdlFL4RPqOtc9c96yLoO.jpg"
dl still_03.jpg "$T/w1280/7MJKRRZn7cJJ1xt8wBQKlyNbDHA.jpg"
dl still_04.jpg "$T/w1280/4rmjTqfa7lzDy5pg3rj2GTPpne9.jpg"
dl still_05.jpg "$T/w1280/rH4rT12Pf4ELbogqG9soEaeys0U.jpg"
dl still_06.jpg "$T/w1280/h1iMimR9uG8dGezlO7dRtFPXWX5.jpg"
echo "Listo."
