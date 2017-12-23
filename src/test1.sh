
#This test encodes the file into 6 parts, deletes 2 parts and shows decoding still possible.


#1: Encode the file into k(4) + m(2) = 6 parts
./encode.sh Ubuntu.ogg 4 2


#2: Delete 2 parts so that the file is still recoverable
cd Coding
rm Ubuntu_k1.ogg
rm Ubuntu_m1.ogg
cd ..

#3: Decode the file
./decode.sh Ubuntu.ogg
