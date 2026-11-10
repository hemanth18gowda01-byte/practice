//SPDX-License-Identifier
pragma solidity ^0.8.18;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract Price is AggregatorV3Interface{
    function getLatestPrice() public view returns(int256){
        AggregatorV3Interface getPriceOfUsdvEth = AggregatorV3Interface();
        (,int256,,,) = USDvETH;
        return USDvETH
    } 
}
