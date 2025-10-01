// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 public nextId;

    constructor() ERC721("WC Verified NFT", "WCVN") Ownable(msg.sender) {}

    function mint(address to) external onlyOwner returns (uint256) {
        unchecked { ++nextId; }
        _safeMint(to, nextId);
        return nextId;
    }
}
