
#This test encodes the file into 6 parts, verifies CPOR on two parts.

#1: Encode the file into k(4) + m(2) = 6 parts
./encode.sh Ubuntu.ogg 4 2


#2: Apply CPOR challenge-response protocol to 2 servers
./cpor-gen-challenge ./Coding/Ubuntu_k1.ogg;
./cpor-calc-response ./Coding/Ubuntu_k1.ogg;
./cpor-verify-response ./Coding/Ubuntu_k1.ogg;

./cpor-gen-challenge ./Coding/Ubuntu_m1.ogg;
./cpor-calc-response ./Coding/Ubuntu_m1.ogg;
./cpor-verify-response ./Coding/Ubuntu_m1.ogg;

