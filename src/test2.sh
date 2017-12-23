
#This test encodes the file into 6 parts, deletes 3 parts and shows decoding fails.


#1: Encode the file into k(4) + m(2) = 6 parts
./encode.sh Ubuntu.ogg 4 2


#2: Delete 3 parts so that the file is not recoverable
cd Coding
rm Ubuntu_k1.ogg
rm Ubuntu_k2.ogg
rm Ubuntu_m1.ogg
cd ..

#3: Try to decode the file
./decode.sh Ubuntu.ogg
