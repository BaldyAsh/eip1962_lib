pragma solidity ^0.5.1;
pragma experimental ABIEncoderV2;

import {CommonTypes} from "../contracts/CommonTypes.sol";

library PrebuildCurves {

    function bls12_384_m() public pure returns (CommonTypes.CurveParams memory params) {
        params = CommonTypes.CurveParams({
            curveType: 0x01,
            fieldLength: 0x31,
            baseFieldModulus: hex"026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045d",
            extensionDegree: 0x02,
            a: hex"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
            b: hex"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
            groupOrderLength: 0x21,
            groupOrder: hex"03c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a529",
            fpNonResidue: hex"026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b",
            mainSubgroupOrder: hex"03c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a529",
            fp2NonResidue: hex"026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b",
            fp6NonResidue: hex"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
            twistType: 0x01,
            xLength: 0x09,
            x: hex"016463d0693ad8bbad",
            sign: 0x00
        });
    }

    function bls12_384_d() public pure returns (CommonTypes.CurveParams memory params) {
        params = CommonTypes.CurveParams({
            curveType: 0x01,
            fieldLength: 0x31,
            baseFieldModulus: hex"026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045d",
            extensionDegree: 0x02,
            a: hex"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
            b: hex"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
            groupOrderLength: 0x21,
            groupOrder: hex"03c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a529",
            fpNonResidue: hex"026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b",
            mainSubgroupOrder: hex"03c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a529",
            fp2NonResidue: hex"026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b",
            fp6NonResidue: hex"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
            twistType: 0x02,
            xLength: 0x09,
            x: hex"016463d0693ad8bbad",
            sign: 0x00
        });
    }

    function bls12_381_m() public pure returns (CommonTypes.CurveParams memory params) {
        params = CommonTypes.CurveParams({
            curveType: 0x01,
            fieldLength: 0x30,
            baseFieldModulus: hex"1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab",
            extensionDegree: 0x02,
            a: hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
            b: hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004",
            groupOrderLength: 0x20,
            groupOrder: hex"73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001",
            fpNonResidue: hex"1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaaa",
            mainSubgroupOrder: hex"73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001",
            fp2NonResidue: hex"1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaaa",
            fp6NonResidue: hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
            twistType: 0x01,
            xLength: 0x08,
            x: hex"d201000000010000",
            sign: 0x01
        });
    }

    function bls12_381_d() public pure returns (CommonTypes.CurveParams memory params) {
        params = CommonTypes.CurveParams({
            curveType: 0x01,
            fieldLength: 0x30,
            baseFieldModulus: hex"1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab",
            extensionDegree: 0x02,
            a: hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
            b: hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004",
            groupOrderLength: 0x20,
            groupOrder: hex"73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001",
            fpNonResidue: hex"1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaaa",
            mainSubgroupOrder: hex"73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001",
            fp2NonResidue: hex"1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaaa",
            fp6NonResidue: hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
            twistType: 0x02,
            xLength: 0x08,
            x: hex"d201000000010000",
            sign: 0x01
        });
    }
}