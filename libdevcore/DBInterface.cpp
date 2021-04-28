#include <iostream>
#include <vector>
#include "Log.h"
#include "DBInterface.h"

namespace dev {

bytes DBTest(bytesConstRef _input) {
    // std::vector<unsigned char> a;

    clog(VerbosityDebug, "SNI:Solidity_Native_interface") << "SNI ACTIVED. DBTestInterface.";

    // return a;
    return bytes(_input.data(), _input.data()+_input.size());
}

}
