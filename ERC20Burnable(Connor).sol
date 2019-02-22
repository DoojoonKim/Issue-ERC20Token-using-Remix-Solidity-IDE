pragma solidity ^0.5.2;

import "./ERC20(Connor).sol";

/**
 * @title ERC20Burnable(Connor) Token
 * @dev Token that can be irreversibly burned (destroyed).
 */
contract ERC20Burnable_Connor is ERC20_Connor {
    /**
     * @dev Burns a specific amount of tokens.
     * @param value The amount of token to be burned.
     */
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }

    /**
     * @dev Burns a specific amount of tokens from the target address and decrements allowance
     * @param from address The account whose tokens will be burned.
     * @param value uint256 The amount of token to be burned.
     */
    function burnFrom(address from, uint256 value) public {
        _burnFrom(from, value);
    }
}