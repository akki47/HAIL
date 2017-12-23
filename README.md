# HAIL
This is a simplified implementation of HAIL: A High-Availability and Integrity Layer for Cloud Storage [https://dl.acm.org/citation.cfm?id=1653686]

This work is based on the https://github.com/foodotbar/Compact-Proofs-of-Retrievability implementation of C-POR and uses the jerasure library for erasure coding.


Installation steps:

Install the jerasure application and library.
1. Go to libs/gf-complete.
2. ./configure
3. make
4. sudo make install

5. Go to libs/jerasure.
6. ./configure
7. make
8. sudo make install
Refer to libs/jerasure/README for detailed installation instructions for jerasure.

Install openssl library.
9. sudo apt-get install openssl

10. Go to src/
11. make all

You can verify the installation using test1.sh, test2.sh, test3.sh, test4.sh, and use encode.sh and decode.sh for encoding and decoding.
