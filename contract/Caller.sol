pragma solidity ^0.4.11;
 
contract DataStore {
    function set(uint256 x) public;
    
    function get() public view returns (uint256);
}
 
contract Caller {
    function call() public {
        address addr = 0x086C38DAB9559eAcb88c12b8ff1256B2b59d6eD0;
        DataStore dataStore = DataStore(addr);
        dataStore.set(6);
    }
    function call1() public view returns (uint256) {
        address addr = 0x086C38DAB9559eAcb88c12b8ff1256B2b59d6eD0;
        DataStore dataStore = DataStore(addr);
        return dataStore.get();
    }
    
}
