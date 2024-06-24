pragma solidity ^0.8.0;

import "./IGalacticRouter.sol";
import "./GalacticNode.sol";

contract GalacticRouter {
    mapping (address => GalacticNode) public nodes;
    mapping (address => uint) public nodeIndices;

    function addNode(address nodeAddress, uint nodeType) public {
        GalacticNode node = GalacticNode(nodeAddress);
        nodes[nodeAddress] = node;
        nodeIndices[nodeAddress] = nodeIndices.length;
    }

    function removeNode(address nodeAddress) public {
        delete nodes[nodeAddress];
        delete nodeIndices[nodeAddress];
    }

    function getNode(address nodeAddress) public view returns (GalacticNode) {
        return nodes[nodeAddress];
    }
}
