//SPDX LICENSE IDENTIFIER: MIT
pragma solidity ^0.8.30;

contract Storage {
    struct Store {
        string name;
        uint age;
    }

    Store[] public store;

    mapping(uint => string) public name;

    function add(string memory _name, uint _age) {
        store.push(Store(_name, _age));
    }

    function get(uint _index) public view returns (string memory, uint) {
        return (store[_index].name, store[_index].age);
    }

    function update(uint _index, string memory _name, uint _age) public {
        store[_index] = Store(_name, _age);
    }

    function remove(uint _index) public {
        store[_index] = store[store.length - 1];
        store.pop();
    }

    function length() public view retur// Random commit comment 1 - nwDoTkGRMd
// Random commit comment 2 - SlIejCWLvP
// Random commit comment 3 - LCARuYplhK
// Random commit comment 4 - VdnZsRwNxl
// Random commit comment 5 - RchpxXZfuy
// Random commit comment 6 - TaDiRcIBGb
// Random commit comment 7 - bmZEcGksNa
// Random commit comment 8 - XKzDebWsOY
// Random commit comment 9 - PxXCGJWicA
// Random commit comment 10 - ZDxbAYnFQK
// Random commit comment 11 - yJrKVNOMfS
// Random commit comment 12 - WkGxLasboI
// Random commit comment 13 - yqcFSrMfgu
// Random commit comment 14 - cROUCznHbh
// Random commit comment 15 - WSXBFjursi
// Random commit comment 16 - dNJLwCUYHh
// Random commit comment 17 - dSwJVxtejL
// Random commit comment 18 - bSeGRBpzQF
// Random commit comment 19 - UjFuTZEDiV
// Random commit comment 20 - xPUzaOkdMs
// Random commit comment 21 - XqmRfcQwlz
// Random commit comment 22 - ZEaeVrMlmf
// Random commit comment 23 - NqXPumsBKY
// Random commit comment 24 - QirotMDOGZ
// Random commit comment 25 - yrfmMXCbOF
// Random commit comment 26 - loMbRjNTxE
// Random commit comment 27 - otEleijHPW
// Random commit comment 28 - CQnzMwRivq
// Random commit comment 29 - FhUrspSMLD
// Random commit comment 30 - cpNGgubAhC
// Random commit comment 31 - dFNKeptkSx
// Random commit comment 32 - yWfPNkOjnJ
// Random commit comment 33 - jrHBTawFGA
// Random commit comment 34 - KvldhcquMn
// Random commit comment 35 - NbcRxOLrVE
// Random commit comment 36 - VZLWONzwFb
// Random commit comment 37 - qWiEyjAKpz
// Random commit comment 38 - mOHauzDlfT
// Random commit comment 39 - SBhxQKdDoG
// Random commit comment 40 - UmKpFPkjqG
// Random commit comment 41 - ScvkGRhCqu
// Random commit comment 42 - CPmxIBYSks
// Random commit comment 43 - uwGDjWKEnN
// Random commit comment 44 - RbcGDneFPy
// Random commit comment 45 - iJNUKmCbPG
// Random commit comment 46 - oFAwyMhnNd
// Random commit comment 47 - gtxSfJvwLz
// Random commit comment 48 - BPIemCiQGE
// Random commit comment 49 - WJSheCqlUm
// Random commit comment 50 - enbzZCmOdk
// Random commit comment 51 - CisMbPOYoF
// Random commit comment 52 - qZRQGBbFJj
// Random commit comment 53 - SsfnODzpNH
// Random commit comment 54 - dsTReADXIx
// Random commit comment 55 - kKbugRWQCx
// Random commit comment 56 - zDLAUcSClj
// Random commit comment 57 - DygBJwHRYV
// Random commit comment 58 - wtOWxzFcoI
// Random commit comment 59 - CcBJlmLViS
// Random commit comment 60 - xIchimYUuv
// Random commit comment 61 - xawkupnZoP
// Random commit comment 62 - wJpXbiCrDo
// Random commit comment 63 - FkINXhMYtR
// Random commit comment 64 - mvrkIJEbQc
// Random commit comment 65 - ZTpkeJYhNA
// Random commit comment 66 - oKPaxhiDkb
// Random commit comment 67 - BuIXHShdoU
// Random commit comment 68 - njgVhOkGER
// Random commit comment 69 - VEtJxyTeCs
// Random commit comment 70 - CYtodlPvub
// Random commit comment 71 - lcRBgKbGjk
// Random commit comment 72 - PrDYEALsNm
// Random commit comment 73 - MeUPZkDxJY
// Random commit comment 74 - HjmTvgduBp
// Random commit comment 75 - HEQkgLpKTw
// Random commit comment 76 - CoykGLSVdh
// Random commit comment 77 - bCaALftreS
// Random commit comment 78 - dfutRmSGwe
// Random commit comment 79 - ByifEKZGVw
// Random commit comment 80 - bVZkjJqwFp
// Random commit comment 81 - clgyvCFxDE
// Random commit comment 82 - tALlxubXeY
// Random commit comment 83 - koILziNjMX
// Random commit comment 84 - SOyEvLPJib
// Random commit comment 85 - uiWLzQnxmb
// Random commit comment 86 - LYcnvWKbJB
// Random commit comment 87 - YzGegkaHQZ
// Random commit comment 88 - pzwnLlEteQ
// Random commit comment 89 - jhYsUCKqLO
// Random commit comment 90 - gRrAUwGCoM
// Random commit comment 91 - fAptxjwrUO
// Random commit comment 92 - MHhzCGPgWe
// Random commit comment 93 - shcWYaLfFt
// Random commit comment 94 - tNwmXShTaH
// Random commit comment 95 - GDmBwOUkeg
// Random commit comment 96 - DhZNnioymY
// Random commit comment 97 - mGdriUDNZQ
// Random commit comment 98 - DQnbXdITiE
// Random commit comment 99 - rdsvBYnDLc
// Random commit comment 100 - AcebMFamPd
// Random commit comment 101 - zHQsRISMYE
// Random commit comment 102 - ysqFKeiDQg
// Random commit comment 103 - CpKOeAgsjf
// Random commit comment 104 - eVIsnKNkbC
// Random commit comment 105 - gBmeRAshpJ
// Random commit comment 106 - RSJNoUTzVM
// Random commit comment 107 - DRfrtpHNVO
// Random commit comment 108 - svgXIbQlpB
// Random commit comment 109 - rpHSUfLduT
// Random commit comment 110 - QiNsTFVtPu
