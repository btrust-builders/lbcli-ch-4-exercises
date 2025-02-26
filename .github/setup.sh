wget https://bitcoincore.org/bin/bitcoin-core-28.0/bitcoin-28.0-x86_64-linux-gnu.tar.gz
tar -xzvf bitcoin-28.0-x86_64-linux-gnu.tar.gz
ln -s $PWD/bitcoin-28.0/bin/* /usr/local/bin/
mkdir -p ~/.bitcoin

cat <<EOF > ~/.bitcoin/bitcoin.conf
[regtest]
regtest=1
rpcuser=user
rpcpassword=password
rpcport=18332
EOF

echo $(bitcoin-cli --version)
