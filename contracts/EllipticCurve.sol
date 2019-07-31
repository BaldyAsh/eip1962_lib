pragma solidity ^0.5.1;
pragma experimental ABIEncoderV2;

import {GenericEllipticCurve} from "../contracts/GenericEllipticCurve.sol";
import {PrebuildCurves} from "../contracts/PrebuildCurves.sol";
import {CommonTypes} from "../contracts/CommonTypes.sol";

contract EllipticCurve {

    // Current curve parameters
    CommonTypes.CurveParams private curveParams;

    // Contract creator
    address creator;

    // Constructor input is curve params.
    // If _curveType is Custom then curveType will be setted to Undefined.
    constructor(CommonTypes.CurveParams memory _curveParams) public {
        curveParams = _curveParams;
        creator = msg.sender;
    }

    // Only the elliptic curve contract creator can change curve params.
    function changeCurveParams(CommonTypes.CurveParams memory _curveParams) public {
        if (msg.sender != creator) return;

        curveParams = _curveParams;
    }

    // Get curve params
    function getCurveParams() public view returns (CommonTypes.CurveParams memory) {
        return curveParams;
    }

    // Compies the G1 Add operation result.
    // Params:
    // - lhs - first point's X and Y coordinates in G1Point struct representation
    // - rhs - second point's X and Y coordinates in G1Point struct representation
    // Returns the newly created bytes memory.
    function g1Add(
        CommonTypes.G1Point memory lhs,
        CommonTypes.G1Point memory rhs
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formG1AddInput(curveParams, lhs, rhs);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

    // Compies the G1 Mul operation result.
    // Params:
    // - lhs - first point's X and Y coordinates in G1Point struct representation
    // - rhs - sсalar multiplication factor in bytes
    // Returns the newly created bytes memory.
    function g1Mul(
        CommonTypes.G1Point memory lhs,
        bytes memory rhs
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formG1MulInput(curveParams, lhs, rhs);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

    // Compies the G1 Multiexponentiation operation result.
    // Params:
    // - numPairs - number of (point, scalar) pairs for multiexponentiation
    // - point -  point's X and Y coordinates in G1Point struct representation
    // - scalar - sсalar order of exponentiation in bytes
    // Returns the newly created bytes memory.
    function g1MultiExp(
        uint8 numPairs,
        CommonTypes.G1Point memory point,
        bytes memory scalar
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formG1MultiExpInput(curveParams, numPairs, point, scalar);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

    // Compies the G2 Add operation result.
    // Params:
    // - lhs - first point's X and Y coordinates in G2Point struct representation
    // - rhs - second point's X and Y coordinates in G2Point struct representation
    // Returns the newly created bytes memory.
    function g2Add(
        CommonTypes.G2Point memory lhs,
        CommonTypes.G2Point memory rhs
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formG2AddInput(curveParams, lhs, rhs);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

    // Compies the G2 Mul operation result.
    // Params:
    // - lhs - first point's X and Y coordinates in G2Point struct representation
    // - rhs - sсalar multiplication factor in bytes
    // Returns the newly created bytes memory.
    function g2Mul(
        CommonTypes.G2Point memory lhs,
        bytes memory rhs
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formG2MulInput(curveParams, lhs, rhs);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

    // Compies the G2 Multiexponentiation operation result.
    // Params:
    // - numPairs - number of (point, scalar) pairs for multiexponentiation
    // - point -  point's X and Y coordinates in G2Point struct representation
    // - scalar - sсalar order of exponentiation in bytes
    // Returns the newly created bytes memory.
    function g2MultiExp(
        uint8 numPairs,
        CommonTypes.G2Point memory point,
        bytes memory scalar
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formG2MultiExpInput(curveParams, numPairs, point, scalar);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

    // Verifies the correctness of the pairing operation parameters.
    // Params:
    // - pairs -  point pairs array encoded as (G1 point, G2 point) in bytes
    // Returns:
    // If result of a pairing (element of Fp12) is equal to identity - return single byte 0x01, otherwise return 0x00 following the existing ABI for BN254 precompile.
    function pairing(
        CommonTypes.Pair[] memory pairs
    ) public view returns (bytes memory result) {
        (bytes memory input, uint outputLength) = GenericEllipticCurve.formPairingInput(curveParams, pairs);
        result = GenericEllipticCurve.callEip1962(
            1962,
            input,
            input.length,
            outputLength
        );
    }

}