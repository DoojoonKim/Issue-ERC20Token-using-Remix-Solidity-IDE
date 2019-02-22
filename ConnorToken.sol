pragma solidity ^0.5.2;

import "./ERC20(Connor).sol";
import "./ERC20Detailed(Connor).sol";
import "./ERC20Burnable(Connor).sol";



/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract ConnorToken is ERC20_Connor, ERC20Detailed_Connor, ERC20Burnable_Connor {
    uint8 public constant DECIMALS = 12;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(DECIMALS));
    // 10 곱하기 10성

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed_Connor("Playcoin with Connor", "Revolution", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
