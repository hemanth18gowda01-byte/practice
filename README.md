<h1> Practice Solidity programming </h1>

## Practice of Oracles using Chainlink
  <h7> In chainlinkProgm1.sol we are getting price converter </h7>
      <p> Blockchain is Decentralized so we can't rely on one entity to give the data outside the blockchain because they may manipulate the smart contract logic so it this problem is called Oracle Problem. </p>
      <p> So now in this challenge we are using chainlink data which solves this oracle problem so we are using AggregatorV3Interface contract to give the data of prices so that we can use it here in this </p> 
      <p> contract to convert into other currencies. </p>
      <p> So using that AggregatorV3Interface contract in other contract we need two things: </p>
          <p> 1. ABI </p>
          <p> 2. Address of the contract </p>
      <p> We can get the address in chainlink datafeeds and what about ABI? </p>
      <p> In solidity there is a concept Interface </p>
      <p> We can actually use other contracts in our contracts with interfaces so all we need is address of the contract which is deployed.</p>
      <p> We do clone the chainlink repository as library , then we inherit the contract then we pass the address of contract we needed in that interface contract so we can access it </p>


  ## Advanced Solidity 
  <p>I have learned today about two special functions in solidity may be it is after 0.7 0r 0.8 version in it </p>
  <p> 1. receieve() </p>
  <p> 2. fallback() </p>
  <p> I will firstly brief out why this function has been developed and then we will move on to how these two special functions work?</p>
  <body><p>These functions are mainly used in payable contracts</p>
        <p>What if anyone calls a function with wrong calldata and sends ETH or what if anyone just send ETH without calling function </p>
        <p> for the first problem we have fallback() and for second problem we have receieve()</p>
        <body>                     [ Incoming Transaction ]
                                |
                                v
                   Is Calldata Empty? (data == "")
                   /                             \
                YES                                NO
                /                                   \
               v                                     v
       Does receive() exist?              Does any function match calldata?
       /                 \                /                               \
     YES                  NO            YES                                NO
     /                     \            /                                   \
    v                       v          v                                     v
Execute                  Is fallback()   Execute Matched      Does fallback() exist?
receive()                payable exist?     Function          /                   \
                            /       \                       YES                    NO
                          YES        NO                     /                       \
                          /           \                    v                         v
                         v             v               Execute                   Revert / Fail
                     Execute          Revert / Fail    fallback()
                     fallback()</body></body>
