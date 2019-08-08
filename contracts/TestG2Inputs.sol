pragma solidity ^0.5.10;
pragma experimental ABIEncoderV2;

import {GenericEllipticCurve} from "../contracts/GenericEllipticCurve.sol";
import {CommonTypes} from "../contracts/CommonTypes.sol";
import {HelpersForTests} from "../contracts/HelpersForTests.sol";
import {PrebuildCurves} from "../contracts/PrebuildCurves.sol";
import {LengthsVerifier} from "../contracts/LengthsVerifier.sol";

contract TestG2Inputs {

    CommonTypes.CurveParams bls12_384_m_params;

    constructor() public {
        bls12_384_m_params = PrebuildCurves.bls12_384_m();
    }

    function testAddG2InputLengthsBLS12_384_M() public view returns (bool) {
        bytes memory p1 = hex"0101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc170113";
        bytes memory p2 = hex"b496c3cbe37013741bd46bd014a14dac81f313a8223a8bc7c5e636ad4d5f8b53161f3518a47c220ed0bfe5139a95777c6d380a370d13539073153fc964680e0eaba50a5e4ecb4740c2af8c9cead6cefd12c4979577acc1542323477f98f02d74449321aaad1880956b33d3f9c1b4937e1105ae93c3bed0bd4cfd7340bba02801331245f90a64083cf57a2fc91293d0d172dc549af6c38cfb4df6e5ead8a9b129b51bc73fe32fea6a4947697e4e40c9827700dc5d8604b16885d8681fe0e0b0f90cf81aca";
        LengthsVerifier.verifyCorrectG2AddDataLengths(bls12_384_m_params, p1, p2);
        return true;
    }

    function testMulG2InputLengthsBLS12_384_M() public view returns (bool) {
        bytes memory p = hex"0101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc170113";
        bytes memory mul = hex"01d82faa3935ba82cc72fca999eaa64a3e13f4b70e08eae12074e1841ea7e78c19";
        LengthsVerifier.verifyCorrectG2MulDataLengths(bls12_384_m_params, p, mul);
        return true;
    }

    function testMultiExpG2InputLengthsBLS12_384_M() public view returns (bool) {
        uint8 numPairs = 3;
        bytes memory pairs = hex"0101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc17011301d82faa3935ba82cc72fca999eaa64a3e13f4b70e08eae12074e1841ea7e78c190101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc17011301d82faa3935ba82cc72fca999eaa64a3e13f4b70e08eae12074e1841ea7e78c190101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc17011301d82faa3935ba82cc72fca999eaa64a3e13f4b70e08eae12074e1841ea7e78c19";
        LengthsVerifier.verifyCorrectG2MultiExpDataLengths(bls12_384_m_params, numPairs, pairs);
        return true;
    }

    function testFormAddG2InputBLS12_384_M() public view returns (bool) {
        bytes memory correctInput = hex"0431026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045d02026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012103c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a5290101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc170113b496c3cbe37013741bd46bd014a14dac81f313a8223a8bc7c5e636ad4d5f8b53161f3518a47c220ed0bfe5139a95777c6d380a370d13539073153fc964680e0eaba50a5e4ecb4740c2af8c9cead6cefd12c4979577acc1542323477f98f02d74449321aaad1880956b33d3f9c1b4937e1105ae93c3bed0bd4cfd7340bba02801331245f90a64083cf57a2fc91293d0d172dc549af6c38cfb4df6e5ead8a9b129b51bc73fe32fea6a4947697e4e40c9827700dc5d8604b16885d8681fe0e0b0f90cf81aca";
        bytes memory p1 = hex"0101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc170113";
        bytes memory p2 = hex"b496c3cbe37013741bd46bd014a14dac81f313a8223a8bc7c5e636ad4d5f8b53161f3518a47c220ed0bfe5139a95777c6d380a370d13539073153fc964680e0eaba50a5e4ecb4740c2af8c9cead6cefd12c4979577acc1542323477f98f02d74449321aaad1880956b33d3f9c1b4937e1105ae93c3bed0bd4cfd7340bba02801331245f90a64083cf57a2fc91293d0d172dc549af6c38cfb4df6e5ead8a9b129b51bc73fe32fea6a4947697e4e40c9827700dc5d8604b16885d8681fe0e0b0f90cf81aca";
        (bytes memory input, uint256 _) = GenericEllipticCurve.formG2AddInput(bls12_384_m_params, p1, p2);
        return HelpersForTests.equal(input, correctInput);
    }

    function testFormMulG2InputBLS12_384_M() public view returns (bool) {
        bytes memory correctInput = hex"0531026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045d02026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012103c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a5290101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc17011301d82faa3935ba82cc72fca999eaa64a3e13f4b70e08eae12074e1841ea7e78c19";
        bytes memory p = hex"0101ffde193f98185f975ffb1372580fd7a93194e7a50a5cf7852f292455e0a34451c82bd7901a3de0c2a3479e716cbbdc00ac30a79956814c1a0e970fb255184f367d122abb6f3f9627ac2c2c97a68379d16883dfaf2549e3a3dce33f3bea1247df01460c7673ee5b7a2db0e9452d1b7fbb502e3f999f1b1dcd31e7062346408863c7f973b94e34c8b55c32bf5e829c664688005aa657b27ade7a8f4b1cabea24ce403f3ce23f7274e2569c90bcb97a4c04434c78438560cec76719bde389aedc170113";
        bytes memory mul = hex"01d82faa3935ba82cc72fca999eaa64a3e13f4b70e08eae12074e1841ea7e78c19";
        (bytes memory input, uint256 _) = GenericEllipticCurve.formG2MulInput(bls12_384_m_params, p, mul);
        return HelpersForTests.equal(input, correctInput);
    }

    function testFormMultiExpG2InputBLS12_384_M() public view returns (bool) {
        bytes memory correctInput = hex"0631026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045d02026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012103c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a5290300b1d9d7d4e19966f41ed390530d41eebaaa1c707c3fb44303ae58df3c9e9c0589b4692a397ecdc90103df90ba78fb4a1c01af3190c07b6494b12dba8aae83c6f5a61251f82bdddcf4a00d0e8277cab9a7febdbbdb3f961ba3a2b38b9ad7a6a3cf4901a377718a6300d8dfa68b483f26b2d31c2501427bf56373224e9a7e9d15cabfc900b1d9d7d4e19966f41ed390530d41eebaaa1c707c3fb44303ae58df3c9e9c0589b4692a397ecdc90103df90ba78fb4a1c01af3190c07b6494b12dba8aae83c6f5a61251f82bdddcf4a00d0e8277cab9a7febdbbdb3f961ba3a2b38b9ad7a6a3cf4901a377718a6300d8dfa68b483f26b2d31c2501427bf56373224e9a7e9d15cabfc900b1d9d7d4e19966f41ed390530d41eebaaa1c707c3fb44303ae58df3c9e9c0589b4692a397ecdc90103df90ba78fb4a1c01af3190c07b6494b12dba8aae83c6f5a61251f82bdddcf4a00d0e8277cab9a7febdbbdb3f961ba3a2b38b9ad7a6a3cf4901a377718a6300d8dfa68b483f26b2d31c2501427bf56373224e9a7e9d15cabfc9";
        uint8 numPairs = 3;
        bytes memory pairs = hex"00b1d9d7d4e19966f41ed390530d41eebaaa1c707c3fb44303ae58df3c9e9c0589b4692a397ecdc90103df90ba78fb4a1c01af3190c07b6494b12dba8aae83c6f5a61251f82bdddcf4a00d0e8277cab9a7febdbbdb3f961ba3a2b38b9ad7a6a3cf4901a377718a6300d8dfa68b483f26b2d31c2501427bf56373224e9a7e9d15cabfc900b1d9d7d4e19966f41ed390530d41eebaaa1c707c3fb44303ae58df3c9e9c0589b4692a397ecdc90103df90ba78fb4a1c01af3190c07b6494b12dba8aae83c6f5a61251f82bdddcf4a00d0e8277cab9a7febdbbdb3f961ba3a2b38b9ad7a6a3cf4901a377718a6300d8dfa68b483f26b2d31c2501427bf56373224e9a7e9d15cabfc900b1d9d7d4e19966f41ed390530d41eebaaa1c707c3fb44303ae58df3c9e9c0589b4692a397ecdc90103df90ba78fb4a1c01af3190c07b6494b12dba8aae83c6f5a61251f82bdddcf4a00d0e8277cab9a7febdbbdb3f961ba3a2b38b9ad7a6a3cf4901a377718a6300d8dfa68b483f26b2d31c2501427bf56373224e9a7e9d15cabfc9";
        (bytes memory input, uint256 _) = GenericEllipticCurve.formG2MultiExpInput(bls12_384_m_params, numPairs, pairs);
        return HelpersForTests.equal(input, correctInput);
    }
}