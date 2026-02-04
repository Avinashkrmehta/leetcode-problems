// 1108. Defanging an IP Address
#include <string>
using namespace std;



class Solution {
public:
    string defangIPaddr(string address) {
        string result;
        for(int i=0; i<address.size(); i++){
            if(address[i] != '.'){
                result += address[i];
            }
            else if(address[i] == '.'){
                result += "[.]";
            }
        }
        return result;
    }