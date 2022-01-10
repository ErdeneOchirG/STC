//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Token is ERC20Burnable, Ownable{
    TokenTimelock public teamTimelock;
    constructor() ERC20("STEP COIN", "STC") Ownable()  {
        // IEO
        _mint(0x071668852db862BF469C255351c60b69620c6AcF, 45000000000*10**18);

        // Founders and team
        teamTimelock = new TokenTimelock(this, 0x8EE1B797cd8710650308330737c236917BEc0948, block.timestamp + 3*365*24*60*60);
        _mint(address(teamTimelock), 28000000000*10**18);

        // Liquidity
        _mint(0xBD6947548D82Df946dcD5CCDC1E0796ee9b35B34, 15000000000*10**18);

        // Strategic partnership
        _mint(0xdf2dB270D983350aE6Ce10FC87daaC67884C4F42, 10000000000*10**18);

        // airdrops
        _mint(0xDFd7854BFA11471E2e985462c5bd23f92e7CfdFD, 2000000000*10**18);

    }
}
