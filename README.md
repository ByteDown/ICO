# ICO
Testing crowd sale using OpenZeppelin, and Truffle.

## Run these commands to test out crowdsale funtionality

Create the account(address) for IGR token
account1 = web3.eth.accounts[1]

Assign result of IgorCoinCrowsale deploy to variable crowdsale
IgorCoinCrowdsale.deployed().then(inst => { crowdsale = inst })

Assign address for where you want to send tokens
crowdsale.token().then(addr => { tokenAddress = addr } )
> tokenAddress = <256bithash>

Create an instance to access data from address
igorCoinInstance = IgorCoin.at(tokenAddress)

Check token balance
igorCoinInstance.balanceOf(account1).then(balance => balance.toString(10))
> '0'

Buy IGR tokens
IgorCoinCrowdsale.deployed().then(inst => inst.sendTransaction({ from: account1, value: web3.toWei(20, "ether")}))

Check token balance again
igorCoinInstance.balanceOf(account1).then(balance => balance.toString(10))
> '20'
