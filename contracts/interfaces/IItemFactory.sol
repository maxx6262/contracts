// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

interface IItemFactory {
    // function rarityDecimal() external view returns (uint256);

    function totalSupply(uint256 boxType) external view returns (uint256);

    function addItem(
        uint256 boxType,
        uint256 itemType,
        uint256 itemId,
        uint256 rarity
    ) external;

    function artifactsLength(uint256 itemType_)
        external
        view
        returns (uint256);

    function artifactIdAt(uint256 itemType_, uint256 index_)
        external
        view
        returns (uint256);

    function getRandomArtifactValue(uint256 randomness_, uint256 artifactId_)
        external
        view
        returns (uint256);

    function getRandomItem(uint256 randomness, uint256 boxType)
        external
        view
        returns (uint256 itemId, uint256 itemType);

    event ItemAdded(
        uint256 indexed boxType,
        uint256 indexed itemType,
        uint256 indexed itemId,
        uint256 rarity
    );
}
