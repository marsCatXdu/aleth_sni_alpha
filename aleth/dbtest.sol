pragma solidity >=0.5.0 <0.9.0;

contract SimpleStorage {

    /*
    function callPrecompiled() public returns (string memory output) {
        bytes32 out;
        assembly {
            let memPtr := mload(0x20)
            mstore(memPtr, 0x20)
            let success := call(1000000, 9, 0, memPtr, 0x20, memPtr, 0x20)
            switch success
            case 0 {
                revert(0,0)
            } default {
                out := mload(memPtr)
            }
        }
        //output = bytes32ToStr(out);
    }
    */

    function assemblyHash() public returns (bytes32[1] memory h) {
        bytes32[2] memory inputs;
        inputs[0] = "1234567890abcdefghjklmnopqrstuvw";
        inputs[1] = "0x5678";
        bool success;
        assembly {
            /*
                gasLimit: calling with gas equal to not(0), as we have here, will send all available gas to the function being called. This removes the need to guess or upper-bound the amount of gas being sent yourself. As an alternative, we could have guessed the gas needed: with: sub(gas, 2000)
                to: the sha256 precompile is at address 0x2: Sending the amount of gas currently available to us, after subtracting 2000;
                value: 0 (no ether will be sent to the contract)
                inputOffset: I believe this is just the input data
                inputSize: hex input size = 0x40 = 2 x 32-bytes
                outputOffset: where will the output be stored (in variable h in our case)
                outputSize: sha256 outputs 256-bits = 32-bytes = 0x20 in hex
            */
            success := call(not(0), 2, 0, inputs, 0x40, h, 0x20)
            // Use "invalid" to make gas estimation work
            switch success case 0 { invalid() }
        }
    }

    function callDBInterfaceTest() public returns (bytes32[1] memory h) {
        bytes32[2] memory inputs;
        inputs[0] = "0x1234";
        inputs[1] = "0x5678";
        bool success;
        assembly {
            success := call(not(0), 9, 0, inputs, 0x40, h, 0x20)
            switch success case 0 { invalid() }
        }
    }


}
