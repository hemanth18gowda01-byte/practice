<h1> Practice Solidity programming </h1>

## Practice of Oracles using Chainlink
  <h7> In chainlinkProgm1.sol we are getting price converter </h7>
      <p> Blockchain is Decentralized so we can't rely on one entity to give the data outside the blockchain because they may manipulate the smart contract logic so it this problem is called Oracle Problem. </p>
      <p> So now in this challenge we are using chainlink data which solves this oracle problem so we are using AggregatorV3Interface contract to give the data of prices so that we can use it here in this </p> 
      <p> contract to convert into other currencies. </p>
      <p> So using that AggregatorV3Interface contract in other contract we need two things: </p>
          1. ABI 
          2. Address of the contract 
      <p> We can get the address in chainlink datafeeds and what about ABI? </p>
      <p> In solidity there is a concept Interface </p>
