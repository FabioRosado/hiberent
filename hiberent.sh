shopt -s nocasematch

MINERS=$(<~/scripts/miner-tools.txt)
CRYPTOCURRENCIES=$(<~/scripts/cryptocurrencies.txt)

if [[ ! $MINERS ]]; then
    MINERS=("xmrig" "hellminer" "rangerx" "xlarig" "nheqminer" "mine-hybid" "xmr-stak" "xmr-stak-rx" "nicehash" "kryptex" "bemine" "shamining" "stratum" "miner" "digcoin-miner" "ixian-miner" "ixiwatt" "mining" "PhoenixMiner" EBWF "claymore" "optiminer" )
fi

if [[ ! $CRYPTOCURRENCIES ]]; then
    CRYPTOCURRENCIES=(bitcoin ethereum binance tether solana cardano "usd coin" xrp terra polkadot dogecoin "shiba inu" avalanche "binance usd" "wrapped coin" litecoin uniswap alorand chainlink ChainLink "bitcoint cash" monacoin vertcoin zcash grin monero ravencoin dash digibyte litecoin aeon zcas digcoin carbon btc)
fi


kill_process() {
    pgrep $1
    if [ $? == 0 ];
    then
        pgrep $1 | xargs kill -9
    fi
}

main () {
    # This should be set, but let's set it on every iteration anyway?
    alias curl=~/scripts/curl
    alias wget=~/scripts/wget
    alias git=~/scripts/git
    alias tar=~/scripts/tar

    for crypto in ${CRYPTOCURRENCIES[@]}; do
        kill_process $crypto
    done

    for miner in ${MINERS[@]}; do
        kill_process $miner
    done
}

while true 
do
    main
    sleep 30
done
