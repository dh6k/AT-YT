# kakathic

sudo rm -rf /usr/share/dotnet
sudo rm -rf /opt/ghc
sudo rm -rf /usr/local/share/boost

HOME="$GITHUB_WORKSPACE"
sudo apt install zipalign bash 2>/dev/null >/dev/null
cd $HOME

# Tạo thư mục
mkdir -p apk lib tmp jar Tav Up
User="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"

# Tính năng 
for kskn in $FEATURE; do
echo "-e $kskn" >> feature
done
[ -e feature ] && feature="$(cat feature)"

# khu vực fusion 
Taive () { curl -s -L -N -H "$User" --connect-timeout 20 "$1" -o "$2"; }
Xem () { curl -s -G -L -N -H "$User" --connect-timeout 20 "$1"; }
XHex(){ xxd -p "$@" | tr -d "\n" | tr -d ' '; }
ZHex(){ xxd -r -p "$@"; }
apksign () { java -jar $Likk/.github/Tools/apksigner.jar sign --cert "$HOME/.github/Tools/testkey.x509.pem" --key "$HOME/.github/Tools/testkey.pk8" --out "$2" "$1"; }
Upenv(){ echo "$1=$2" >> $GITHUB_ENV; }
checkfile(){ [ -e "$1" ] && echo "  Ok ${1##*/}" || ( echo "- Lỗi không không thấy file ${1##*/}"; exit 1 ); }
checkzip(){ [ "$(file $1 | grep -cm1 'Zip')" == 1 ] && echo "  Zip ok ${1##*/}" || ( echo "- Lỗi zip ${1##*/}"; exit 1; ); }
Loading(){
while true; do
if [ -e "$1" ] && [ -e "$2" ];then
echo "  Xác nhận file ok"
break
else
sleep 1
gfdgv=$(($gfdgv + 1))
[ "$gfdgv" == 200 ] && ( echo "- Quá thời gian cho phép..."; exit 1; )
fi
done; }
echo

