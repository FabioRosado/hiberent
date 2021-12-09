#!/usr/bin/bash

# TODO: Move these to their own files as it will be easier to update
CRYPTOCURRENCIES=(bitcoin ethereum binance tether solana cardano "usd coin" xrp terra polkadot dogecoin "shiba inu" avalanche "binance usd" "wrapped coin" litecoin uniswap alorand chainlink ChainLink "bitcoint cash" monacoin vertcoin zcash grin monero ravencoin dash digibyte litecoin aeon zcas digcoin carbon ether btc)

MINERS=("xmrig" "hellminer" "rangerx" "xlarig" "nheqminer" "mine-hybid" "xmr-stak" "xmr-stak-rx" "nicehash" "kryptex" "bemine" "shamining" "stratum" "miner" "digcoin-miner" "ixian-miner" "ixiwatt" "mining" "PhoenixMiner" EBWF "claymore" "optiminer" )

# TODO: try to get an updated list on each startup of the script

kill_process() {
    if pgrep $1; 
    then
        pgrep $1 | xargs kill -9
    else
        ps -aux | grep -i $1 | awk '{print $'2' }' | xargs kill -9
    fi
}

loop_over() {
    echo $1
    for item in $1; do
        echo item
        # kill_process $item
    done
}

updated_curl() {
    if [[ ! $* =~ "miner" ]]; then
        curl $*
    fi
}

updated_wget() {
    if [[ ! $* =~ "miner" ]]; then
        wget $*
    fi
}


main() {
    alias curl=updated_curl
    alias wget=updated_wget

    for crypto in ${CRYPTOCURRENCIES[@]}; do
        kill_process $crypto
    done

    for miner in ${MINERS[@]}; do
        kill_process $miner
    done
}

