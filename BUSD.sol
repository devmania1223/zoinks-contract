//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BUSD is ERC20, Ownable {

    /// @dev The total number of tokens in circulation
    uint256 private _totalSupply;

    /**
     * @notice Construct a new BUSD token
     */

    constructor() ERC20("BUSD", "BUSD") {}

    function mint(address _address, uint256 _amount) public onlyOwner {
        _mint(_address, _amount);
    }

}