pragma solidity ^0.4.4;

contract TransferAddresses2 {

address[] users;

function TransferAddresses2(){}

function transfer() { 
	address contractAddress=0xc67Fa35b7Ab91eA5432DA9F012Cdcd1d9729631C;
	Lottereum lte = Lottereum(contractAddress);
	users=[0xf026D4ed03bF0B56D85Ae640Cfa3630758056316,
0x57e93EACD7983013e96eb616bd9F3386Ad855Aed,
0xe39cC1eb9120227c8ce36eC1185ABBa92E5A9515,
0x150ACdCFb73ABfee79Eaa1eE9957e7dDeB16977e,
0x354a5bdE48400ef3C551a2f797269b488Bd24C5A,
0x17158cFa7FBEC1d1671776020Dc5BB4DeC68E689,
0x3900A47AEB493CD145Bc4d9EE77987DE4f166A1C,
0x88767699a3df56e3498a5c661d306a00d98cc3e7,
0x1BbD583cAC9666fe11F0352217871F09aFce450c,
0x27694a28fcac641fc37d24ba52ebfe97021b174c,
0xe5f179ad06dea37e43f29af38b6304fc7b8e7273,
0x71533f49bd81d6d39af80b3a0b94ae3251cd5182,
0x7c81a08d4451046f89d4d91fca1b1ad968698f46,
0xB3AbB7aF6b978B7f840E9cF0aA6F662D87B352b7,
0x8904B42AA9C14f8a9065D9098B5d0B3bC9FaAcDA,
0x9D732682bA17b229Ec750593dF06BC7678d87657,
0xC10baB2A41F3Fe5A8Ed34682992258209f8BB008,
0xBc624D9866EfCE4a4A6b88Ae8D7486a28f6294B6,
0xC6F915eDAf2656742D8E692FB45E88734B3dbbbb,
0x7ccA27d5003E1219bcb215cFe728C6ECC8eE4C4E,
0x66141ec4f85a2489e3d8a5232d8ba061983c03ce,
0x5F814B66321d339e231A44DFF2e94d86BC94cD66,
0x84913fb5E6F213F46e75F8AA9a3bA6922ACC1e9c,
0xe84cb28ace3ceb9bd20690967c67eed15eacb502,
0x388E239DAAB775BE5522552fB04295c6BA8214af,
0x040c0c43891bf83b6d7836004ee38d5b436e71d4,
0x009637674175DAb95E78f0942f7cb2Cf709966c5,
0xad7944e6BAA2fFcfBE96329F07B3beF456d18287,
0x5f3f6Dc5189a6Ad30281775B745FBe71158800AF,
0x56B63533b5CB700876e8F15838E514BF995d7424,
0xdf3fff1b9c9e8fcf6a37e84c9218490689236f65,
0x4b82E11DCc9D9216a11ab0fb5aBb088D26afB87F,
0xB02B8AC6eB0fB56561a177C9a8edEEA22B8924fe,
0xEa9c21c3aEffA36a6e5A6Bff7420ba2fDb0e7Bd7,
0xD1ccEE2b4c8Af8bB69A1D47B8de22a2C73c04F7A,
0x5EdFEf3afc81149735FB0971e9Ad9150151A01Ed,
0x61BD8eB94d90FC67a012526ea99b6703B526D514,
0x4952C61300360A7633e56fC5bc4FfdD30814E0Fd,
0x2be28260Bfea06C46ffA0412167EF1E3ac8e6B45,
0x12902B5b69BE79854bC02AB82cc6f8D3D773efF0,
0x3b1b5f13881f5EcCa9f3f243B06E56EeDC7fE12C,
0x848c21b47a7427ecAD38A9677E22dC45CC70047a,
0xD4bb0E903a36aE9428Cc146744fD8C76A2388170,
0x1E99137dC2F47097416832D15b4C215376df744E,
0x3B04eeCE9B08Db9b159A8206fEE8Ca7ed3e4fb79,
0x470234E7E3e386f519BaCEBfe6ebfd239d0d6133,
0xB7ddAC8d3A78EE144E0D3d9b72F6d1E88794A46E,
0x8334b7E8A29c7345F3DD9926968f09a9DC02a9BE,
0xE913457d29B32979c05f86B3E8f52915340EAa31,
0xb8fBB8Dc8B287E87D102A2EDDB799cc558AC25B8,
0x90E74092bFb094d141B3FD2D36024dE167C0A9a4,
0xD736c6893dDD0772394E021940cc840ec1Ae396D,
0x8CF4624F727BFD8387dd5a6627B6Cd4C0965A008,
0xaB06BdC923B99770E9243695541DD1eC418ceF71,
0x674d578B608CaaD942d8FC633A5D660a79d587DC,
0x03f3530a70f82EEc3E9ee9dd93F16a896B1CdFc4,
0xa7802ba51ba87556263d84cfc235759b214ccf35,
0x82068BD967B63A38a8055B1483D847632DBbcaE7,
0x9fDa619519D86e1045423c6ee45303020Aba7759,
0xE56217fFe939e32e3859f559dA595F6359291d65,
0x58f1F10ED50ACBC65Ef905F5F8FDD194E7C1eF3c,
0x591AA18eF2deC7A569fb5DC9C823b75bF105e8ED,
0x80705bd9e13dEf23946b795e5624EAf6839e8025,
0x9fDa619519D86e1045423c6ee45303020Aba7759,
0x7924C35574D6cAd1ad7ba6Cd5Eb9c1Fb623989aD,
0x9f334285363BAEa3062A3c1001ebDeb16abBBc9C,
0x1c75b106a60f7df5ef47eb5515ca800e9f9360bb,
0xd9047b532b9a4e0c018Ea6Ab46878E300E00A22f,
0x07283Ba3173D6869d3395BB23272a7FA5D0B151E,
0xf556fDB3099721dE9a2095fF76c024C87bdAEA96,
0xc64ae513474848eCEF93c861F36713618D44Cb02,
0xF5C7db4D88D8844a72786eB845F06542FAf34D19,
0x5F64d5E455Ba64b17A86335312a0083EB9ace6f8,
0x11F24Dd1551d7F32Ba392E17043ff828f7a70751,
0x496115B4EA7aCf46E5E4364245C7725FBaD5D904,
0x867e21A92C9CCBB2750cEEdf809E9BB9F5D01ed0,
0x4cEd2B7d27ac74b0ECb2440d9857bA6C6407149f,
0xe950B97cD6184E052bE893573dadF82b0Df7197D,
0xA9BBca8e5163a54fB7aF5228B2f34343d332246f,
0xb9340ade648dF11505b535144a4A4F9bee9Cea1B,
0xB2ed6A4Ba50B0998b102BBa24963C2E6cfc9c043,
0xEf56b435C70a3ec18E89a6f7de5a358c96506D6b,
0x1d99fD43dceC43110766b4935A480a074F9914F2,
0xf0A3c32d39fc4E1ec6CBC8FD56805e4bF80016CD,
0xCE9D5cBAFB3E3d6A441551C831B06F5F6C1a1D3f,
0xc2E3Ed4AdC7d59fFc957b6C479Cc0485a6148C1C,
0x8B0Ff13D0E46179A7af0affee1DA98A032CA8F3e,
0xA7884B37C8f7703D75422191C70ca0E1Bec09B2F,
0x7D19e0c240eaF629fBEfDc4B5C1d18da4b46065B,
0xcFEdef02a9aA2a5A094ff420a292Da72023dDe64,
0x2FAFb50298101B5a88Ed0B0Ac5331f4BcEca61e6,
0x5b1ebE2a47B46E8259FCf688C744546c2f0e06Ce,
0xdDa5AC41DeC0A42104F7010d138Ceb55DE6B6126,
0xEecb72c28C89413F6217054aD1A290aEEd1B0572,
0x2c90df78f1c6f8501BCF3AC79bb4AE2b5b7B5Feb,
0x7489691894Bf877E411c8a4c05C013325f8CC5d7,
0xAB63a833E9c637d3ddb1c97FD11d4790c16b9beC,
0x5939014a5cD3294A8fE8162FE3ad84163434492a,
0x33aa9A6D308103DC7cd87B450dc9821f012e7941,
0xA904961c11Bf58421b7035146d8D36850FbE9306,
0x81d557fbfDD627D9817149B4eA54cdC1F97cAEa2,
0x25A14c35c038FD071b74E470cf0b2E7010d6F3F9,
0x03AF81d1C276ACB8b27C97cD4A2b7D7328290826,
0xdE94279f16947BA39eBB947ba5F7399a42A1F124,
0x1dc65DF4512c78A6C55823ACd2E0a9C703d03ab7,
0x3feDcf841EA2009F65C3787A3a055845C27749e0,
0x39153eaaDdD6EC1E500a1785D337dd75777Ce25e,
0x715F24E43762E43239cB6FC4dBA2FE248706319c,
0xFd0994B149F15a2D92e6493f483DD4bBD8A2838d,
0xc86356d0aB969CbBFD91076A3Ab89CdBF8928FF1,
0x3973B17380b00BA475963042e786D6Cea078cE70,
0x026B73e1523067bB6a5Eb0aF14C2e3C19BF017Ac,
0x916954EDBEAee2e4828Bc831ee168e3D60335337,
0x86202B352a1Af3ac0ce4C1BB6Ebf469249159Eff,
0x58ed1D535bdDe4a1b00Cb7D6A33b52496102F4DC,
0x9f2c78648F8525956E5a0Cd81B4537a075dC26cd,
0x649cf4C11C1e86B959dD6F4C22511D5b05AD2F77,
0xfF42CE2E07f6C900C1BaEaAb2341Fe733f1888f1,
0x11C5de3d7B20248516A1D3d24779098935e9b76f,
0x9e3dcd281b0848Ce2E79f9b7E7b315f6E53B5D75,
0x8D45fC968D4eEd18377639145e844fA597605497,
0xeB2011CA0cCb6A236986e911036907FE11E38F4A,
0xE4171e63E21014eC8d8CC91Fd5d4C9c0743d1cCd,
0x11C5de3d7B20248516A1D3d24779098935e9b76f,
0xa2bfadF5385960D7eb8E04c5Fbdd2C8b729898c0,
0x8D45fC968D4eEd18377639145e844fA597605497,
0xeB2011CA0cCb6A236986e911036907FE11E38F4A,
0xe78D3F415cAf885690DA8637c1f3321FD3a85ded,
0x72aF428215B759CfC27afdbE85A7e6B51cACD268,
0x4Dd1Bb42f0Ca9CDbf355De7F96C9433E5407d822,
0x3da09649f4062a1fb6ae76127aa1cee1e93e0d51,
0x3684D6fAEF522d11254B6f2F7634Ad6dB59ac267,
0xd32c372bfd40b866ca1dd73a73a1bc011b4621a4,
0x98eC52e9dd23254873708277e4b65A8830EcdD4B,
0x9f440408364f4268b467a405ed5dd502f8115f43,
0x586d4d416c895989fa3c804cab0976abd4ac7d30,
0x860992d9b91C8a1F7F3D5cf172AF7A5B22e74230,
0x3da79ffff00c68c3158c68b65ca1bd5bf4ffc1f8,
0x8760121E7dDfa8B492eD215E769AFA70d8b439fb,
0xe80ce3d5669b8f8f316d36ee7203c66e288e92ce,
0x02746cb479b7e3528b86b0bce835ec9aefcf8d0b,
0x65c40fe5d98190ff999d5341b7c1ee736dad4cdd,
0xd094ae35be0c61691d97b5114f5fba61f36144f0,
0xFFB9a31520965eE021D634Af67ea2ac6A1606BF3,
0x604Cb4eCcf3e9d7a3D91F666fbB90aBC18947fBF,
0xA99C36409BeCce99102F3AaC840a88f727aF9d7a,
0x78f4Fa210848F18C53Cc38BEeD3C26Bc1ffc1235,
0xbefe6151e76fa3004bac064b7d89a21cb605aa60,
0x8C51296091C9C4F3bB2021516CD1A01f1C2c0F5a,
0x42D1F3D1E77Fc33F2EfE1c9F13849407c6A5d8e1,
0x08b2177E78d22949659A99db6Ad03eaa87f00f92,
0x748E4bDF7759a61D3b8b8a314fa4De867f4Ce873,
0xFb55Fad7dD1e1B272CA0ac809D5153c09e90b4e6,
0x48676D51bf71d0082cb07737D5DcEA89E0E7a44D,
0x403BfcC3F66cdaB3fAb8408235f13d00F8B754Da,
0xA8e97e301F01B2654bAb03504F4C8899dBd73e79,
0x9eDE1b13e36F69e5ffbd7797D84aDBED64fE04f8,
0x559f35F5451298D24977045B83162BDB3b809C02,
0x4BAeC9b226e01e552D8A7B7c799886daBd48c679,
0xA7a7f2049b1CF9CF75249925c97bF2B017089c2C,
0x4fe4e03cd354488d950b92dcc4ded991e44cf10d,
0x2BB4E4DeABE894C9441A216cdEE4D492734758C0,
0x893aE8377Aafc7174f60E81190dB0bFBE00a5e2F,
0xb261eC53A1b69133318Fe27c083C2d35512c208D,
0x8298f61E3D7588887719f1bD9f83C2FD36d4619C,
0x84Ad7CF6939768aeEeA562Fb4744fF1beffDD13c,
0x275E5eA8396640F2C20eeD8bdbbb5B79CBEaA56b,
0xea3018CE925DA7f3d138C0cC2e6eDD967a0a4f6B,
0xC159f556b731A4e17e69aB326d7181899e5e20a7,
0x49d8c07afE66842D816f938583d2fA537c71D58C,
0x264c0eb152a42Cf2C9f6d94B72D77f7bc9B6FC58,
0x5F814B66321d339e231A44DFF2e94d86BC94cD66,
0xAE98041E409d3eb3C2979ec948B57255A421913D,
0xA5918ECdD8e44307a3C8B26Aae71A781a8e087A7,
0xd7236c7bB066725C33DAE910A947aE40D565B66E,
0x91c1Dc3ecE03556f9b63429f0f7c6AF2D9Ee3eB7,
0x6F87BBea7FCbe8Bcd2CC284d1EC3e3F22c7cA79B,
0xF1c3f2472bB14b84bE420613308c3b07a70A3553,
0x8DEa543e7409d12a38eFA88D2685410f85528bC9,
0x8d02EB339eBaEdFc6c058066cB30Fc9D20aDf14A,
0x134342210990c23e58caC9224Af88882F455A75c,
0x359d636b66ed708c8cb5ceed781f152d5aa285af,
0xcc89fb091e138d5087a8742306aedbe0c5cf8ce6,
0x4d99a827fE40D1B3DD4241f94b6cD6c7925F77c9,
0x68B4683475747E28a83596e94b58187d452099Cf,
0xfb990096EC50d9B5511a6CaFa649271b632387CB,
0x3825f3d93f6C6bE5373F2ce544a2cf324E8908e4,
0xE465e43b52FC7F4479eFf2525207bd3872813705,
0x6677A3899283891b6Ba154A72C3Bbb89ab27edFf,
0x7c7a40ceb79F11365aD953065f2e5963b0acCdE7,
0x00013b46d6FaB46772aC4580953def6C237D01AB,
0xb31C43330eB34b685C2135e7fBbCe230622357E4,
0xC4997a42bb6965391AEf468F7975fE2424AC4762,
0x3079FaAfb17B0365C4A2628847b631A2770932B6,
0x95C66E71B89F9182FB17d3267c727Ed05199024a ,
0x9fd66eaa211282e3b26d3bb9fd8ac7e89600c4b2,
0x242dF0066c1117a780bCbdE64568AEFCA85bB729,
0x5028F9f2f132E9385fDd033FC671b8A7b2e6d033,
0x3423b8bb1BC7776465ADfbCAF8c8Ffd1Ea0B06e6,
0xb08435d83F9199eC6A3e5FBfbCd8564536c128e1,
0xaBe35783EF2E5C6FCb67bEe516ee474eDDd3c08A,
0x077e6962228bEF7CC9E08c465f768D0889F0c16B,
0x29253f7465FA6eC2f3346876E077334BaB9590f2,
0xB965b01F3cFf25e77406BC85aafA019831Fc0D54,
0x3197Bab761271eDE2bf5b25B450FE46D85C76F2b,
0x7e5e9680e28a327F84B9599D3C5cd6Cf7F1a9065,
0xDC922b6B33Ce36B02C44f3B09cf7EA6b613Ac939,
0xfBA7EDDb0B113d2638773A73B56eEF98C1a3c82d,
0x133e7E0c91858E57997E08781e89bA67D4027276,
0x4ee9587a5818d8b9eaf26D03F73E69910F8f0200,
0x48CD0aA19eD8443151DC1B0baB50D6D3715475C9,
0x670563c34B7889e9A6AA2f4Fdb7d95a2f0ddeeF6,
0x084Fd3EDbe23DC7c7FB7e0CeDb79D943773d1274,
0x67E7e452a8671eFecb9284c483dE75C3fF1f02A9,
0xAdf714d7d6Ad6A5E0CcfA0000066B243cAD92d0D,
0x72a43D8e8c2f72DE1496368c7e8691656037CAA9,
0xb76C460bE4aAda54d52e4E2eE04E50aB13CfD893,
0xFfBc7CCc60D1bF6B293E60B553a4f5619AAC51Da,
0x6A50a1cE49e26c728d4070e9aFE2e75A94a67a1B,
0xA4500e2A4e3482014b42C50454B87b1EB5e7006E,
0x132A12Fe6E9A90Fb633708baCd1847fc9aE1d3DA,
0x2Da4508F12cF70c92beB4D517aDa86d24461EdAc,
0x44a9EB73c804e1dd78bDEE547fE18e76C1A61Ac0,
0x9c5194e1b1c188ef21a156af4f5458dbbabfcc5d,
0x12aBCF7aF82707cE355013138be1a3C3369a272B,
0xBB71615F74A576A44C3E10C81Af4Fcb9511286C7,
0xff4c940d2879b824e5e7E90c2b7BEbB31F8a9fA6,
0x7f0cE869C6F3e1C5f91beaF7eABeEc1688B1C127,
0x2e07442940Af7267F33184196430E441E72024e3,
0x01c68DE2A7A84BF0A58797C53aa91F08cF2A6cBf,
0xBe4329a16d1C20f906EF416Ae3623E3A48038A6A,
0xd94b4d38f04ed6dd860a056fe7cc7730be4511ff,
0x4522ffedD354Dd906106607fEc737c69fa88cf13,
0xaFFbcC6437E2F46fDd5F6d1B4aae521809100Cf8,
0x11851be28ebb42b80b80935b056920e22b7bfb4f,
0x12A1E8f498501c2CCE0967F8b9717b28492fC668,
0x7522B31CD0cbA4E8F64dbEBeF846456F0aaff9F3,
0x54804CBD6dB2362656F743e4C4306Dd4f98E6580,
0x3423b8bb1BC7776465ADfbCAF8c8Ffd1Ea0B06e6,
0xFFB9a31520965eE021D634Af67ea2ac6A1606BF3,
0xaBe35783EF2E5C6FCb67bEe516ee474eDDd3c08A,
0x795db74A47A499745a40e48d8F836067B02De2df,
0xc9fC70444c2FFE34a8D022C0523ceB310A9922E1,
0xa3956BC1504B6c5d17a3BF9A834D624b5C0d34e1,
0xAb4Bf37461F081C369175b4bEE5AE22ea9f7e980,
0x1E99137dC2F47097416832D15b4C215376df744E,
0x803e560c6A6c848d74AD364242aA52107b985db6,
0x2f03b1614D7BE94867F0edc79ff30a9b061cf40f,
0x8FC8bb1177A68200706985d8078882Aa38623c53,
0x8d67e4B1811491407753067eA6928a6f34fdB568,
0xE236a3368de4311bBF171eefE7daaa8f7B43e2ea,
0xc9dd33e989f89d1bcedfd11f86dbc5d8d33a300c,
0x31F938D6bF73ff6f3eC7B023910a8989fBACF78D,
0x877341abeaC8f44ac69BA7c99B1D5D31ce7a11D7,
0x92c415a355e40CB47fF31A4189db9Bbd50C3191d,
0xa04198445516d5f06Dbcc7016524Bf7c2625c2B8,
0x9C8BC3FdE6bdab4866f217D8a1CBC44F80a4e936,
0xc0248563abbc69e3ed7d7a81c5893bd90b21cbf7,
0xF06B394314CC76bdeaFffedB08368C0c04188311,
0x7ccae55ae3589af4ee32c923e32db1410d3b55e3,
0x1b9ebf8f912d3fc42e0230664b113d60a4906e2d,
0xb0f738e890fdc8f9fd0bed90b49129523f3f81b0,
0x5Df0d32148C07417652a38E4aDB50fF7A7AAcBb8,
0x417a2b5cd84b851d57488b8f418875159e7b3a47,
0x6232744DA51A73a6FAcA7854413e2EF12dff82Eb,
0x096b753ae52101dfebede6d6f77d0512819ffa40,
0xc25856fa61013d5107c3ee9210982e352ff0a360,
0x84aba8588d5ffcd48efcf8b2adb9e02bb4923dad,
0x7aad818364e352fa4d246dc68308de83fd6537b4,
0xf9b897c30ee841526f58353344015d225dd444a4,
0xA540ae3c81C34603f1eB5b0376359F0356aEbbBB,
0x5b00f35e829208ae843646e625dcc891aaf9c920,
0xaf192a15d8ac2cbd0662433cdd8b988dc9fc1c1f,
0x35619d97cf70ed333cfe9f3e686b04681f2f0bf0,
0x9c0fde6edae28ed41e113c703f8623a5f438894f,
0x2cff5e89c318d447598fafe4d607090e1e853ba6,
0x67c06D35902fB700278AdA4684c17f64Fd79fEE0,
0x80aD7165F29F97896a0B5758193879DE34Fd9712,
0x552D5bA1658f9F4aa5213887b878772E92e5C47b,
0x86751D220019258756ec48E42d552Ed248237b07,
0x5ea28b8b38ff9e669d26a9ba5efa791ff46c56ae,
0xC63A3240DeD1b3D4791d50E0AB1A47e59F276A7d,
0x2EA6D99F8e167B33f16e792DdA58b59234c7613E,
0x880558BbCff11e6914620bDce164011aeb3C8721,
0x565D5B7CB0a551777228d8b16B36F81A708191a6,
0xa24b58b0C8769651Dd550D103f661c5dAd98B5bb,
0x298e2aDAE646955E13D12AC231438b20E9DDD7CA,
0x6d9dA320DdE848d9a82a134D6165Acab7c811d0D,
0xB4978445da17f2ed6ef63048D2ea7125665eFE05,
0xd4A5a9bCc6D2086EC8De4471cd45e021f608AB2D,
0x04Dd9b612af3ADA8Dd044486c5765d2ee16981Cb,
0x00159eFee79Bb6b0f668571e0e8239E65175fdCA,
0xAEf82eEeA45f02f44d6de1ed519F09C70C25Ab26,
0xBE1a59508c67Fd199CeCAFeE90136390b0cA2f0f,
0x2A377974F3E1B3551B940cEA167C544B20794e3F,
0x36791a6a2709455ff6EcD9c7699d490Bf815FBce,
0x00E4A8E65cf5Ca7B155dC973dA836ac1216a4428,
0x8Cc21b65045eF92707EaFe41fC6b052b6B950364];
	lte.importAddresses(users);
	}
}

contract Lottereum {
	function importAddresses(address[] users);
}