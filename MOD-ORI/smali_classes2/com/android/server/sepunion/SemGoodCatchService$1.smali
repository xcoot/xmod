.class public final Lcom/android/server/sepunion/SemGoodCatchService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;

.field public final trustedSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Landroid/content/pm/Signature;

    .line 8
    .line 9
    new-instance v0, Landroid/content/pm/Signature;

    .line 10
    .line 11
    const-string v1, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object v0, p1, v1

    .line 18
    .line 19
    new-instance v0, Landroid/content/pm/Signature;

    .line 20
    .line 21
    const-string v1, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v0, p1, v1

    .line 28
    .line 29
    new-instance v0, Landroid/content/pm/Signature;

    .line 30
    .line 31
    const-string v1, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    aput-object v0, p1, v1

    .line 38
    .line 39
    new-instance v0, Landroid/content/pm/Signature;

    .line 40
    .line 41
    const-string v1, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    aput-object v0, p1, v1

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$1;->trustedSignatures:[Landroid/content/pm/Signature;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    sget v3, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v4, "onReceive((Context context, Intent intent : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "SemGoodCatchService"

    .line 27
    .line 28
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v5, "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

    .line 36
    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_c

    .line 42
    .line 43
    const-string v3, "ONOFF_SETTING_URI"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v5, "EVENT_LIST_URI"

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "SETTING_LIST_URI"

    .line 56
    .line 57
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string/jumbo v0, "settingUri : "

    .line 62
    .line 63
    .line 64
    const-string v7, ", eventUri : "

    .line 65
    .line 66
    const-string v8, ", settingProviderUri : "

    .line 67
    .line 68
    invoke-static {v0, v3, v7, v5, v8}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    if-eqz v3, :cond_c

    .line 83
    .line 84
    if-eqz v5, :cond_c

    .line 85
    .line 86
    if-eqz v6, :cond_c

    .line 87
    .line 88
    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    iget-object v0, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const/4 v9, 0x3

    .line 101
    const/4 v10, 0x0

    .line 102
    if-eqz v8, :cond_a

    .line 103
    .line 104
    move v11, v10

    .line 105
    const/4 v12, 0x1

    .line 106
    :goto_0
    if-ge v11, v9, :cond_9

    .line 107
    .line 108
    aget-object v0, v7, v11

    .line 109
    .line 110
    sget v13, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 111
    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v14, "Verify authority: "

    .line 115
    .line 116
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-static {v4, v13}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    if-nez v13, :cond_0

    .line 138
    .line 139
    new-instance v13, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v14, "Verifying failed. Authority not found: "

    .line 142
    .line 143
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_0
    invoke-virtual {v8, v13, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-nez v0, :cond_1

    .line 163
    .line 164
    const-string v0, "Verifying failed. Provider not found: "

    .line 165
    .line 166
    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 176
    .line 177
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 178
    .line 179
    const-string v0, "com.samsung.android.app.goodcatch"

    .line 180
    .line 181
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_2

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v14, "Verifying failed. packageName:"

    .line 190
    .line 191
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_2
    const/high16 v0, 0x8000000

    .line 207
    .line 208
    :try_start_0
    invoke-virtual {v8, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 213
    .line 214
    if-nez v0, :cond_3

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v14, "Verifying failed. SigningInfo not found: "

    .line 219
    .line 220
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-eqz v13, :cond_4

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    goto :goto_1

    .line 246
    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_1
    if-nez v0, :cond_5

    .line 251
    .line 252
    const-string v0, "Verifying failed. Signature array is null."

    .line 253
    .line 254
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_5
    array-length v13, v0

    .line 259
    move v14, v10

    .line 260
    :goto_2
    if-ge v14, v13, :cond_8

    .line 261
    .line 262
    aget-object v15, v0, v14

    .line 263
    .line 264
    iget-object v9, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->trustedSignatures:[Landroid/content/pm/Signature;

    .line 265
    .line 266
    array-length v10, v9

    .line 267
    const/4 v2, 0x0

    .line 268
    :goto_3
    if-ge v2, v10, :cond_7

    .line 269
    .line 270
    move-object/from16 v17, v0

    .line 271
    .line 272
    aget-object v0, v9, v2

    .line 273
    .line 274
    invoke-virtual {v0, v15}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_6

    .line 279
    .line 280
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 281
    .line 282
    const-string v0, "Trusted signature found."

    .line 283
    .line 284
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    const/4 v10, 0x1

    .line 288
    goto :goto_5

    .line 289
    :cond_6
    const/16 v16, 0x1

    .line 290
    .line 291
    add-int/lit8 v2, v2, 0x1

    .line 292
    .line 293
    move-object/from16 v0, v17

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_7
    move-object/from16 v17, v0

    .line 297
    .line 298
    const/16 v16, 0x1

    .line 299
    .line 300
    add-int/lit8 v14, v14, 0x1

    .line 301
    .line 302
    const/4 v9, 0x3

    .line 303
    const/4 v10, 0x0

    .line 304
    goto :goto_2

    .line 305
    :cond_8
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 306
    .line 307
    const-string v0, "Trusted signature not found."

    .line 308
    .line 309
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    :goto_4
    const/4 v10, 0x0

    .line 313
    goto :goto_5

    .line 314
    :catch_0
    move-exception v0

    .line 315
    move-object v2, v0

    .line 316
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v9, "Verifying failed. Package not found: "

    .line 321
    .line 322
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v4, v0, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :goto_5
    and-int/2addr v12, v10

    .line 337
    const/4 v2, 0x1

    .line 338
    add-int/2addr v11, v2

    .line 339
    const/4 v9, 0x3

    .line 340
    const/4 v10, 0x0

    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_9
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_b

    .line 348
    .line 349
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 350
    .line 351
    const-string v0, "Since it will not be shipped, continues whatever verified or not."

    .line 352
    .line 353
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    const/4 v12, 0x1

    .line 357
    goto :goto_6

    .line 358
    :cond_a
    const-string v0, "Verifying failed. Unexpected error."

    .line 359
    .line 360
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    const/4 v12, 0x0

    .line 364
    :cond_b
    :goto_6
    if-eqz v12, :cond_c

    .line 365
    .line 366
    iget-object v0, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 367
    .line 368
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 369
    .line 370
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    iput-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 375
    .line 376
    iget-object v0, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 377
    .line 378
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 379
    .line 380
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    iput-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 385
    .line 386
    iget-object v0, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 387
    .line 388
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 389
    .line 390
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    iput-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 395
    .line 396
    iget-object v0, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 397
    .line 398
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 399
    .line 400
    const/4 v2, 0x1

    .line 401
    iput-boolean v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 402
    .line 403
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 404
    .line 405
    const-string/jumbo v0, "sendMsg(mGoodCatchHandler, MSG_CREATE_OBSERVER,...)"

    .line 406
    .line 407
    .line 408
    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lcom/android/server/sepunion/SemGoodCatchService$1;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    .line 414
    .line 415
    const/4 v1, 0x0

    .line 416
    const/4 v2, 0x3

    .line 417
    const/4 v3, 0x0

    .line 418
    invoke-static {v0, v2, v1, v3}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 419
    .line 420
    .line 421
    :cond_c
    return-void
.end method
