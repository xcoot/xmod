.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;
.implements Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;


# instance fields
.field public final mAnimationStartCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

.field public final mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

.field public final mContext:Landroid/content/Context;

.field public final mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

.field public final mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

.field public final mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

.field public final mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverStateLock:Ljava/lang/Object;

.field public final mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

.field public final mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

.field public final mDisplayFoldListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

.field public mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

.field public mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

.field public mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsAttachStateChanged:Z

.field public mIsCoverAppCovered:Z

.field public mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mResolutionMonitorCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

.field public final mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final mSupportHallIcSensor:Z

.field public mSystemReady:Z

.field public final mThread:Landroid/os/HandlerThread;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/cover/CoverState;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 24
    .line 25
    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    .line 26
    .line 27
    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 32
    .line 33
    .line 34
    iput-object v3, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    .line 35
    .line 36
    new-instance v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

    .line 42
    .line 43
    invoke-direct {v4, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo v4, "user"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/os/UserManager;

    .line 56
    .line 57
    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 58
    .line 59
    const-string/jumbo v4, "power"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroid/os/PowerManager;

    .line 67
    .line 68
    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    new-instance v4, Landroid/os/HandlerThread;

    .line 74
    .line 75
    const-string v5, "cover"

    .line 76
    .line 77
    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 83
    .line 84
    .line 85
    new-instance v5, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-direct {v5, v0, v6}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V

    .line 92
    .line 93
    .line 94
    iput-object v5, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    .line 95
    .line 96
    new-instance v6, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    new-instance v6, Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    iput v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 110
    .line 111
    iput v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 112
    .line 113
    iput-boolean v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 114
    .line 115
    iput-boolean v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 116
    .line 117
    iput-object v1, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    .line 125
    invoke-virtual {v6}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    .line 126
    .line 127
    .line 128
    :cond_0
    iput-object v6, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 129
    .line 130
    new-instance v2, Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v2, v1, v6, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;)V

    .line 137
    .line 138
    .line 139
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 140
    .line 141
    new-instance v2, Lcom/android/server/sepunion/cover/StateNotifier;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-direct {v2, v6, v1}, Lcom/android/server/sepunion/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 151
    .line 152
    new-instance v2, Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 153
    .line 154
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-direct {v2, v6, v1}, Lcom/android/server/sepunion/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 162
    .line 163
    new-instance v2, Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-direct {v2, v1, v5}, Lcom/android/server/sepunion/cover/CoverHideAnimator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 170
    .line 171
    .line 172
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 173
    .line 174
    new-instance v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v5, Landroid/util/SparseArray;

    .line 180
    .line 181
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v5, v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    .line 185
    .line 186
    new-instance v6, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v6, v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    .line 192
    .line 193
    new-instance v7, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v7, v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    .line 199
    .line 200
    new-instance v8, Landroid/content/pm/Signature;

    .line 201
    .line 202
    const-string v9, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    .line 203
    .line 204
    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 v9, 0x1

    .line 208
    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    new-instance v8, Landroid/content/pm/Signature;

    .line 212
    .line 213
    const-string v9, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    .line 214
    .line 215
    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const/4 v9, 0x2

    .line 219
    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    new-instance v8, Landroid/content/pm/Signature;

    .line 223
    .line 224
    const-string v9, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    .line 225
    .line 226
    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/4 v9, 0x4

    .line 230
    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    new-instance v8, Landroid/content/pm/Signature;

    .line 234
    .line 235
    const-string v9, "308203663082024ea00302010202045334d369300d06092a864886f70d01010505003074310b3009060355040613024b52311430120603550408130b4779656f6e6767692d446f310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373310c300a060355040b13034d5343311330110603550403130a4d75736963526164696f3020170d3134303332383031343230315a180f32303634303331393031343230315a3074310b3009060355040613024b52311430120603550408130b4779656f6e6767692d446f310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373310c300a060355040b13034d5343311330110603550403130a4d75736963526164696f30820122300d06092a864886f70d01010105000382010f003082010a028201010083819270421a4a140b6ea27f213a10362b93b58fbc969e35f96941d40570191d767ff2b91927887a5d6829d30177747caa2cc57c7754fb3c59265cae7a5e2419e29c5c0e1925c6019f3cbb38195eee37c7ae8e0fc15d1b1bcac875d821dcd92a7417831c3d14daf1c514ef68d03ff2e50b28a4dab757451d79b84fc7d59fc5024939bd376569bbf53a6bae31faf8c2f7f657d31d30748875fe3329776c95a4da0f8c33fa4d5f9557e8d80bf2113d3f9fadca5d76545887cf59468dabd6cf64785306cf7f301d5cb40238ef97c2b868a7ba94cda3c6f3a30ca8c3b772061628016738d9d5d842ea9d11b00c20ef32ffb8b78e32141b2697389f21bdf1423b79750203010001300d06092a864886f70d0101050500038201010031ab11fb167b839e6f2b02b6e8d5eae010d3fbb20b310817fe350c75d3d2eede4cb53cb781f9a116e64aceeff9b40bd080a83a88286b2d0372e052a75ee2900d655d541ac682bdf18798e88ebb5873947f8c53b8a9d73ab2c536182daa8dafe05f70f87ed0058a8e4d065abe77cb2534083d785ae9577a6d1ca7342c9db0de4d4520d11633f519cbb993a009bc4e1e1973835b61807b48469bacd74b5e849e03aeeb69e2ca6c9cdda29c67196dad838ef8121024dccd3055e53e0f88948ed8291999aef53f401a4b127bccc9d32aa00ffd2169a36b1909c5efcfce2ea77871d510e8e8e6617c5bc84b666ff0340f0ac7e2bbd3609749b54aa8573ec5564441b3"

    .line 236
    .line 237
    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/16 v9, 0x8

    .line 241
    .line 242
    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    new-instance v8, Landroid/content/pm/Signature;

    .line 246
    .line 247
    const-string v10, "3082024f308201b8a00302010202045191d845300d06092a864886f70d0101050500306c3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e301e170d3133303531343036323330315a170d3430303932393036323330315a306c3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e30819f300d06092a864886f70d010101050003818d0030818902818100976f29ee7e3a7058d2ace552eebb8839de8e7182f298252ab6996b8fa55fe4f5bfb06fccb6e9460751a213e2bf0112e5b9d71e8db779ec871bc102c464aecc31c539f30d247d56721d0e349d0139fc8b792d35ef2557dcbc45848669934910edf3d3e27ab86ebf84b35003518237d7a1c45f79f51f2c870b367d7d9f063b26e70203010001300d06092a864886f70d0101050500038181006558e803b137ef689516c93a43c2d8c73704633d8380b3377641f9cabf6bcdd11dc7eadd9849aa8a0707e6e37d69a8e757d06d6128cda29e93f08e20b39b55df11d758815e7c67e9a9d382d14c747d5a08a5c9fcc59a850166cff85197c28106f5afd3e9bd9fdaf16d4a9df9daf32ea32b349807d70ae87b0d6a4c945a7cbbec"

    .line 248
    .line 249
    invoke-direct {v8, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const/16 v10, 0x10

    .line 253
    .line 254
    invoke-virtual {v5, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    new-instance v8, Landroid/content/pm/Signature;

    .line 258
    .line 259
    const-string v11, "30820271308201daa00302010202044bced400300d06092a864886f70d0101050500307d310b3009060355040613024b52310e300c0603550408130553656f756c310a3008060355040713012e310c300a060355040a13035344533121301f060355040b1318416e64726f696420446576656c6f706d656e74205465616d3121301f06035504031318416e64726f696420446576656c6f706d656e74205465616d301e170d3130303432313130333132385a170d3337303930363130333132385a307d310b3009060355040613024b52310e300c0603550408130553656f756c310a3008060355040713012e310c300a060355040a13035344533121301f060355040b1318416e64726f696420446576656c6f706d656e74205465616d3121301f06035504031318416e64726f696420446576656c6f706d656e74205465616d30819f300d06092a864886f70d010101050003818d0030818902818100aeed32b2126b38fe1f2ff9d7597e7a80179df0086feea0a1ff021c793f562689facea794dd46aa5c449d47002d44b8aae164eed3705a02409c506b2bcc542af80616df485641354ec3d6f48f5252432ae2e63778f8d6c18e5340a5e00652b02687c744706ff528c6f40138879491f7471c5a3030fd9ddf587bbdc698e17b9c670203010001300d06092a864886f70d0101050500038181000d924d99bafa03701e9ecb5ca787345ae025b0400b09493b655250699a11941a60572d5b9d5037d278f64395ca64df6700bb973dff1250a5ffc180f39d64103ecff7ed042c244ca8ce9fc224b8e027072a7ef78cb753bb962633b04bf3c238995c477172c13258f35b75fa968206c4efd9d99680679bd72b12b2fed5aff7f96a"

    .line 260
    .line 261
    invoke-direct {v8, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const/16 v12, 0x20

    .line 265
    .line 266
    invoke-virtual {v5, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    new-instance v8, Landroid/content/pm/Signature;

    .line 270
    .line 271
    const-string v13, "30820255308201bea00302010202044e07bddb300d06092a864886f70d0101050500306e310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e310c300a060355040a13034d53433110300e060355040b130753616d73756e67311c301a060355040313137777772e73616d73756e672e636f6d2f7365633020170d3131303632363233313634335a180f32313131303630323233313634335a306e310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e310c300a060355040a13034d53433110300e060355040b130753616d73756e67311c301a060355040313137777772e73616d73756e672e636f6d2f73656330819f300d06092a864886f70d010101050003818d0030818902818100a2ac304d1b9f26794cc006ae65ce472b0979a814dc39c56bb5b72fdaacdce7708b9c2ecac6c62bc1333fc492c11bda141ad91ef27f4c267674a8c3b422c04d9453f46cbb4eb805cd8d84db7cbef792cfd432c4a752713d9b7c4579871cad65c92dd84eca72b17fb40a230a7b97816b1926ac58a669babef62eed5c0f7b1f20650203010001300d06092a864886f70d01010505000381810083f3f453b3b2bd4004e1b1a1e50363b16c6b86a070bfb07506c00485f9c23571f4f4d3a10482eb2f184f2d6c3361bb4f4329537834fe7d4715b46eed6fe09618c55a3e4b1b93c2f316a11ab3e101c6752f205a6befec80e83dda7bb11bc8755d4f3e372a6321f345a02b475d7fb12e7bf35864b46e8a248b445d2e135c966a95"

    .line 272
    .line 273
    invoke-direct {v8, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const/16 v13, 0x40

    .line 277
    .line 278
    invoke-virtual {v5, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    new-instance v8, Landroid/content/pm/Signature;

    .line 282
    .line 283
    const-string v14, "308202bb308201a3a00302010202045a83f44a300d06092a864886f70d01010b0500300d310b3009060355040613026b723020170d3133303732303130353931305a180f32313132303632363130353931305a300d310b3009060355040613026b7230820122300d06092a864886f70d01010105000382010f003082010a0282010100c0958b7dbd2510276170b6a2cdb729ed2035b270e295e0c5ba32078cf79f924569ebf5a15bafc6583fdb20d83d87dbfc5be052b2cc9941ff6adac7ccd7feb0ede5ba6608cae3173e904a9218098fe8478c7f184765f833632a84f60923ae82d60aa96b61955847cb1899c615a0fbd185f7cf6324073bf227de6a0caf33321e5db1a7f3612b451c4e46687c34efe87e5d1ef4523b8aa1f0343a12cef42c64a858656c618189d3be2cdd7301dcd07a3cd381096312ac1cc3c32fbabe2259ee79cbe86e01443296554776b5fcde330db76e53efc4612423318f67d2ec1a18352e1382b7a38893fcc3ea32f36d020c756557862df84db1c4db8b7521ef30ddf94ef50203010001a321301f301d0603551d0e041604148e86c5f4c76f088e4ca46688621100a80acf007f300d06092a864886f70d01010b0500038201010028cf439b36a69a3858c22189d16253acca61389705c3ce2355f30f875fe951b34a7ea3a6c5fa60023588ff61e92591942701e7e7f65642676bea889ea98cb9462f62ad6d2c22e2e6f4e5ac617d3d65c26e439da6a62906388640287ce25d4494ff2cadef5b1159150af56d03a90c32bfd2f24fbe1d9a1566213257530feef09ee544e8f752e1f3e75a2381314fcb9d910d58e45facd8603274c1fd879e4b9144b96ba31387c5d9f7f4866299ee89b4bd4f1482090abad4dd4abeba1e780b98682065f619a86a28c3111a631c8a43d028eaaf3cae573ff6a6caf2a85ee87e1c7e14e2e1b3f0239b2fa5e0d664e0c1a1a9ef57898dea32833101adab6c35639895"

    .line 284
    .line 285
    invoke-direct {v8, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const/16 v14, 0x80

    .line 289
    .line 290
    invoke-virtual {v5, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    new-instance v8, Landroid/content/pm/Signature;

    .line 294
    .line 295
    const-string v15, "308201cf30820138a00302010202044e2cb661300d06092a864886f70d0101050500302b310b3009060355040613026b6f310e300c060355040713057375776f6e310c300a060355040313037670733020170d3131303732353030313834315a180f32313131303730313030313834315a302b310b3009060355040613026b6f310e300c060355040713057375776f6e310c300a0603550403130376707330819f300d06092a864886f70d010101050003818d0030818902818100a8ec9f407459acdefd6d4b473a9c4d01b2ccd59cb7983650b3b4426763e31280e1f93d53d73c4cfda81153171dbfe75214c4e44455027325f13e9571d64a9af164bcc79945a4e176aaf6394c50c55b8c9e44bd885b9d5b7ef743e43bcb8d7c405ffbbb664b6b3e25c0deb1b215badcbea137f3e1ae21d65cb8d6392d6e6b52ed0203010001300d06092a864886f70d010105050003818100306be5d67c62bcb63dd5d615e9f67f8bf017c92fb49b6ee1e04eb87926d833d6abb9363aaabdb41215fc1b93bdff34344af43381b3f73c85d2e9a80d84382181b06a127c2a74522c2d3e5f9ed09407e9944e27db4742b3e93c62f5d673f3554f5597766bb4ee17ffd8b0a1073dad7b9e67ab003e985306481dee7898d6a28fac"

    .line 296
    .line 297
    invoke-direct {v8, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/16 v15, 0x100

    .line 301
    .line 302
    invoke-virtual {v5, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    new-instance v8, Landroid/content/pm/Signature;

    .line 306
    .line 307
    const-string v15, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    .line 308
    .line 309
    invoke-direct {v8, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const/16 v15, 0x200

    .line 313
    .line 314
    invoke-virtual {v5, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    new-instance v8, Landroid/content/pm/Signature;

    .line 318
    .line 319
    const-string v15, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    .line 320
    .line 321
    invoke-direct {v8, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const/16 v15, 0x400

    .line 325
    .line 326
    invoke-virtual {v5, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    new-instance v8, Landroid/content/pm/Signature;

    .line 330
    .line 331
    const-string v15, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    .line 332
    .line 333
    invoke-direct {v8, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const/16 v15, 0x800

    .line 337
    .line 338
    invoke-virtual {v5, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    new-instance v8, Landroid/content/pm/Signature;

    .line 342
    .line 343
    invoke-direct {v8, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const/16 v11, 0x1000

    .line 347
    .line 348
    invoke-virtual {v5, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    new-instance v8, Landroid/content/pm/Signature;

    .line 352
    .line 353
    const-string v15, "3082030b308201f3a003020102020427ba3599300d06092a864886f70d01010b050030363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d301e170d3133303432353034313334345a170d3433303431383034313334345a30363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100bc1ee71062800dc6ea0aad37ac18de0f5c827a90f64c8ec8c61718e58a675d80e81016872f1f1da06e0f05f8423e0037727adefbd043993244822539158d47b521b5d883a151523ee2f4a2fdd19ac364f29a93c1e05159a8b90902968237edf5931e20ca4d80a76bd5f699430d9dfd57387b49063860fe567780bd7e7b6206fef3e030cd1ec39c324cf8914b1c3b1cf1142f16a18bcf401c87ec1253fb1161cc5b97677973c730e574c54ade32ace9693d36be430fc1191ab42938a54d0b36b11e474a2b859682d21aa78ee1e3d023e738ac704edcdc710e16b267985e65f3647c4b040110fa2c03f91ad4055b2a740dcfc1cab708492b9575902a0f97b807f50203010001a321301f301d0603551d0e0416041402ff5ede4a1a2017d26f1d3e6079083f8ab63dc6300d06092a864886f70d01010b050003820101007f10b1b880d054df5bcaab1204071ee9cc554601b431a886e318a5a600a73c4a0300e4c27d09ddea81d2c9f858baf83dc517b68e760dda559fb2500fbd64c308fc367bc038e39d53794612023b08f759dcf13b7d74002e680a1f661bed3f0aa138325345318ee80566bbe4263d42317fd2ff0746ab78d160dc2af871297f2110fc6db4b270a6b0e45b85de411cb02b881721c655127f1e7678af0c96d7621a1822d9931afe5f1e6bfae05f88a800c0783e2c4bd98b81e9de14f54ff9561a9f1b13fb00c44ca10d62b8a22a601e536440b7090355212594f2cb48fbe8e136c46c9169784e9faf42a417bdd3603cb652f6c6e49d6c7b836d310cdbc14f111e254c"

    .line 354
    .line 355
    invoke-direct {v8, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/16 v15, 0x2000

    .line 359
    .line 360
    invoke-virtual {v5, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    const-string v8, "Y29tLnNhbXN1bmcucmFkaW8="

    .line 368
    .line 369
    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    const-string v9, "Y29tLnVwbHVzLmlwYWdlbnQ="

    .line 377
    .line 378
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    const-string v9, "Y29tLnNkcy5tb2JpbGVkZXNr"

    .line 386
    .line 387
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    const-string v9, "Y29tLnNlYy5jaGF0b25ibHVl"

    .line 395
    .line 396
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    const-string v9, "Y29tLmt0Y3Mud2hvd2hv"

    .line 404
    .line 405
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    const-string v9, "Y29tLndob3gyLmxndXBsdXM="

    .line 409
    .line 410
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    const/16 v5, 0x100

    .line 414
    .line 415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    const-string v9, "Y29tLnNlYy5zYW1zdW5nc291bmRwaG9uZQ=="

    .line 420
    .line 421
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    const/16 v5, 0x200

    .line 425
    .line 426
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    const-string v9, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRo"

    .line 431
    .line 432
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    const-string v9, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRoOnJlbW90ZQ=="

    .line 436
    .line 437
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    const/16 v5, 0xc00

    .line 441
    .line 442
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    const-string v9, "Y29tLmFtYy51aQ=="

    .line 447
    .line 448
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    const-string v9, "Y29tLnNkcy5tbXMudWk="

    .line 456
    .line 457
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    const-string v9, "Y29tLnNrdC5wcm9kLmRpYWxlcg=="

    .line 465
    .line 466
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 473
    .line 474
    new-instance v2, Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 475
    .line 476
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-direct {v2, v5, v1}, Lcom/android/server/sepunion/cover/AutoScreenOn;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 481
    .line 482
    .line 483
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 484
    .line 485
    new-instance v2, Lcom/android/server/sepunion/cover/ResolutionMonitor;

    .line 486
    .line 487
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-direct {v2, v1, v5, v3}, Lcom/android/server/sepunion/cover/ResolutionMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;)V

    .line 492
    .line 493
    .line 494
    new-instance v2, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 495
    .line 496
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-direct {v2, v1, v3}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 501
    .line 502
    .line 503
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 504
    .line 505
    new-instance v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 506
    .line 507
    new-instance v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;

    .line 508
    .line 509
    invoke-direct {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 510
    .line 511
    .line 512
    invoke-direct {v2, v1, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    .line 513
    .line 514
    .line 515
    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 516
    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    iput-object v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 522
    .line 523
    const-string v2, "com.sec.feature.cover.hallic"

    .line 524
    .line 525
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    iput-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    .line 530
    .line 531
    return-void
.end method


# virtual methods
.method public final cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 31
    .line 32
    const-string p1, "disableLcdOffByCover : caller is invalid"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    const-string v0, "CoverManager_"

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "disable LCD OFF : "

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string v1, "CoverManager_StateNotifier"

    .line 63
    .line 64
    const-string v3, "disableLcdOffByCover"

    .line 65
    .line 66
    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 70
    .line 71
    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v3, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v9, 0x1

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 90
    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    iget-object v4, v4, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    .line 94
    .line 95
    invoke-interface {p1, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    const-string p1, "CoverManager_StateNotifier"

    .line 102
    .line 103
    const-string p2, "disableLcdOffByCover : LCD off already called by app"

    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    monitor-exit v1

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    new-instance v10, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    move-object v3, v10

    .line 123
    move-object v4, v0

    .line 124
    move-object v5, p1

    .line 125
    move-object v6, p2

    .line 126
    invoke-direct/range {v3 .. v8}, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, v10, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    iput-boolean v9, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 138
    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    move v2, v9

    .line 141
    :goto_0
    if-eqz v2, :cond_4

    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 144
    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    new-instance p2, Landroid/os/Bundle;

    .line 148
    .line 149
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v0, "event_type"

    .line 153
    .line 154
    invoke-virtual {p2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    const-string v0, "lcd_off_disabled_by_cover"

    .line 158
    .line 159
    invoke-virtual {p2, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 166
    .line 167
    iput-object p0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 168
    .line 169
    :cond_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 170
    .line 171
    if-eqz p1, :cond_4

    .line 172
    .line 173
    invoke-virtual {p1, v9}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 177
    .line 178
    iput-object p0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 179
    .line 180
    :cond_4
    return v2

    .line 181
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    const-string v8, "  "

    .line 11
    .line 12
    iget-object v9, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v10, "CoverManager_CoverManagerServiceImpl"

    .line 15
    .line 16
    invoke-static {v9, v10, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    if-nez v9, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-boolean v9, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 24
    .line 25
    if-nez v9, :cond_12

    .line 26
    .line 27
    if-eqz p3, :cond_12

    .line 28
    .line 29
    array-length v9, p3

    .line 30
    if-lez v9, :cond_12

    .line 31
    .line 32
    aget-object v9, p3, v6

    .line 33
    .line 34
    const-string/jumbo v10, "on"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-nez v10, :cond_6

    .line 42
    .line 43
    const-string/jumbo v10, "off"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_1

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_1
    const-string/jumbo v0, "open"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    const-string v0, "close"

    .line 64
    .line 65
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_2
    const-string/jumbo v0, "vr"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_12

    .line 81
    .line 82
    :try_start_0
    aget-object p1, p3, v7

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    aget-object v0, p3, v5

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    aget-object v1, p3, v4

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    aget-object p3, p3, v3

    .line 101
    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    move v11, v6

    .line 107
    move v6, p1

    .line 108
    move p1, v11

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move p1, v6

    .line 111
    move v0, p1

    .line 112
    move v1, v0

    .line 113
    :goto_0
    new-instance p3, Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-direct {p3, v6, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, ","

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string v0, "cover_test_visible_rect"

    .line 170
    .line 171
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string p1, "TEST MODE: CLEAR VIEW COVER VISIBLE AREA "

    .line 177
    .line 178
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_4

    .line 197
    .line 198
    const-string p0, "NOT TEST MODE"

    .line 199
    .line 200
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_4
    const-string p1, "close"

    .line 205
    .line 206
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    xor-int/2addr p1, v7

    .line 211
    if-eqz p1, :cond_5

    .line 212
    .line 213
    const-string p3, "OPEN"

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_5
    const-string p3, "CLOSE"

    .line 217
    .line 218
    :goto_2
    const-string v0, "TEST MODE: "

    .line 219
    .line 220
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_6
    :goto_3
    const-string/jumbo p1, "on"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_10

    .line 242
    .line 243
    array-length v8, p3

    .line 244
    if-le v8, v7, :cond_10

    .line 245
    .line 246
    aget-object p1, p3, v7

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result p3

    .line 255
    sparse-switch p3, :sswitch_data_0

    .line 256
    .line 257
    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :sswitch_0
    const-string p3, "cs"

    .line 261
    .line 262
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-nez p1, :cond_7

    .line 267
    .line 268
    goto/16 :goto_4

    .line 269
    .line 270
    :cond_7
    move v2, v0

    .line 271
    goto/16 :goto_4

    .line 272
    .line 273
    :sswitch_1
    const-string p3, "cc"

    .line 274
    .line 275
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_8

    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :cond_8
    move v2, v1

    .line 284
    goto :goto_4

    .line 285
    :sswitch_2
    const-string/jumbo p3, "n"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-nez p1, :cond_9

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_9
    const/4 v2, 0x6

    .line 296
    goto :goto_4

    .line 297
    :sswitch_3
    const-string p3, "m"

    .line 298
    .line 299
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_a

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_a
    const/4 v2, 0x5

    .line 307
    goto :goto_4

    .line 308
    :sswitch_4
    const-string p3, "l"

    .line 309
    .line 310
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_b

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_b
    move v2, v3

    .line 318
    goto :goto_4

    .line 319
    :sswitch_5
    const-string p3, "g"

    .line 320
    .line 321
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-nez p1, :cond_c

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_c
    move v2, v4

    .line 329
    goto :goto_4

    .line 330
    :sswitch_6
    const-string p3, "f"

    .line 331
    .line 332
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-nez p1, :cond_d

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_d
    move v2, v5

    .line 340
    goto :goto_4

    .line 341
    :sswitch_7
    const-string p3, "c"

    .line 342
    .line 343
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_e

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_e
    move v2, v7

    .line 351
    goto :goto_4

    .line 352
    :sswitch_8
    const-string p3, "b"

    .line 353
    .line 354
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-nez p1, :cond_f

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_f
    move v2, v6

    .line 362
    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 363
    .line 364
    .line 365
    goto/16 :goto_5

    .line 366
    .line 367
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 368
    .line 369
    const/16 p3, 0xf

    .line 370
    .line 371
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_11

    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 378
    .line 379
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 380
    .line 381
    .line 382
    new-instance p0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string p1, "TEST MODE: CLEAR SIDE VIEW COVER "

    .line 385
    .line 386
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 401
    .line 402
    const/16 p3, 0x11

    .line 403
    .line 404
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-eqz p1, :cond_11

    .line 409
    .line 410
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 411
    .line 412
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 413
    .line 414
    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string p1, "TEST MODE: CLEAR CAMERA VIEW COVER "

    .line 418
    .line 419
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 434
    .line 435
    const/16 p3, 0xb

    .line 436
    .line 437
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-eqz p1, :cond_11

    .line 442
    .line 443
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 444
    .line 445
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 446
    .line 447
    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string p1, "TEST MODE: NEON_COVER "

    .line 451
    .line 452
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 467
    .line 468
    const/16 p3, 0x10

    .line 469
    .line 470
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-eqz p1, :cond_11

    .line 475
    .line 476
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 477
    .line 478
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 479
    .line 480
    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string p1, "TEST MODE: MINI SVIEW WALLET COVER "

    .line 484
    .line 485
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p0

    .line 495
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 500
    .line 501
    invoke-static {p1, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    if-eqz p1, :cond_11

    .line 506
    .line 507
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 508
    .line 509
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 510
    .line 511
    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    const-string p1, "TEST MODE: LED_COVER "

    .line 515
    .line 516
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 531
    .line 532
    const/16 p3, 0xd

    .line 533
    .line 534
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 535
    .line 536
    .line 537
    move-result p1

    .line 538
    if-eqz p1, :cond_11

    .line 539
    .line 540
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 541
    .line 542
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 543
    .line 544
    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string p1, "TEST MODE: GAMEPACK_COVER "

    .line 548
    .line 549
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    return-void

    .line 563
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    invoke-static {p1, v6}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    if-eqz p1, :cond_11

    .line 570
    .line 571
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 572
    .line 573
    invoke-virtual {p0, v6}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 574
    .line 575
    .line 576
    new-instance p0, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    const-string p1, "TEST MODE: FLIP_COVER "

    .line 579
    .line 580
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 595
    .line 596
    invoke-static {p1, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 597
    .line 598
    .line 599
    move-result p1

    .line 600
    if-eqz p1, :cond_11

    .line 601
    .line 602
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 603
    .line 604
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 605
    .line 606
    .line 607
    new-instance p0, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    const-string p1, "TEST MODE: CLEAR_COVER "

    .line 610
    .line 611
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p0

    .line 621
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 626
    .line 627
    const/16 p3, 0xe

    .line 628
    .line 629
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 630
    .line 631
    .line 632
    move-result p1

    .line 633
    if-eqz p1, :cond_11

    .line 634
    .line 635
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 636
    .line 637
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 638
    .line 639
    .line 640
    new-instance p0, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    const-string p1, "TEST MODE: LED BACK COVER "

    .line 643
    .line 644
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_10
    if-nez p1, :cond_11

    .line 659
    .line 660
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 661
    .line 662
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 663
    .line 664
    .line 665
    new-instance p0, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    const-string p1, "TEST MODE: "

    .line 668
    .line 669
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :cond_11
    :goto_5
    const-string p0, "Cover Test Mode options:"

    .line 684
    .line 685
    const-string p1, "  [cmd] [type]"

    .line 686
    .line 687
    const-string p3, "  cmd may be one of:"

    .line 688
    .line 689
    const-string v0, "    on: cover attached"

    .line 690
    .line 691
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    const-string p0, "    off: cover detached"

    .line 695
    .line 696
    const-string p1, "    open: cover opened"

    .line 697
    .line 698
    const-string p3, "    close: cover closed"

    .line 699
    .line 700
    const-string v0, "    vr: set clear view visible rect"

    .line 701
    .line 702
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    const-string p0, "  type may be one of:"

    .line 706
    .line 707
    const-string p1, "    f[lip cover]: flip cover"

    .line 708
    .line 709
    const-string p3, "    s[view cover]: sview cover"

    .line 710
    .line 711
    const-string v0, "    c[lear cover]: clear cover"

    .line 712
    .line 713
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    const-string p0, "    l[ed cover]: led cover"

    .line 717
    .line 718
    const-string p1, "    n[eon cover]: neon cover"

    .line 719
    .line 720
    const-string p3, "    g[amepack cover]: gamepack cover"

    .line 721
    .line 722
    const-string v0, "    b: led back cover"

    .line 723
    .line 724
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    const-string p0, "    cs: clear side view cover"

    .line 728
    .line 729
    const-string p1, "    m: mini sview wallet cover"

    .line 730
    .line 731
    const-string p3, "    cc: clear camera view cover"

    .line 732
    .line 733
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :cond_12
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    .line 738
    .line 739
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    const-string v0, " Current Cover state"

    .line 743
    .line 744
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 748
    .line 749
    monitor-enter v0

    .line 750
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 756
    .line 757
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    const-string v1, "  "

    .line 768
    .line 769
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 773
    .line 774
    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->dump(Ljava/io/PrintWriter;)V

    .line 775
    .line 776
    .line 777
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 778
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 779
    .line 780
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    const-string v0, " Current Feature state:"

    .line 788
    .line 789
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    const-string v0, "  sIsDeviceSupportVerifyCover="

    .line 793
    .line 794
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 798
    .line 799
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 800
    .line 801
    .line 802
    const-string v0, "  sIsDeviceSupportDetectCover="

    .line 803
    .line 804
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 808
    .line 809
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 810
    .line 811
    .line 812
    const-string v0, "  sIsSupportFlipCover="

    .line 813
    .line 814
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 818
    .line 819
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 820
    .line 821
    .line 822
    const-string v0, "  sIsSupportNfcLedCover="

    .line 823
    .line 824
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 828
    .line 829
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 830
    .line 831
    .line 832
    const-string v0, "  sIsSupportClearCover="

    .line 833
    .line 834
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 838
    .line 839
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 840
    .line 841
    .line 842
    const-string v0, "  sIsNfcAuthSystemFeatureEnabled="

    .line 843
    .line 844
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 848
    .line 849
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 850
    .line 851
    .line 852
    const-string v0, "  sIsSupportNeonCover="

    .line 853
    .line 854
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 858
    .line 859
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 860
    .line 861
    .line 862
    const-string v0, "  sSupportNfcLedCoverLevel="

    .line 863
    .line 864
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 868
    .line 869
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 870
    .line 871
    .line 872
    const-string v0, "  sIsSupportGamePackCover="

    .line 873
    .line 874
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    .line 878
    .line 879
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 880
    .line 881
    .line 882
    const-string v0, "  sIsSupportLEDBackCover="

    .line 883
    .line 884
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 888
    .line 889
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 890
    .line 891
    .line 892
    const-string v0, "  sIsSupportSecureCover="

    .line 893
    .line 894
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 898
    .line 899
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 900
    .line 901
    .line 902
    const-string v0, "  sIsSupportClearSideViewCover="

    .line 903
    .line 904
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    .line 908
    .line 909
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 910
    .line 911
    .line 912
    const-string v0, "  sIsSupportMiniSviewWalletCover="

    .line 913
    .line 914
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    .line 918
    .line 919
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 920
    .line 921
    .line 922
    const-string v0, "  sIsSupportClearCameraViewCover="

    .line 923
    .line 924
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    .line 928
    .line 929
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 930
    .line 931
    .line 932
    const-string v0, "  "

    .line 933
    .line 934
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 938
    .line 939
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 940
    .line 941
    monitor-enter v1

    .line 942
    :try_start_2
    const-string v2, " Active Cover Service: "

    .line 943
    .line 944
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    iget-object v2, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 948
    .line 949
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    if-eqz v3, :cond_13

    .line 958
    .line 959
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v3

    .line 963
    check-cast v3, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 964
    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    .line 966
    .line 967
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    .line 969
    .line 970
    const-string v5, "  "

    .line 971
    .line 972
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    goto :goto_6

    .line 986
    :catchall_0
    move-exception p0

    .line 987
    goto/16 :goto_f

    .line 988
    .line 989
    :cond_13
    const-string v2, " "

    .line 990
    .line 991
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    const-string v2, " Binding Cover Service: "

    .line 995
    .line 996
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1000
    .line 1001
    .line 1002
    move-result-wide v2

    .line 1003
    iget-object v4, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 1004
    .line 1005
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v4

    .line 1013
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v5

    .line 1017
    if-eqz v5, :cond_14

    .line 1018
    .line 1019
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v5

    .line 1023
    check-cast v5, Ljava/util/Map$Entry;

    .line 1024
    .line 1025
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    const-string v9, "  "

    .line 1031
    .line 1032
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v9

    .line 1039
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    const-string v9, " : "

    .line 1043
    .line 1044
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v5

    .line 1051
    check-cast v5, Ljava/lang/Long;

    .line 1052
    .line 1053
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v9

    .line 1057
    sub-long v9, v2, v9

    .line 1058
    .line 1059
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    const-string/jumbo v5, "ms ago"

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_7

    .line 1076
    :cond_14
    const-string v2, " "

    .line 1077
    .line 1078
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    const-string v2, " Bind history:"

    .line 1082
    .line 1083
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    .line 1087
    .line 1088
    array-length v2, v0

    .line 1089
    move v3, v6

    .line 1090
    :goto_8
    if-ge v3, v2, :cond_16

    .line 1091
    .line 1092
    aget-object v4, v0, v3

    .line 1093
    .line 1094
    if-eqz v4, :cond_15

    .line 1095
    .line 1096
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    const-string v8, "  "

    .line 1102
    .line 1103
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v4

    .line 1113
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    :cond_15
    add-int/2addr v3, v7

    .line 1117
    goto :goto_8

    .line 1118
    :cond_16
    const-string v0, " "

    .line 1119
    .line 1120
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1124
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 1125
    .line 1126
    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->dump(Ljava/io/PrintWriter;)V

    .line 1127
    .line 1128
    .line 1129
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    .line 1133
    .line 1134
    const-string v1, "  mDisableRecords.size="

    .line 1135
    .line 1136
    const-string v2, "  Real Cover Switch State="

    .line 1137
    .line 1138
    const-string v3, "  mCoverManagerDisabled="

    .line 1139
    .line 1140
    const-string v4, " Current CoverDisabler state:"

    .line 1141
    .line 1142
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    iget-object v4, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    .line 1146
    .line 1147
    monitor-enter v4

    .line 1148
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    iget-boolean v3, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 1154
    .line 1155
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v3

    .line 1162
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    iget-boolean v3, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 1166
    .line 1167
    if-eqz v3, :cond_17

    .line 1168
    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    iget-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 1175
    .line 1176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v2

    .line 1183
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_9

    .line 1187
    :catchall_1
    move-exception p0

    .line 1188
    goto/16 :goto_e

    .line 1189
    .line 1190
    :cond_17
    :goto_9
    iget-object v2, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 1191
    .line 1192
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1193
    .line 1194
    .line 1195
    move-result v2

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v1

    .line 1208
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    :goto_a
    if-ge v6, v2, :cond_18

    .line 1212
    .line 1213
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 1214
    .line 1215
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v1

    .line 1219
    check-cast v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 1220
    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1224
    .line 1225
    .line 1226
    const-string v5, "    ["

    .line 1227
    .line 1228
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    const-string v5, "] disable="

    .line 1235
    .line 1236
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    iget-boolean v5, v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 1240
    .line 1241
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    .line 1244
    const-string v5, " pkg="

    .line 1245
    .line 1246
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    iget-object v5, v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    .line 1250
    .line 1251
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    const-string v5, " token="

    .line 1255
    .line 1256
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 1260
    .line 1261
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    add-int/2addr v6, v7

    .line 1272
    goto :goto_a

    .line 1273
    :cond_18
    const-string v0, "  "

    .line 1274
    .line 1275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1279
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 1280
    .line 1281
    if-eqz v0, :cond_19

    .line 1282
    .line 1283
    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->dump(Ljava/io/PrintWriter;)V

    .line 1284
    .line 1285
    .line 1286
    :cond_19
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 1287
    .line 1288
    if-eqz v0, :cond_1c

    .line 1289
    .line 1290
    const-string v1, "  Live callbacks ("

    .line 1291
    .line 1292
    const-string v2, " Current Generic Cover Callback state:"

    .line 1293
    .line 1294
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    .line 1296
    .line 1297
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 1298
    .line 1299
    monitor-enter v2

    .line 1300
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    iget-object v1, v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 1306
    .line 1307
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1308
    .line 1309
    .line 1310
    move-result v1

    .line 1311
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    const-string v1, "):"

    .line 1315
    .line 1316
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 1327
    .line 1328
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    :cond_1a
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1333
    .line 1334
    .line 1335
    move-result v1

    .line 1336
    if-eqz v1, :cond_1b

    .line 1337
    .line 1338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v1

    .line 1342
    check-cast v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 1343
    .line 1344
    if-eqz v1, :cond_1a

    .line 1345
    .line 1346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1349
    .line 1350
    .line 1351
    const-string v4, "    "

    .line 1352
    .line 1353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    iget-object v4, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    .line 1357
    .line 1358
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    const-string v4, " (pid="

    .line 1362
    .line 1363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    .line 1366
    iget v4, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    .line 1367
    .line 1368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    const-string v4, " uid="

    .line 1372
    .line 1373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    iget v4, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    .line 1377
    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    const-string v4, " type="

    .line 1382
    .line 1383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    .line 1386
    iget v1, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    .line 1387
    .line 1388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    const-string v1, ")"

    .line 1392
    .line 1393
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v1

    .line 1400
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    goto :goto_b

    .line 1404
    :catchall_2
    move-exception p0

    .line 1405
    goto :goto_c

    .line 1406
    :cond_1b
    const-string v0, "  "

    .line 1407
    .line 1408
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    monitor-exit v2

    .line 1412
    goto :goto_d

    .line 1413
    :goto_c
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1414
    throw p0

    .line 1415
    :cond_1c
    :goto_d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 1416
    .line 1417
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    if-eqz v0, :cond_1d

    .line 1422
    .line 1423
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 1424
    .line 1425
    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/cover/AutoScreenOn;->dump(Ljava/io/PrintWriter;)V

    .line 1426
    .line 1427
    .line 1428
    :cond_1d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 1429
    .line 1430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1431
    .line 1432
    .line 1433
    const-string p0, " Current CoverTestModeUtils state:"

    .line 1434
    .line 1435
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    const-string p0, "  SHIPPED="

    .line 1439
    .line 1440
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    sget-boolean p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 1444
    .line 1445
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1446
    .line 1447
    .line 1448
    const-string p0, "  sCurrentTestMode="

    .line 1449
    .line 1450
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    sget p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 1454
    .line 1455
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 1456
    .line 1457
    .line 1458
    const-string p0, "  sCurrentTestVisibleRect="

    .line 1459
    .line 1460
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    .line 1464
    .line 1465
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1466
    .line 1467
    .line 1468
    const-string p0, "  "

    .line 1469
    .line 1470
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    const-string p0, "CoverManager_"

    .line 1474
    .line 1475
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    const-class p0, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    .line 1479
    .line 1480
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    move-result-object p0

    .line 1484
    check-cast p0, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    .line 1485
    .line 1486
    if-eqz p0, :cond_1e

    .line 1487
    .line 1488
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    :cond_1e
    return-void

    .line 1492
    :goto_e
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1493
    throw p0

    .line 1494
    :goto_f
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1495
    throw p0

    .line 1496
    :catchall_3
    move-exception p0

    .line 1497
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1498
    throw p0

    .line 1499
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_8
        0x63 -> :sswitch_7
        0x66 -> :sswitch_6
        0x67 -> :sswitch_5
        0x6c -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_2
        0xc60 -> :sswitch_1
        0xc70 -> :sswitch_0
    .end sparse-switch

    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 31
    .line 32
    const-string p1, "enableLcdOffByCover : caller is invalid"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    const-string v0, "CoverManager_"

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "enable LCD OFF : "

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string p2, "CoverManager_StateNotifier"

    .line 63
    .line 64
    const-string v0, "enableLcdOffByCover"

    .line 65
    .line 66
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 70
    .line 71
    monitor-enter p2

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 89
    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    iget-object v3, v1, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    .line 93
    .line 94
    invoke-interface {p1, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const/4 v1, 0x0

    .line 104
    :goto_0
    if-nez v1, :cond_3

    .line 105
    .line 106
    const-string p0, "CoverManager_StateNotifier"

    .line 107
    .line 108
    const-string p1, "enableLcdOffByCover: matching listener does not exist."

    .line 109
    .line 110
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    monitor-exit p2

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    .line 124
    .line 125
    .line 126
    monitor-exit p2

    .line 127
    const/4 v2, 0x1

    .line 128
    :goto_1
    return v2

    .line 129
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 28
    .line 29
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 36
    .line 37
    const-string v0, "getCoverStateInternal : caller is invalid"

    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 45
    .line 46
    :goto_0
    return-object p0
.end method

.method public final getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getCoverSwitchStateFromInputManager()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "input"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/input/InputManagerService;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 20
    .line 21
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 27
    .line 28
    const/16 v2, -0x100

    .line 29
    .line 30
    const/16 v3, 0x15

    .line 31
    .line 32
    invoke-interface {p0, v1, v2, v3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-lez p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_2
    return v1

    .line 45
    :catch_0
    const-string p0, "getCoverSwitchStateFromInputManager : Can\'t get cover switch state"

    .line 46
    .line 47
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    const-string p0, "getCoverSwitchStateFromInputManager : InputManager is null"

    .line 52
    .line 53
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v1
.end method

.method public final initializeLedCoverController()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x1e

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x28

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0x32

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    const/16 v1, 0x3c

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    const/16 v1, 0x46

    .line 37
    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    const/16 v1, 0x50

    .line 41
    .line 42
    if-eq v0, v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0x5a

    .line 45
    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    const/16 v1, 0x64

    .line 49
    .line 50
    if-eq v0, v1, :cond_0

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "initializeLedCoverController : unsupported NfcLedCover level "

    .line 55
    .line 56
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 67
    .line 68
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 118
    .line 119
    :goto_0
    return-void
.end method

.method public final notifyCoverSwitchStateChanged(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "notifyCoverSwitchStateChanged : switchState = "

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 9
    .line 10
    const-string/jumbo p1, "notifyCoverSwitchStateChanged : return because system is not yet ready"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "getCallingUid() = "

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", myUid() == "

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string p1, "Caller is not SYSTEM_PROCESS"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 78
    .line 79
    iget-boolean v2, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 85
    .line 86
    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    :cond_3
    const/4 v3, 0x1

    .line 93
    :cond_4
    iput-boolean v3, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 101
    .line 102
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v1, "com.samsung.sepunion.cover.SEND_COVER_SWITCH"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "switchState"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    const-string v1, "CoverManager_CoverDisabler"

    .line 117
    .line 118
    const-string/jumbo v2, "sendCoverSwitchIntent"

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    .line 128
    .line 129
    const-string v0, "isCoverManagerDisabled : switchState = "

    .line 130
    .line 131
    const-string v1, ", type = "

    .line 132
    .line 133
    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-virtual {p1, v3, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setCoverMode(ZI)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 168
    .line 169
    const-string p1, "InputDeviceManager is null"

    .line 170
    .line 171
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :goto_2
    const-string p0, "CoverManager_"

    .line 175
    .line 176
    const-string p1, "cover switch fail because CoverManager is disabled"

    .line 177
    .line 178
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_7
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_8

    .line 187
    .line 188
    const-string p0, "CoverManager_"

    .line 189
    .line 190
    const-string p1, "cover switch fail because factory app is running."

    .line 191
    .line 192
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_8
    :try_start_0
    const-string v1, "CoverManager_CoverManagerServiceImpl"

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, ", type = "

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 228
    .line 229
    if-eqz v0, :cond_9

    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setCoverMode(ZI)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :catch_0
    move-exception v0

    .line 242
    goto :goto_3

    .line 243
    :cond_9
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 244
    .line 245
    const-string v1, "InputDeviceManager is null"

    .line 246
    .line 247
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :goto_3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 252
    .line 253
    .line 254
    :goto_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_b

    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_b

    .line 269
    .line 270
    const-string v0, "CoverManager_"

    .line 271
    .line 272
    const-string v1, "AutoScreenOn is disabled."

    .line 273
    .line 274
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 278
    .line 279
    monitor-enter v0

    .line 280
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_a

    .line 287
    .line 288
    const-string v1, "CoverManager_"

    .line 289
    .line 290
    const-string v2, "AutoScreenOn changed in cover closed state"

    .line 291
    .line 292
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    monitor-exit v0

    .line 296
    goto :goto_6

    .line 297
    :catchall_0
    move-exception p0

    .line 298
    goto :goto_5

    .line 299
    :cond_a
    monitor-exit v0

    .line 300
    return-void

    .line 301
    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    throw p0

    .line 303
    :cond_b
    :goto_6
    const-string v0, "CoverManager_"

    .line 304
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v2, "cover switch : "

    .line 308
    .line 309
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method public final onLcdOffByCoverEnabled()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v4, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "event_type"

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v5, "lcd_off_disabled_by_cover"

    .line 21
    .line 22
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v2, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v2, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 3

    .line 1
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onSwitchUser : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "User "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " is no longer unlocked - exiting"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindActiveCoverService(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->switchCoverService(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void

    .line 122
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    throw p0
.end method

.method public final onUserUnlocked(I)V
    .locals 3

    .line 1
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onUserUnlocked : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "User "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " is no longer unlocked - exiting"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter p1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    monitor-exit p1

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final registerListenerCallbackInternal(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 30
    .line 31
    const-string/jumbo p1, "registerListenerCallbackInternal : caller is invalid"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string v0, "com.samsung.android.incallui"

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 58
    .line 59
    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    :goto_0
    return-void

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    throw p0
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 30
    .line 31
    const-string/jumbo p1, "registerNfcTouchListenerCallback : caller is invalid"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 46
    .line 47
    if-eqz p0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v0, "CoverManager_GenericCoverServiceController"

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v2, "registerNfcTouchListenerCallback: binder = "

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ", pid : "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", uid : "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", type : "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    const/16 v0, 0xa

    .line 105
    .line 106
    if-eq p1, v0, :cond_2

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    if-eq p1, v0, :cond_2

    .line 110
    .line 111
    const-string p0, "CoverManager_GenericCoverServiceController"

    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p3, "Unsupported touch listener type: "

    .line 116
    .line 117
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 132
    .line 133
    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 151
    .line 152
    if-eqz v2, :cond_3

    .line 153
    .line 154
    iget-object v2, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    .line 155
    .line 156
    invoke-interface {p2, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_3

    .line 161
    .line 162
    const-string p0, "CoverManager_GenericCoverServiceController"

    .line 163
    .line 164
    const-string/jumbo p1, "registerNfcTouchListenerCallback : duplicated listener handle"

    .line 165
    .line 166
    .line 167
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    monitor-exit v0

    .line 171
    goto :goto_1

    .line 172
    :catchall_0
    move-exception p0

    .line 173
    goto :goto_0

    .line 174
    :cond_4
    new-instance v8, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 175
    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    move-object v1, v8

    .line 185
    move-object v2, p0

    .line 186
    move-object v3, p2

    .line 187
    move-object v4, p3

    .line 188
    move v7, p1

    .line 189
    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 190
    .line 191
    .line 192
    const/4 p1, 0x0

    .line 193
    invoke-interface {p2, v8, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    monitor-exit v0

    .line 202
    goto :goto_1

    .line 203
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    throw p0

    .line 205
    :cond_5
    :goto_1
    return-void
.end method

.method public final requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "CoverManager_CoverManagerServiceImpl"

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 25
    .line 26
    invoke-virtual {v5, v0, v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string/jumbo p0, "requestCoverAuthentication : caller is invalid"

    .line 33
    .line 34
    .line 35
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v5, "requestCoverAuthentication : whenNanos="

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 62
    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    :cond_1
    return v2
.end method

.method public final sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eq v3, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v3, v2

    .line 19
    :goto_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    :cond_2
    move v3, v2

    .line 42
    :cond_3
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 45
    .line 46
    invoke-virtual {v4, v5, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 70
    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(IZZ)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    .line 88
    .line 89
    .line 90
    if-eqz p2, :cond_8

    .line 91
    .line 92
    const/4 v4, 0x7

    .line 93
    if-eq p2, v4, :cond_6

    .line 94
    .line 95
    const/16 v4, 0xb

    .line 96
    .line 97
    if-eq p2, v4, :cond_5

    .line 98
    .line 99
    const/16 v4, 0xe

    .line 100
    .line 101
    if-eq p2, v4, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 114
    .line 115
    if-eqz v4, :cond_9

    .line 116
    .line 117
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 118
    .line 119
    if-nez v4, :cond_9

    .line 120
    .line 121
    new-instance v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-direct {v4, v5, v6}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 147
    .line 148
    if-eqz v4, :cond_9

    .line 149
    .line 150
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 151
    .line 152
    if-nez v4, :cond_7

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 155
    .line 156
    .line 157
    :cond_7
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 158
    .line 159
    if-eqz v4, :cond_9

    .line 160
    .line 161
    invoke-virtual {v4, p2, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(IZ)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_8
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 175
    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 179
    .line 180
    if-nez v4, :cond_9

    .line 181
    .line 182
    new-instance v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 183
    .line 184
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 185
    .line 186
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    invoke-direct {v4, v5, v6}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 196
    .line 197
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    const/4 v5, 0x2

    .line 201
    if-eqz v0, :cond_f

    .line 202
    .line 203
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 204
    .line 205
    invoke-virtual {v6, p2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 206
    .line 207
    .line 208
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 209
    .line 210
    iget-object v7, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 211
    .line 212
    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-virtual {v6, p2, v2, v7}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(IZZ)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 220
    .line 221
    iget-boolean v6, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 222
    .line 223
    if-nez v6, :cond_a

    .line 224
    .line 225
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_a
    iput-boolean v3, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 230
    .line 231
    :goto_3
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 232
    .line 233
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-eq v1, v5, :cond_c

    .line 244
    .line 245
    if-nez p2, :cond_c

    .line 246
    .line 247
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    sget-boolean p2, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 257
    .line 258
    if-eqz p2, :cond_c

    .line 259
    .line 260
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 261
    .line 262
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    sget-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 276
    .line 277
    if-eqz v2, :cond_b

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_b
    const-string v1, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    .line 281
    .line 282
    invoke-static {v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :goto_4
    if-eqz v1, :cond_c

    .line 287
    .line 288
    new-instance v2, Landroid/content/Intent;

    .line 289
    .line 290
    const-string v4, "com.samsung.android.intent.action.COVER_ATTACHED"

    .line 291
    .line 292
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v4, "com.sec.android.soagent"

    .line 296
    .line 297
    const-string v5, "com.sec.android.soagent.receiver.PhoneCoverReceiver"

    .line 298
    .line 299
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    const-string v4, "isBoot"

    .line 303
    .line 304
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    const-string/jumbo p1, "serialNumber"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 314
    .line 315
    const-string v1, "com.samsung.android.permission.COVER"

    .line 316
    .line 317
    invoke-virtual {p2, v2, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string p1, "CoverManager_CoverManagerUtils"

    .line 321
    .line 322
    const-string/jumbo p2, "sendCoverInformationToAgent : broadcast !!"

    .line 323
    .line 324
    .line 325
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :cond_c
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    .line 329
    .line 330
    if-eqz p1, :cond_18

    .line 331
    .line 332
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 333
    .line 334
    if-nez p1, :cond_d

    .line 335
    .line 336
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 337
    .line 338
    const-string/jumbo p2, "sensor"

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Landroid/hardware/SensorManager;

    .line 346
    .line 347
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 348
    .line 349
    :cond_d
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 350
    .line 351
    const p2, 0x10040

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    if-eqz p1, :cond_18

    .line 359
    .line 360
    const-string p2, "CoverManager_CoverManagerServiceImpl"

    .line 361
    .line 362
    const-string/jumbo v1, "sendCoverAttachStateLocked : register Sensor "

    .line 363
    .line 364
    .line 365
    invoke-static {p2, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 371
    .line 372
    if-nez v1, :cond_e

    .line 373
    .line 374
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 375
    .line 376
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 377
    .line 378
    .line 379
    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 380
    .line 381
    :cond_e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 382
    .line 383
    const/4 v1, 0x3

    .line 384
    invoke-virtual {p2, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 385
    .line 386
    .line 387
    goto/16 :goto_8

    .line 388
    .line 389
    :cond_f
    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 390
    .line 391
    .line 392
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 393
    .line 394
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 395
    .line 396
    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    invoke-virtual {p1, p2, v1, v6}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(IZZ)V

    .line 401
    .line 402
    .line 403
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    const-string v6, "CoverManager_CoverServiceManager"

    .line 409
    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string/jumbo v8, "unbindCoverService : type = "

    .line 413
    .line 414
    .line 415
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    invoke-static {v6, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 429
    .line 430
    monitor-enter p2

    .line 431
    :try_start_0
    iget-object v6, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    if-eqz v7, :cond_10

    .line 442
    .line 443
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    check-cast v7, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 448
    .line 449
    invoke-virtual {p1, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 450
    .line 451
    .line 452
    goto :goto_5

    .line 453
    :catchall_0
    move-exception p0

    .line 454
    goto/16 :goto_9

    .line 455
    .line 456
    :cond_10
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    iget-object v6, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 458
    .line 459
    monitor-enter v6

    .line 460
    :try_start_1
    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 463
    .line 464
    .line 465
    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 466
    .line 467
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 468
    .line 469
    .line 470
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    iget-boolean p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 472
    .line 473
    if-eqz p2, :cond_11

    .line 474
    .line 475
    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 476
    .line 477
    iget-object v6, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Lcom/android/server/sepunion/cover/CoverServiceManager$1;

    .line 478
    .line 479
    invoke-virtual {p2, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 480
    .line 481
    .line 482
    iput-boolean v1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 483
    .line 484
    :cond_11
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 485
    .line 486
    iput-boolean v2, p1, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 487
    .line 488
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 489
    .line 490
    if-eqz p1, :cond_12

    .line 491
    .line 492
    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 493
    .line 494
    goto :goto_6

    .line 495
    :cond_12
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 496
    .line 497
    if-eqz p1, :cond_13

    .line 498
    .line 499
    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 500
    .line 501
    :cond_13
    :goto_6
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    .line 502
    .line 503
    if-eqz p1, :cond_16

    .line 504
    .line 505
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 506
    .line 507
    if-eqz p1, :cond_16

    .line 508
    .line 509
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 510
    .line 511
    if-nez p1, :cond_14

    .line 512
    .line 513
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 514
    .line 515
    const-string/jumbo p2, "sensor"

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    check-cast p1, Landroid/hardware/SensorManager;

    .line 523
    .line 524
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 525
    .line 526
    :cond_14
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    .line 527
    .line 528
    const-string/jumbo p2, "sendCoverAttachStateLocked : unregister Sensor "

    .line 529
    .line 530
    .line 531
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 535
    .line 536
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 537
    .line 538
    if-nez p2, :cond_15

    .line 539
    .line 540
    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 541
    .line 542
    invoke-direct {p2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 543
    .line 544
    .line 545
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 546
    .line 547
    :cond_15
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    .line 548
    .line 549
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 550
    .line 551
    .line 552
    :cond_16
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 553
    .line 554
    iput v5, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 555
    .line 556
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    .line 557
    .line 558
    const-string p2, "dispatchInputManager : switchState = "

    .line 559
    .line 560
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string p2, ", type = "

    .line 569
    .line 570
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p2

    .line 580
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 584
    .line 585
    if-eqz p0, :cond_17

    .line 586
    .line 587
    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setCoverMode(ZI)V

    .line 588
    .line 589
    .line 590
    goto :goto_8

    .line 591
    :catch_0
    move-exception p0

    .line 592
    goto :goto_7

    .line 593
    :cond_17
    const-string p0, "InputDeviceManager is null"

    .line 594
    .line 595
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 596
    .line 597
    .line 598
    goto :goto_8

    .line 599
    :goto_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 600
    .line 601
    .line 602
    :cond_18
    :goto_8
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 603
    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    const-string/jumbo p2, "sendCoverAttachStateLocked : coverAttached = "

    .line 607
    .line 608
    .line 609
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string p2, ", switchState="

    .line 616
    .line 617
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    return-void

    .line 631
    :catchall_1
    move-exception p0

    .line 632
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 633
    throw p0

    .line 634
    :goto_9
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    throw p0
.end method

.method public final sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 10

    .line 1
    const-string p2, "CoverManager_"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-ne p1, p3, :cond_0

    .line 13
    .line 14
    const-string p0, "cover switch fail because switch state is same"

    .line 15
    .line 16
    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "CoverManager_CoverManagerServiceImpl"

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo p1, "sendCoverSwitchStateLocked : return false because type("

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ") is not supported"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p4, "cover switch fail because type("

    .line 62
    .line 63
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isBackCover(Lcom/samsung/android/cover/CoverState;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    iget-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    .line 89
    .line 90
    if-nez p2, :cond_2

    .line 91
    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo p2, "sendCoverSwitchStateLocked : return because this cover is back cover "

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return v0

    .line 111
    :cond_2
    if-eqz p2, :cond_4

    .line 112
    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string/jumbo p2, "sendCoverSwitchStateLocked : return because attach state is changed, but switch is false "

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v0

    .line 134
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    .line 135
    .line 136
    :cond_4
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    const/16 v1, 0x11

    .line 148
    .line 149
    const/16 v3, 0x10

    .line 150
    .line 151
    const/16 v4, 0xf

    .line 152
    .line 153
    const/16 v5, 0x8

    .line 154
    .line 155
    const/4 v6, 0x1

    .line 156
    if-eq p2, v5, :cond_6

    .line 157
    .line 158
    if-eq p2, v4, :cond_6

    .line 159
    .line 160
    if-eq p2, v3, :cond_6

    .line 161
    .line 162
    if-ne p2, v1, :cond_5

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    move p2, v0

    .line 166
    goto :goto_1

    .line 167
    :cond_6
    :goto_0
    move p2, v6

    .line 168
    :goto_1
    const/16 v7, 0xb

    .line 169
    .line 170
    if-nez p2, :cond_7

    .line 171
    .line 172
    if-ne p3, v7, :cond_8

    .line 173
    .line 174
    :cond_7
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 175
    .line 176
    iget-boolean p2, p2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 177
    .line 178
    iget-boolean v8, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    .line 179
    .line 180
    iget-object v9, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 181
    .line 182
    iput-boolean p2, v9, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    .line 183
    .line 184
    iput-boolean v8, v9, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    .line 185
    .line 186
    iget-object p2, v9, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    .line 187
    .line 188
    iget-object v8, v9, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 189
    .line 190
    invoke-virtual {p2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 197
    .line 198
    iget-object v8, p2, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    .line 199
    .line 200
    const-string v9, "cancelHideAnimation()"

    .line 201
    .line 202
    invoke-static {v8, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object p2, p2, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    .line 206
    .line 207
    const/16 v8, 0x66

    .line 208
    .line 209
    invoke-virtual {p2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eq p2, v5, :cond_9

    .line 219
    .line 220
    if-eq p2, v4, :cond_9

    .line 221
    .line 222
    if-eq p2, v3, :cond_9

    .line 223
    .line 224
    if-ne p2, v1, :cond_a

    .line 225
    .line 226
    :cond_9
    move v0, v6

    .line 227
    :cond_a
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 230
    .line 231
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 232
    .line 233
    if-nez v0, :cond_b

    .line 234
    .line 235
    if-ne p3, v7, :cond_d

    .line 236
    .line 237
    iget-boolean v0, v3, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 238
    .line 239
    if-nez v0, :cond_d

    .line 240
    .line 241
    :cond_b
    if-eqz p4, :cond_d

    .line 242
    .line 243
    if-ne p1, v6, :cond_d

    .line 244
    .line 245
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_c

    .line 252
    .line 253
    new-instance p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;

    .line 254
    .line 255
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_c
    invoke-virtual {v3, p3, v6}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_d
    if-eqz p3, :cond_f

    .line 280
    .line 281
    const/4 p4, 0x7

    .line 282
    if-ne p3, p4, :cond_e

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 296
    .line 297
    .line 298
    new-instance p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;

    .line 299
    .line 300
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_f
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, p3, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 321
    .line 322
    .line 323
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string/jumbo p2, "sendCoverSwitchStateLocked : switchState = "

    .line 326
    .line 327
    .line 328
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 332
    .line 333
    iget-boolean p2, p2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 334
    .line 335
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string p2, ", type = "

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 344
    .line 345
    iget p2, p2, Lcom/samsung/android/cover/CoverState;->type:I

    .line 346
    .line 347
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string p2, ", color = "

    .line 351
    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 356
    .line 357
    iget p2, p2, Lcom/samsung/android/cover/CoverState;->color:I

    .line 358
    .line 359
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string p2, ", widthPixel = "

    .line 363
    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 368
    .line 369
    iget p2, p2, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 370
    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string p2, ", heightPixel = "

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 380
    .line 381
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 382
    .line 383
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    return v6
.end method

.method public final setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "CoverManager_CoverManagerServiceImpl"

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 25
    .line 26
    invoke-virtual {v5, v0, v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string/jumbo p0, "setFotaInProgress : caller is invalid"

    .line 33
    .line 34
    .line 35
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v1, "setFotaInProgress : inProgress = "

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    :cond_1
    return v2
.end method

.method public final updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 5

    .line 1
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "updateCoverAttachState : attach="

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ", isBoot="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 53
    .line 54
    if-eq v1, p1, :cond_4

    .line 55
    .line 56
    iput-boolean p1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 86
    .line 87
    if-eq v1, p1, :cond_4

    .line 88
    .line 89
    iput-boolean p1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 93
    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const/4 v2, 0x0

    .line 100
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 101
    .line 102
    iput-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo v3, "updateCoverAttachState : mIsCoverVerified ="

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 113
    .line 114
    const-string v3, ", attached="

    .line 115
    .line 116
    const-string v4, ", change="

    .line 117
    .line 118
    invoke-static {v1, v0, v3, p1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v0, "CoverManager_CoverVerifier"

    .line 129
    .line 130
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter p1

    .line 138
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 139
    .line 140
    .line 141
    monitor-exit p1

    .line 142
    goto :goto_1

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p0

    .line 146
    :cond_5
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 147
    .line 148
    const-string/jumbo p1, "updateCoverAttachState : Returning attach state - it is same"

    .line 149
    .line 150
    .line 151
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void
.end method

.method public final updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "window"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 31
    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    :goto_0
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 68
    .line 69
    const-string/jumbo p1, "updateCoverStateToWindowManagerLocked : wms is null"

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void
.end method

.method public final updateCoverSwitchState(ZZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "updateCoverSwitchState : switchState = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "CoverManager_CoverManagerServiceImpl"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", isBoot = "

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 46
    .line 47
    const-string/jumbo p1, "updateCoverSwitchState : return because this cover is secure cover"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isBackCover(Lcom/samsung/android/cover/CoverState;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    .line 67
    .line 68
    const-string/jumbo p1, "updateCoverSwitchState : return because this cover is back cover"

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :cond_1
    if-nez p2, :cond_3

    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    if-eq v0, v2, :cond_2

    .line 89
    .line 90
    packed-switch v0, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 122
    .line 123
    if-nez v0, :cond_5

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverVerification()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const/4 v2, 0x0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 141
    .line 142
    invoke-virtual {v0, v3, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 146
    .line 147
    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 153
    .line 154
    xor-int/2addr p1, v2

    .line 155
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 156
    .line 157
    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 160
    :cond_6
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 168
    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    if-eqz p2, :cond_7

    .line 172
    .line 173
    const-string p1, "CoverManager_"

    .line 174
    .line 175
    const-string/jumbo p2, "wake up by cover open"

    .line 176
    .line 177
    .line 178
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 182
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide p1

    .line 187
    const-string/jumbo v0, "updateCoverSwitchState"

    .line 188
    .line 189
    .line 190
    const/16 v2, 0x67

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    monitor-exit v1

    .line 196
    return-void

    .line 197
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw p0

    .line 199
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
