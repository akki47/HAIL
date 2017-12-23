
This test encodes the file into 6 parts, verifies CPOR on 1 part successfully. Then edit 1 file which is akin to corrupting the file and then verify CPOR again, it will fail.
#1: Encode the file into k(4) + m(2) = 6 parts
./encode.sh Ubuntu.ogg 4 2


#2: Apply CPOR challenge-response protocol
./cpor-gen-challenge ./Coding/Ubuntu_k2.ogg;
./cpor-calc-response ./Coding/Ubuntu_k2.ogg;
./cpor-verify-response ./Coding/Ubuntu_k2.ogg;

echo "Edit the File"
#3: Edit the file 
sed 's/a/b/' ./Coding/Ubuntu_k2.ogg > ./Coding/Ubuntu_k2_tmp.ogg;	
cp ./Coding/Ubuntu_k2_tmp.ogg ./Coding/Ubuntu_k2.ogg;	
rm ./Coding/Ubuntu_k2_tmp.ogg

#4: Run the CPOR challenge-response protocol again
./cpor-gen-challenge ./Coding/Ubuntu_k2.ogg;
./cpor-calc-response ./Coding/Ubuntu_k2.ogg;
./cpor-verify-response ./Coding/Ubuntu_k2.ogg;

