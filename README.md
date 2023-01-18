# Project Title

Cryptographic keys generator

## Description

Subject of this project is a cryptographic keys generator with fixed number of ones. The generated keys are 128 - bit long. In order to generate keys at random I used LFSR with the polynomial w(x) = x^128 + x^126 + x^123 + x^122 + x^120 + x^118 + x^117 + x^116 + x^115 + x^114 + x^112 + x^110 + x^108 + x^106 + x^104 + x^103 + x^101 + x^100 + x^99 + x^98 + x^94 + x^93 + x^88 + x^83 + x^81 + x^79 + x^78 + x^77 + x^75 + x^74 + x^73 + x^72 + x^70 + x^68 + x^67 + x^65 + x^64 + x^63 + x^62 + x^60 + x^58 + x^57 + x^55 + x^54 + x^53 + x^50 + x^48 + x^47 + x^40 + x^39 + x^35 + x^34 + x^32 + x^31 + x^29 + x^28 + x^27 + x^25 + x^22 + x^20 + x^19 + x^18 + x^15 + x^12 + x^11 + x^9 + x^6 + x^5 + 1, which is primitve and so that the period of LFSR is 2^128 - 1.
