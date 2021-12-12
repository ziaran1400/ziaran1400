// SPDX-License-Identifier: GPL-3.

  pragma solidity >=0.7.0 <0.9.0;

    contract Hello {

        string public helloStr;

        constructor() {

            helloStr = "Hassan shabani";
        }

        // memory : string-struct-array-mapping
        // access-modifire : public- private-internal-external
        // state mdifire :pure-view
        // kind store in solidity : memory- storage - call_data/stack
        //  

        function setHello(string memory newValue) public {

            // call : setHello ("Let's go Start for spiking English ");

            helloStr = newValue;
        }
            function getHello() public view returns (string memory ){ 
                // call: getHello();
                return helloStr;   
            }

            function getHello_v2() public pure returns (string memory ){ 
                // call: getHello();
                 string memory newStr = "new Value";
                 return newStr;   
            }
            function getHello_v3 () public returns (string memory ){ 
                // call: getHello();
                helloStr = "new Value";
                return helloStr;
              }

            function getHello_v4 () public view returns (string memory,string memory ){ 
                string memory newStr =  "new Value";
                return (helloStr,newStr);
        }
    }
