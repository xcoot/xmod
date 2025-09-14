.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUTOMATIC_KEEPALIVE_DELAY_SECONDS:I = 0x1e

.field public static final DATA_STALL_RECOVERY_DELAYS_MS:[J

.field public static final DBG:Z

.field static final DEFAULT_LONG_LIVED_TCP_CONNS_EXPENSIVE_TIMEOUT_SEC:I = 0x3c

.field static final DEFAULT_UDP_PORT_4500_NAT_TIMEOUT_SEC_INT:I = 0x12c

.field public static final IKEV2_VPN_RETRY_DELAYS_MS:[J

.field static final MAX_VPN_PROFILE_SIZE_BYTES:I = 0x20000

.field public static final PREFERRED_IKE_PROTOCOL_AUTO:I = 0x0

.field public static final PREFERRED_IKE_PROTOCOL_IPV4_UDP:I = 0x28

.field public static final PREFERRED_IKE_PROTOCOL_IPV6_ESP:I = 0x3d

.field public static final PREFERRED_IKE_PROTOCOL_IPV6_UDP:I = 0x3c

.field static final VPN_APP_EXCLUDED:Ljava/lang/String; = "VPNAPPEXCLUDED_"


# instance fields
.field public final knoxVpnUidRanges:Ljava/util/Set;

.field public mAddress:Ljava/lang/String;

.field protected mAlwaysOn:Z

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

.field public final mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field protected mConfig:Lcom/android/internal/net/VpnConfig;

.field public mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field final mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

.field public mEgressIface:Ljava/lang/String;

.field public volatile mEnableTeardown:Z

.field public final mEventChanges:Landroid/util/LocalLog;

.field public mHttpProxyInfo:Landroid/net/ProxyInfo;

.field public final mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

.field protected mInterface:Ljava/lang/String;

.field public mIsPackageTargetingAtLeastQ:Z

.field public mKnoxAlwaysOn:Z

.field public mLegacyAddress:Ljava/lang/String;

.field public mLegacyState:I

.field protected mLockdown:Z

.field public mLockdownAllowlist:Ljava/util/List;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetd:Landroid/net/INetd;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkInfo:Landroid/net/NetworkInfo;

.field public final mNetworkProvider:Landroid/net/NetworkProvider;

.field public final mNms:Landroid/os/INetworkManagementService;

.field public final mObserver:Lcom/android/server/connectivity/Vpn$1;

.field public mOwnerUID:I

.field protected mPackage:Ljava/lang/String;

.field public mProfileName:Ljava/lang/String;

.field public mStatusIntent:Landroid/app/PendingIntent;

.field public mSwifiConfig:Lcom/android/internal/net/VpnConfig;

.field public final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUserId:I

.field public final mUserIdContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;

.field public mV6Address:Ljava/lang/String;

.field public final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field public final mVpnRules:Lcom/android/server/connectivity/VpnRules;

.field protected mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;


# direct methods
.method public static -$$Nest$magentConnectForKnoxInterface(Lcom/android/server/connectivity/Vpn;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v5, Landroid/net/LinkProperties;

    .line 5
    .line 6
    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 17
    .line 18
    const-string v9, "Vpn"

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/net/LinkAddress;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    instance-of v2, v2, Ljava/net/Inet4Address;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "The ipv4 address added to the knox vpn interface is "

    .line 59
    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v2, v3, v9}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    instance-of v2, v2, Ljava/net/Inet6Address;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, "The ipv6 address added to the knox vpn interface is "

    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2, v3, v9}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v5, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v5, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 147
    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const/16 v2, 0x20

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 187
    .line 188
    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 189
    .line 190
    if-lez v0, :cond_6

    .line 191
    .line 192
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 193
    .line 194
    .line 195
    :cond_6
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 198
    .line 199
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 200
    .line 201
    .line 202
    const/16 v1, 0xc

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 205
    .line 206
    .line 207
    const/4 v1, 0x2

    .line 208
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 209
    .line 210
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 211
    .line 212
    const-string v10, "agentConnect"

    .line 213
    .line 214
    invoke-virtual {p0, v1, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Landroid/net/NetworkAgentConfig$Builder;

    .line 218
    .line 219
    invoke-direct {v1}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    .line 220
    .line 221
    .line 222
    const/4 v11, 0x1

    .line 223
    invoke-virtual {v1, v11}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    filled-new-array {v1}, [I

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 247
    .line 248
    .line 249
    new-instance v1, Landroid/net/VpnTransportInfo;

    .line 250
    .line 251
    const/4 v2, 0x4

    .line 252
    const/4 v12, 0x0

    .line 253
    invoke-direct {v1, v2, v12}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 264
    .line 265
    new-instance v13, Lcom/android/server/connectivity/Vpn$2;

    .line 266
    .line 267
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 268
    .line 269
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 270
    .line 271
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 272
    .line 273
    new-instance v0, Landroid/net/NetworkScore$Builder;

    .line 274
    .line 275
    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 276
    .line 277
    .line 278
    const/16 v1, 0x65

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 289
    .line 290
    move-object v0, v13

    .line 291
    move-object v1, p0

    .line 292
    invoke-direct/range {v0 .. v8}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 293
    .line 294
    .line 295
    iput-object v13, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 296
    .line 297
    new-instance v0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda2;

    .line 298
    .line 299
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 306
    .line 307
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 308
    .line 309
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 310
    .line 311
    if-eqz v1, :cond_7

    .line 312
    .line 313
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    :cond_7
    invoke-virtual {v0, v12}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 321
    .line 322
    invoke-virtual {p0, v0, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 326
    .line 327
    .line 328
    move-result-wide v0

    .line 329
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 330
    .line 331
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    const-string/jumbo v3, "com.samsung.sVpn"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    .line 345
    .line 346
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    .line 347
    .line 348
    .line 349
    const-string/jumbo v4, "tun_info"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    .line 354
    .line 355
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 356
    .line 357
    if-eqz v3, :cond_8

    .line 358
    .line 359
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    goto :goto_3

    .line 366
    :catchall_0
    move-exception p0

    .line 367
    goto :goto_6

    .line 368
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 369
    .line 370
    if-eqz v3, :cond_9

    .line 371
    .line 372
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    :cond_9
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    .line 383
    .line 384
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.TUN_ADDRESS_INTERNAL"

    .line 385
    .line 386
    .line 387
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.TUNV6_ADDRESS_INTERNAL"

    .line 393
    .line 394
    .line 395
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.VPN_CLIENT_TYPE_INTERNAL"

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    .line 405
    .line 406
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    new-instance v4, Landroid/os/UserHandle;

    .line 409
    .line 410
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 411
    .line 412
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 413
    .line 414
    .line 415
    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_VPN_SOLUTION"

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v2, v4, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .line 420
    .line 421
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    .line 423
    .line 424
    goto :goto_5

    .line 425
    :catch_0
    :try_start_1
    const-string/jumbo p0, "unable to send interface details"

    .line 426
    .line 427
    .line 428
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .line 430
    .line 431
    goto :goto_4

    .line 432
    :goto_5
    return-void

    .line 433
    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    .line 435
    .line 436
    throw p0
.end method

.method public static -$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "com.android.settings"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v2, "state"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "reason"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string v1, "android.permission.NETWORK_SETTINGS"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v0, "send state="

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ", reason="

    .line 56
    .line 57
    const-string v0, "Vpn"

    .line 58
    .line 59
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static -$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    const-string p0, "IKEV2_FROM_IKE_TUN_CONN_PARAMS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    const-string p0, "IKEV2_IPSEC_EAP_TLS"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_2
    const-string p0, "IKEV2_IPSEC_RSA"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    const-string p0, "IKEV2_IPSEC_PSK"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_4
    const-string p0, "IKEV2_IPSEC_USER_PASS"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_5
    const-string p0, "IPSEC_HYBRID_RSA"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_6
    const-string p0, "IPSEC_XAUTH_RSA"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_7
    const-string p0, "IPSEC_XAUTH_PSK"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_8
    const-string p0, "L2TP_IPSEC_RSA"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_9
    const-string p0, "L2TP_IPSEC_PSK"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_a
    const-string p0, "PPTP"

    .line 41
    .line 42
    :goto_0
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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

.method public static bridge synthetic -$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static -$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static -$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 2
    .line 3
    const-string/jumbo v1, "setupIpRulesForCcMode: v4="

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    const-string/jumbo v2, "setupIpRulesForCcMode: "

    .line 13
    .line 14
    .line 15
    const-string v3, ", "

    .line 16
    .line 17
    invoke-static {v2, p1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "Vpn"

    .line 37
    .line 38
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEnabled(Z)V

    .line 42
    .line 43
    .line 44
    const/16 v2, 0x1f4

    .line 45
    .line 46
    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const/16 v4, 0x1194

    .line 50
    .line 51
    invoke-virtual {v0, v4, p1, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(ILjava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x6a5

    .line 55
    .line 56
    invoke-virtual {v0, v5, p1, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallInterfaceRule(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, p0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    if-nez p1, :cond_0

    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    .line 87
    .line 88
    const-string v1, "64:ff9b::"

    .line 89
    .line 90
    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "\\."

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_0
    const/4 v6, 0x4

    .line 101
    if-ge v1, v6, :cond_2

    .line 102
    .line 103
    aget-object v6, p1, v1

    .line 104
    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x1

    .line 117
    if-ne v1, v6, :cond_1

    .line 118
    .line 119
    const-string v6, ":"

    .line 120
    .line 121
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :goto_1
    invoke-virtual {v0, v2, p0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v4, p0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(ILjava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v5, p0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(ILjava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo p1, "fe80::/64"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    const-string p1, "2000::/4"

    .line 147
    .line 148
    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string/jumbo p2, "setupIpRulesForCcMode: v6="

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_0
    move-exception p0

    .line 174
    const-string p1, "Failed to set firewall rule: "

    .line 175
    .line 176
    invoke-static {p0, p1, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/connectivity/Vpn;->DATA_STALL_RECOVERY_DELAYS_MS:[J

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x3e8
        0x7d0
        0x1388
        0x7530
        0xea60
        0x493e0
        0xdbba0
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_1
    .array-data 8
        0x3e8
        0x1388
        0x7530
        0xea60
        0x1d4c0
        0x3a980
        0x75300
        0xea600
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .locals 10

    .line 1
    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    move-object v2, p2

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mKnoxAlwaysOn:Z

    .line 9
    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 10
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    .line 11
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 12
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 14
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 15
    new-instance v3, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Lcom/android/server/connectivity/Vpn$1;

    .line 16
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 17
    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 18
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 19
    const-class p7, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/net/ConnectivityManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    const-class p7, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 21
    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p7

    invoke-virtual {p2, p7, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p7

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 22
    const-class p7, Landroid/net/ConnectivityDiagnosticsManager;

    .line 23
    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/net/ConnectivityDiagnosticsManager;

    .line 24
    const-class p7, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/telephony/CarrierConfigManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 25
    const-class p7, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/telephony/TelephonyManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 26
    const-class p7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/telephony/SubscriptionManager;

    .line 27
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 28
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    .line 29
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    .line 30
    iput p6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 31
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 32
    iput-object p8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 33
    iput-object p9, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 34
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 35
    const-string p3, "[Legacy VPN]"

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 36
    invoke-static {p2, p3, p6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 37
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 38
    new-instance p3, Lcom/android/server/connectivity/VpnRules;

    .line 39
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object p5, p3, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez p5, :cond_0

    .line 41
    invoke-virtual {p3}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    .line 42
    :cond_0
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 43
    :try_start_0
    invoke-interface {p4, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 44
    const-string p4, "Vpn"

    const-string p5, "Problem registering observer"

    invoke-static {p4, p5, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :goto_0
    new-instance p3, Landroid/net/NetworkProvider;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "VpnNetworkProvider:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p1, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 46
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p3}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 47
    iput v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 48
    new-instance p1, Landroid/net/NetworkInfo;

    const-string p2, ""

    const/16 p3, 0x11

    const-string p4, "VPN"

    invoke-direct {p1, p3, v2, p4, p2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 49
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 p2, 0x4

    .line 50
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 51
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0x1c

    .line 52
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    new-instance p2, Landroid/net/VpnTransportInfo;

    const/4 p3, -0x1

    invoke-direct {p2, p3, v1, v2, v2}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 55
    iget p1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 56
    :try_start_1
    const-string p5, "always_on_vpn_app"

    .line 57
    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p6

    .line 58
    invoke-static {p6, p5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 59
    const-string p6, "always_on_vpn_lockdown"

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p7

    .line 61
    invoke-static {p7, p6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 62
    :goto_1
    const-string p6, "always_on_vpn_lockdown_whitelist"

    .line 63
    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 66
    :goto_2
    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;Ljava/util/List;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0
.end method

.method public static buildCertificatePathFromRoot(Ljava/security/cert/X509Certificate;Ljava/security/KeyStore;Ljava/util/List;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p2

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->buildCertificatePathFromRoot(Ljava/security/cert/X509Certificate;Ljava/security/KeyStore;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-void
.end method

.method public static buildVpnManagerEventIntent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "buildVpnManagerEventIntent: sessionKey = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Vpn"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "android.net.action.VPN_MANAGER_EVENT"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p3, "android.net.extra.VPN_PROFILE_STATE"

    .line 35
    .line 36
    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p3, "android.net.extra.SESSION_KEY"

    .line 40
    .line 41
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string p3, "android.net.extra.UNDERLYING_NETWORK"

    .line 45
    .line 46
    invoke-virtual {v0, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string p3, "android.net.extra.UNDERLYING_NETWORK_CAPABILITIES"

    .line 50
    .line 51
    invoke-virtual {v0, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string p3, "android.net.extra.UNDERLYING_LINK_PROPERTIES"

    .line 55
    .line 56
    invoke-virtual {v0, p3, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string p3, "android.net.extra.TIMESTAMP_MILLIS"

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide p4

    .line 65
    invoke-virtual {v0, p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string p3, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    .line 69
    .line 70
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_0

    .line 75
    .line 76
    const-string p3, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    .line 77
    .line 78
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_1

    .line 83
    .line 84
    :cond_0
    const-string p0, "android.net.extra.ERROR_CLASS"

    .line 85
    .line 86
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string p0, "android.net.extra.ERROR_CODE"

    .line 90
    .line 91
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    :cond_1
    return-object v0
.end method

.method public static convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v2, v0, :cond_1

    .line 19
    .line 20
    sub-int v4, v0, v3

    .line 21
    .line 22
    const/16 v5, 0x40

    .line 23
    .line 24
    if-ge v4, v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v4, v5

    .line 28
    :goto_1
    add-int/2addr v3, v4

    .line 29
    invoke-static {v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    add-int/2addr v4, v2

    .line 34
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, "\n"

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    add-int/lit8 v2, v2, 0x40

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p0, "-----BEGIN CERTIFICATE-----\n"

    .line 54
    .line 55
    const-string v0, "-----END CERTIFICATE-----"

    .line 56
    .line 57
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string v0, "Failed to convertToPemCert: "

    .line 64
    .line 65
    const-string v1, "Vpn"

    .line 66
    .line 67
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public static createUidRangeForUser(I)Landroid/util/Range;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Range;

    .line 2
    .line 3
    const v1, 0x186a0

    .line 4
    .line 5
    .line 6
    mul-int v2, p0, v1

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    add-int/lit8 p0, p0, 0x1

    .line 13
    .line 14
    mul-int/2addr p0, v1

    .line 15
    add-int/lit8 p0, p0, -0x1

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public static doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public static doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "appops"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroid/app/AppOpsManager;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, p2

    .line 17
    move-object v3, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public static getAppUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .line 1
    const-string v0, "[Legacy VPN]"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const/4 v2, -0x1

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :catch_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return v2
.end method

.method public static getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 17
    .line 18
    new-array v0, v2, [Ljava/security/cert/Certificate;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object p0, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    array-length p1, p0

    .line 40
    if-gt p1, v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 44
    .line 45
    array-length v0, p0

    .line 46
    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Ljava/security/cert/Certificate;

    .line 51
    .line 52
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 57
    .line 58
    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    .line 1
    const-string/jumbo v0, "knox_vpn_policy"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Vpn"

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-gtz v2, :cond_1

    .line 11
    .line 12
    :cond_0
    :goto_0
    move-object p1, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :try_start_0
    const-string/jumbo v2, "com.samsung.ucs.ucsservice"

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p1, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :try_start_1
    const-string v2, "X.509"

    .line 39
    .line 40
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 45
    .line 46
    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    const-string v2, "Failed to toCertificate"

    .line 58
    .line 59
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p1

    .line 64
    const-string v2, "Failed to getUCMCertificate"

    .line 65
    .line 66
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    if-eqz p1, :cond_4

    .line 71
    .line 72
    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-lez v2, :cond_3

    .line 77
    .line 78
    const-string v2, "CACERT_"

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :catch_2
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const-string v2, "USRCERT_"

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 105
    return-object p0

    .line 106
    :goto_2
    const-string p1, "Failed to convertToPemCert, "

    .line 107
    .line 108
    invoke-static {p0, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    const-string p0, "Failed to getCcmCertificate"

    .line 112
    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public static isVpnApp(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "[Legacy VPN]"

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniCreateSecureWifi(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput v3, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 16
    .line 17
    const-wide/16 v3, -0x1

    .line 18
    .line 19
    iput-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 20
    .line 21
    iput-object p0, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, v2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 24
    .line 25
    const/16 p0, 0x3f8

    .line 26
    .line 27
    const/16 v0, 0x104

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1, v2, p0, v0}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iget-wide v0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/security/KeyStore2;->makeKeystoreEngineGrantString(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string v0, "Vpn"

    .line 42
    .line 43
    const-string v1, "Failed to get grant for keystore key."

    .line 44
    .line 45
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/util/Range;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized addAddress(ILjava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2, v0}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/Vpn;->getAppsUids(ILjava/util/List;)Ljava/util/SortedSet;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/TreeSet;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p2, -0x1

    .line 14
    move p3, p2

    .line 15
    move p4, p3

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne p3, p2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v1, p4, 0x1

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Landroid/util/Range;

    .line 40
    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-direct {v1, p3, p4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :goto_1
    move p3, v0

    .line 56
    :cond_1
    move p4, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-eq p3, p2, :cond_7

    .line 59
    .line 60
    new-instance p0, Landroid/util/Range;

    .line 61
    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    if-eqz p4, :cond_6

    .line 78
    .line 79
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, p2, p4}, Lcom/android/server/connectivity/Vpn;->getAppsUids(ILjava/util/List;)Ljava/util/SortedSet;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/util/TreeSet;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_5

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-ne p2, v0, :cond_4

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-instance p4, Landroid/util/Range;

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    add-int/lit8 v1, p2, -0x1

    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {p4, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 p2, p2, 0x1

    .line 143
    .line 144
    move v0, p2

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-gt v0, p0, :cond_7

    .line 157
    .line 158
    new-instance p0, Landroid/util/Range;

    .line 159
    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    check-cast p3, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_6
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_3
    return-void
.end method

.method public final agentConnect(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 10
    .line 11
    invoke-direct {v0, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0xc

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    iput v2, v1, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 21
    .line 22
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 23
    .line 24
    const-string v11, "agentConnect"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v11}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 30
    .line 31
    iget-boolean v2, v2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v12, 0x0

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-boolean v2, v1, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    move v2, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v2, v12

    .line 44
    :goto_0
    new-instance v4, Landroid/net/NetworkAgentConfig$Builder;

    .line 45
    .line 46
    invoke-direct {v4}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    const/16 v5, 0x11

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "VPN"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4, v2}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 66
    .line 67
    iget-boolean v5, v5, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/net/NetworkAgentConfig$Builder;->setVpnRequiresValidation(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 74
    .line 75
    iget-boolean v5, v5, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroid/net/NetworkAgentConfig$Builder;->setLocalRoutesExcludedForVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v7, "VPN:"

    .line 84
    .line 85
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    iget v4, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 106
    .line 107
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 108
    .line 109
    .line 110
    iget v4, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 111
    .line 112
    filled-new-array {v4}, [I

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 117
    .line 118
    .line 119
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 120
    .line 121
    iget-object v5, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 122
    .line 123
    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 124
    .line 125
    iget v7, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 126
    .line 127
    invoke-virtual {v1, v7, v5, v4}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_2

    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->cleanPortBypassRule()V

    .line 141
    .line 142
    .line 143
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 144
    .line 145
    iget-boolean v4, v4, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 146
    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    const-string v4, "Vpn"

    .line 150
    .line 151
    const-string v5, "Apply port bypass rules for Secure Wi-Fi"

    .line 152
    .line 153
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 157
    .line 158
    iget v14, v5, Lcom/android/internal/net/VpnConfig;->dport:I

    .line 159
    .line 160
    iget v15, v5, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 161
    .line 162
    iget v7, v5, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 163
    .line 164
    iget v9, v5, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 165
    .line 166
    iget-object v10, v5, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 171
    .line 172
    const/16 v20, 0x1

    .line 173
    .line 174
    move/from16 v16, v7

    .line 175
    .line 176
    move/from16 v17, v9

    .line 177
    .line 178
    move-object/from16 v18, v10

    .line 179
    .line 180
    move-object/from16 v19, v5

    .line 181
    .line 182
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/connectivity/VpnRules;->setTcpPortBypassRule(IIIILjava/lang/String;Ljava/lang/String;Z)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 187
    .line 188
    iget v9, v7, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 189
    .line 190
    if-eq v9, v5, :cond_1

    .line 191
    .line 192
    iput v5, v7, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 193
    .line 194
    if-lez v5, :cond_1

    .line 195
    .line 196
    const-string v7, "Applied port bypass rules with new fwmark = "

    .line 197
    .line 198
    invoke-static {v5, v7, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_1
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 202
    .line 203
    iput-object v4, v1, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    .line 204
    .line 205
    :cond_2
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 206
    .line 207
    instance-of v5, v4, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 208
    .line 209
    if-nez v5, :cond_4

    .line 210
    .line 211
    :cond_3
    move v3, v12

    .line 212
    goto :goto_1

    .line 213
    :cond_4
    check-cast v4, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 214
    .line 215
    sget v5, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->$r8$clinit:I

    .line 216
    .line 217
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getOrGuessKeepaliveDelaySeconds()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    const/16 v5, 0x3c

    .line 222
    .line 223
    if-ge v4, v5, :cond_3

    .line 224
    .line 225
    :goto_1
    new-instance v4, Landroid/net/VpnTransportInfo;

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 232
    .line 233
    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 234
    .line 235
    invoke-direct {v4, v5, v7, v2, v3}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 239
    .line 240
    .line 241
    iget-boolean v2, v1, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 242
    .line 243
    const/16 v3, 0xb

    .line 244
    .line 245
    if-eqz v2, :cond_5

    .line 246
    .line 247
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 248
    .line 249
    iget-boolean v2, v2, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 250
    .line 251
    if-eqz v2, :cond_5

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_5
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 258
    .line 259
    .line 260
    :goto_2
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 261
    .line 262
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 263
    .line 264
    const/4 v13, 0x0

    .line 265
    if-eqz v2, :cond_6

    .line 266
    .line 267
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    goto :goto_3

    .line 272
    :cond_6
    move-object v2, v13

    .line 273
    :goto_3
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn;->logUnderlyNetworkChanges(Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 290
    .line 291
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 294
    .line 295
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 296
    .line 297
    new-instance v2, Landroid/net/NetworkScore$Builder;

    .line 298
    .line 299
    invoke-direct {v2}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 300
    .line 301
    .line 302
    const/16 v7, 0x65

    .line 303
    .line 304
    invoke-virtual {v2, v7}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    new-instance v0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 318
    .line 319
    move-object v2, v0

    .line 320
    move-object/from16 v10, p1

    .line 321
    .line 322
    invoke-direct/range {v2 .. v10}, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 323
    .line 324
    .line 325
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 326
    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 328
    .line 329
    .line 330
    move-result-wide v2

    .line 331
    :try_start_0
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 334
    .line 335
    .line 336
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    .line 338
    .line 339
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    .line 340
    .line 341
    if-eqz v0, :cond_9

    .line 342
    .line 343
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :try_start_2
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .line 346
    if-nez v2, :cond_7

    .line 347
    .line 348
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 349
    :goto_4
    move v2, v12

    .line 350
    goto :goto_5

    .line 351
    :cond_7
    :try_start_4
    invoke-virtual {v2}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 352
    .line 353
    .line 354
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 355
    if-nez v2, :cond_8

    .line 356
    .line 357
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 358
    goto :goto_4

    .line 359
    :cond_8
    :try_start_6
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    .line 360
    .line 361
    .line 362
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 363
    :try_start_7
    monitor-exit p0

    .line 364
    :goto_5
    iget v3, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 365
    .line 366
    invoke-interface {v0, v2, v12, v3}, Landroid/os/INetworkManagementService;->setNetworkInfo(IZI)V

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :catchall_0
    move-exception v0

    .line 371
    monitor-exit p0

    .line 372
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 373
    :catch_0
    :cond_9
    :goto_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 374
    .line 375
    invoke-virtual {v1, v0, v11}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 379
    .line 380
    instance-of v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 381
    .line 382
    if-eqz v2, :cond_a

    .line 383
    .line 384
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 387
    .line 388
    if-eqz v0, :cond_a

    .line 389
    .line 390
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 391
    .line 392
    invoke-virtual {v1}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSession;->setUnderpinnedNetwork(Landroid/net/Network;)V

    .line 399
    .line 400
    .line 401
    :cond_a
    return-void

    .line 402
    :catchall_1
    move-exception v0

    .line 403
    goto :goto_7

    .line 404
    :catch_1
    move-exception v0

    .line 405
    :try_start_8
    iput-object v13, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 406
    .line 407
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 408
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    .line 410
    .line 411
    throw v0
.end method

.method public final agentDisconnect$1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanPortBypassRule()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    .line 6
    const-string v1, "agentDisconnect"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getknoxVpnTypeForStrongswanProfile()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 18
    .line 19
    const-string v1, "Exception: "

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string/jumbo v2, "notification"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/app/NotificationManager;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v4, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-ne v4, v5, :cond_0

    .line 48
    .line 49
    const-string v4, "Knox_SS_Notification"

    .line 50
    .line 51
    new-instance v5, Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const v0, 0x186a0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v4, v0, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    new-instance v4, Landroid/os/UserHandle;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    const v5, 0x1080d0d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_1
    :try_start_1
    const-string v0, "Vpn"

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_1
    :goto_3
    return-void
.end method

.method public final applyBlockingRulesToUidRange(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "Updating blocked="

    .line 11
    .line 12
    const-string v2, " for UIDs "

    .line 13
    .line 14
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 19
    .line 20
    check-cast p0, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, " failed"

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "Vpn"

    .line 43
    .line 44
    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final cleanPortBypassRule()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v0, v0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Vpn"

    .line 14
    .line 15
    const-string v1, "Clean port bypass rules for Secure Wi-Fi"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    .line 21
    .line 22
    iget v2, v0, Lcom/android/internal/net/VpnConfig;->dport:I

    .line 23
    .line 24
    iget v3, v0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 25
    .line 26
    iget v4, v0, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 27
    .line 28
    iget v5, v0, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 29
    .line 30
    iget-object v6, v0, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v7, v0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/VpnRules;->setTcpPortBypassRule(IIIILjava/lang/String;Ljava/lang/String;Z)I

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final cleanupVpnStateLocked()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 3
    .line 4
    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/net/VpnTransportInfo;

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v2, v3, v0, v4, v4}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x1041023

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const v2, 0x1041021

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const v3, 0x1041022

    .line 29
    .line 30
    .line 31
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    new-instance v2, Landroid/app/Notification$Builder;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const p0, 0x1080d0d

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 88
    .line 89
    or-int/lit8 p1, p1, 0x62

    .line 90
    .line 91
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 92
    .line 93
    :cond_1
    return-object p0
.end method

.method public createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, -0x2710

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const-string v1, "Vpn"

    .line 32
    .line 33
    const-string v2, "Add uid on dualAppProfile"

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-class v4, Landroid/os/UserManager;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/os/UserManager;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/os/UserManager;->canHaveRestrictedProfile()Z

    .line 69
    .line 70
    .line 71
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_1

    .line 111
    .line 112
    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 113
    .line 114
    if-ne v3, p1, :cond_1

    .line 115
    .line 116
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 117
    .line 118
    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_2
    return-object v0

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final declared-synchronized deleteVpnProfile(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "No package name provided"

    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0, v3, v3, v2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v2, "[Legacy VPN]"

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :goto_2
    monitor-exit p0

    .line 63
    throw p1
.end method

.method public final doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "[Legacy VPN]"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {v0, p1, v2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    const/16 p1, 0x1d

    .line 27
    .line 28
    if-lt p0, p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_0
    return v1

    .line 33
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Can\'t find \""

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "\""

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "Vpn"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v2
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "mCachedCarrierConfigInfoPerSubId="

    .line 2
    .line 3
    .line 4
    const-string v1, "Validation failed retry count:"

    .line 5
    .line 6
    const-string v2, "Token: "

    .line 7
    .line 8
    const-string v3, "Profile: "

    .line 9
    .line 10
    const-string v4, "MOBIKE "

    .line 11
    .line 12
    const-string v5, "SessionKey: "

    .line 13
    .line 14
    const-string v6, "NetworkCapabilities: "

    .line 15
    .line 16
    const-string v7, "Active vpn type: "

    .line 17
    .line 18
    const-string v8, "Active package name: "

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 63
    .line 64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 75
    .line 76
    instance-of v7, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 77
    .line 78
    if-eqz v7, :cond_1

    .line 79
    .line 80
    check-cast v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 81
    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v5, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-boolean v5, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 100
    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    const-string/jumbo v5, "enabled"

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    const-string/jumbo v5, "disabled"

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget v2, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v1, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v6, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 171
    .line 172
    if-eqz v1, :cond_1

    .line 173
    .line 174
    const-string v1, "Reset session scheduled"

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 180
    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string/jumbo v0, "mEventChanges (most recent first):"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 209
    .line 210
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 214
    .line 215
    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 218
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw p1
.end method

.method public final enforceControlPermission()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiCalling()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Vpn"

    .line 8
    .line 9
    const-string/jumbo v0, "enforceControlPermission for fast"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v0, "android.permission.CONTROL_VPN"

    .line 19
    .line 20
    const-string v1, "Unauthorized Caller"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final enforceControlPermissionOrInternalCaller()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiCalling()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Vpn"

    .line 8
    .line 9
    const-string/jumbo v0, "enforceControlPermissionOrInternalCaller for fast"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v0, "android.permission.CONTROL_VPN"

    .line 19
    .line 20
    const-string v1, "Unauthorized Caller"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final enforceNotRestrictedUser()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string v2, "Restricted users cannot configure VPNs"

    .line 26
    .line 27
    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 13

    .line 1
    const-string v0, " does not require android.permission.BIND_VPN_SERVICE"

    .line 2
    .line 3
    const-string v1, "Cannot find "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v4

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 20
    .line 21
    const-string v5, "android:activate_vpn"

    .line 22
    .line 23
    invoke-static {v2, v3, v5}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-object v4

    .line 31
    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v3, "android.net.VpnService"

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 50
    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_f

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_e

    .line 66
    .line 67
    const-string v1, "android.permission.BIND_VPN_SERVICE"

    .line 68
    .line 69
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 70
    .line 71
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    if-eqz v1, :cond_d

    .line 78
    .line 79
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 97
    .line 98
    iget v7, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->jniCreateSecureWifi(I)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    :goto_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 119
    .line 120
    .line 121
    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :try_start_5
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 123
    .line 124
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-eqz v10, :cond_3

    .line 151
    .line 152
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    check-cast v10, Landroid/net/LinkAddress;

    .line 157
    .line 158
    const-string v11, " "

    .line 159
    .line 160
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catchall_0
    move-exception p1

    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :catch_0
    move-exception p1

    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :cond_3
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    const/4 v9, 0x1

    .line 187
    if-lt v8, v9, :cond_b

    .line 188
    .line 189
    new-instance v8, Lcom/android/server/connectivity/Vpn$Connection;

    .line 190
    .line 191
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 192
    .line 193
    .line 194
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    new-instance v10, Landroid/os/UserHandle;

    .line 197
    .line 198
    iget v11, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 199
    .line 200
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 201
    .line 202
    .line 203
    const v11, 0x4000001

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v2, v8, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_a

    .line 211
    .line 212
    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 213
    .line 214
    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 217
    .line 218
    iput-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 219
    .line 220
    iput-object v7, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 223
    .line 224
    .line 225
    move-result-wide v8

    .line 226
    iput-wide v8, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 227
    .line 228
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_4

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updatePortBypassConfigs()V

    .line 237
    .line 238
    .line 239
    :cond_4
    if-eqz v0, :cond_5

    .line 240
    .line 241
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 242
    .line 243
    invoke-virtual {p0, v2, v0}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_5

    .line 248
    .line 249
    iget-object v2, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 250
    .line 251
    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 252
    .line 253
    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_6

    .line 258
    .line 259
    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 260
    .line 261
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_5
    const-string/jumbo v2, "establish"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v4, v2}, Lcom/android/server/connectivity/Vpn;->startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 272
    .line 273
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    .line 277
    .line 278
    :cond_7
    if-eqz v1, :cond_8

    .line 279
    .line 280
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_8

    .line 285
    .line 286
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_8
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 290
    .line 291
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    iget-boolean v8, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 301
    .line 302
    .line 303
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 304
    .line 305
    if-eq v4, v2, :cond_9

    .line 306
    .line 307
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 308
    .line 309
    const-string v8, "android:establish_vpn_service"

    .line 310
    .line 311
    iget v9, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 312
    .line 313
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 314
    .line 315
    const/4 v11, 0x0

    .line 316
    const/4 v12, 0x0

    .line 317
    invoke-virtual/range {v7 .. v12}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    .line 319
    .line 320
    :cond_9
    :try_start_6
    const-string v0, "Vpn"

    .line 321
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v2, "Established by "

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string p1, " on "

    .line 338
    .line 339
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 352
    .line 353
    .line 354
    monitor-exit p0

    .line 355
    return-object v6

    .line 356
    :cond_a
    :try_start_7
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 357
    .line 358
    new-instance v7, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v8, "Cannot bind "

    .line 364
    .line 365
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v2

    .line 381
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 382
    .line 383
    const-string v2, "At least one address must be specified"

    .line 384
    .line 385
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 389
    :goto_3
    :try_start_8
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 390
    .line 391
    .line 392
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 393
    .line 394
    if-eq v4, v2, :cond_c

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 397
    .line 398
    .line 399
    :cond_c
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 400
    .line 401
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 402
    .line 403
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 404
    .line 405
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 406
    .line 407
    invoke-direct {v0, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 419
    .line 420
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 421
    .line 422
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 423
    .line 424
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 425
    :cond_d
    :try_start_9
    new-instance v1, Ljava/lang/SecurityException;

    .line 426
    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw v1

    .line 448
    :catchall_1
    move-exception p1

    .line 449
    goto :goto_4

    .line 450
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    .line 451
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0

    .line 470
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 471
    .line 472
    const-string v0, "Cannot get PackageManager."

    .line 473
    .line 474
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 478
    :goto_4
    :try_start_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    .line 480
    .line 481
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 482
    :goto_5
    monitor-exit p0

    .line 483
    throw p1
.end method

.method public final declared-synchronized getActiveVpnType()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    const/4 p0, 0x4

    .line 21
    return p0

    .line 22
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    :try_start_3
    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/4 v0, 0x3

    .line 36
    :goto_0
    monitor-exit p0

    .line 37
    return v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method

.method public final declared-synchronized getAlwaysOn()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :goto_1
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final declared-synchronized getAppExclusionList(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    array-length v2, p1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v2, "COLLECTION_LENGTH"

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v2, :cond_1

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "LIST_ITEM_%d"

    .line 56
    .line 57
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {p1, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "PersistableBundle is null"

    .line 66
    .line 67
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v6, "STRING_KEY"

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-object v3

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_4

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    :goto_1
    :try_start_3
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    .line 97
    .line 98
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .line 100
    .line 101
    monitor-exit p0

    .line 102
    return-object p1

    .line 103
    :goto_2
    :try_start_5
    const-string v2, "Vpn"

    .line 104
    .line 105
    const-string/jumbo v3, "problem reading from stream"

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    .line 110
    .line 111
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    .line 118
    .line 119
    monitor-exit p0

    .line 120
    return-object p1

    .line 121
    :goto_3
    :try_start_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 125
    :goto_4
    monitor-exit p0

    .line 126
    throw p1
.end method

.method public final getAppsUids(ILjava/util/List;)Ljava/util/SortedSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2, v1, p1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {v1}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method

.method public getEnableTeardown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 2
    .line 3
    return p0
.end method

.method public final declared-synchronized getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 23
    .line 24
    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit p0

    .line 42
    return-object v0

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public final declared-synchronized getLockdown()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getLockdownAllowlist()Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :goto_1
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public declared-synchronized getNetwork()Landroid/net/Network;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v1

    .line 17
    :cond_1
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final declared-synchronized getPackage()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PLATFORM_VPN_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "_"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getSessionKeyLocked()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "getSessionKeyLocked: isIkev2VpnRunner = "

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", sessionKey = "

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "Vpn"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public final declared-synchronized getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/net/UnderlyingNetworkInfo;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Landroid/net/UnderlyingNetworkInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit p0

    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VPNAPPEXCLUDED_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "_"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final declared-synchronized getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnConfig;-><init>(Lcom/android/internal/net/VpnConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_0
    const-string p1, ""

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string p0, "Vpn"

    .line 38
    .line 39
    const-string/jumbo p1, "getVpnProfilePrivileged called as non-System UID "

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-object v2
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getknoxVpnTypeForStrongswanProfile()Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    .line 2
    .line 3
    const-string v1, "Vpn"

    .line 4
    .line 5
    const-string/jumbo v2, "getknoxVpnTypeForStrongswanProfile vendorOwningProfile value is "

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "getknoxVpnTypeForStrongswanProfile: profile name is "

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x1

    .line 18
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-eqz v6, :cond_5

    .line 23
    .line 24
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v6, :cond_5

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v3, v6}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_1
    if-eqz v3, :cond_5

    .line 78
    .line 79
    const-string/jumbo v2, "com.android.vpndialogs"

    .line 80
    .line 81
    .line 82
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 83
    .line 84
    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const-string/jumbo v4, "com.samsung.sVpn"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_2

    .line 96
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-ne v2, v3, :cond_5

    .line 106
    .line 107
    :cond_2
    if-eqz v0, :cond_3

    .line 108
    .line 109
    const-string v2, "Caller is either the strongswan proxy or the vpn dialog app"

    .line 110
    .line 111
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    if-nez p0, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    if-ne p0, v5, :cond_5

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    goto :goto_2

    .line 131
    :goto_1
    if-eqz v0, :cond_5

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "Exception at checkIfStrongswanProfileIsKnoxBased "

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v2, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 144
    .line 145
    const-string/jumbo p0, "getknoxVpnTypeForStrongswanProfile profileType value is "

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :cond_6
    return v5
.end method

.method public final isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.NETWORK_SETTINGS"

    .line 6
    .line 7
    const-string v3, "Unauthorized Caller"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    .line 21
    .line 22
    .line 23
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return v5

    .line 31
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :try_start_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "Can\'t find \""

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, "\" when checking always-on support"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "Vpn"

    .line 65
    .line 66
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    :goto_0
    if-eqz v2, :cond_6

    .line 71
    .line 72
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 73
    .line 74
    const/16 v3, 0x18

    .line 75
    .line 76
    if-ge v2, v3, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .line 80
    .line 81
    const-string v3, "android.net.VpnService"

    .line 82
    .line 83
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const/16 p1, 0x80

    .line 90
    .line 91
    invoke-virtual {p0, v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 119
    .line 120
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 121
    .line 122
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    const-string v0, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    .line 127
    .line 128
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_4

    .line 133
    .line 134
    return v1

    .line 135
    :cond_5
    return v5

    .line 136
    :cond_6
    :goto_1
    return v1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public isCallerEstablishedOwnerLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 14
    .line 15
    if-ne v0, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final isCurrentIkev2VpnLocked(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 8
    .line 9
    instance-of p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isCurrentPreparedPackage(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isSecureWifiCalling()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "com.samsung.android.fast"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string v2, "android"

    .line 33
    .line 34
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_0
    const-string p0, "Vpn"

    .line 43
    .line 44
    const-string/jumbo v0, "isSecureWifiCalling: signature mismatched"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :cond_1
    return v1
.end method

.method public final isSecureWifiPackage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.fast"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "android"

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "Vpn"

    .line 29
    .line 30
    const-string v0, "Secure Wi-Fi signature mismatched"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final isSettingsVpnLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[Legacy VPN]"

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final logUnderlyNetworkChanges(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "[UnderlyingNW] Switch to "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p1, "null"

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final makeLinkProperties()Landroid/net/LinkProperties;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 10
    .line 11
    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 12
    .line 13
    const/16 v3, 0x500

    .line 14
    .line 15
    if-ge v0, v3, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 23
    .line 24
    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 25
    .line 26
    new-instance v5, Landroid/net/LinkProperties;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 37
    .line 38
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroid/net/LinkAddress;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v7}, Landroid/net/LinkAddress;->isIpv6()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v5, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    instance-of v8, v8, Ljava/net/Inet4Address;

    .line 75
    .line 76
    or-int/2addr v4, v8

    .line 77
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    instance-of v7, v7, Ljava/net/Inet6Address;

    .line 82
    .line 83
    or-int/2addr v3, v7

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 86
    .line 87
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_5

    .line 100
    .line 101
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Landroid/net/RouteInfo;

    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    instance-of v9, v8, Ljava/net/Inet6Address;

    .line 118
    .line 119
    if-eqz v9, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {v5, v7}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getType()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-ne v7, v1, :cond_3

    .line 130
    .line 131
    instance-of v7, v8, Ljava/net/Inet4Address;

    .line 132
    .line 133
    or-int/2addr v4, v7

    .line 134
    instance-of v7, v8, Ljava/net/Inet6Address;

    .line 135
    .line 136
    or-int/2addr v3, v7

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 141
    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_7

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    instance-of v7, v6, Ljava/net/Inet6Address;

    .line 167
    .line 168
    if-eqz v7, :cond_6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 172
    .line 173
    .line 174
    instance-of v7, v6, Ljava/net/Inet4Address;

    .line 175
    .line 176
    or-int/2addr v4, v7

    .line 177
    instance-of v6, v6, Ljava/net/Inet6Address;

    .line 178
    .line 179
    or-int/2addr v3, v6

    .line 180
    goto :goto_3

    .line 181
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 184
    .line 185
    invoke-virtual {v5, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 186
    .line 187
    .line 188
    const/4 v1, 0x7

    .line 189
    const/4 v6, 0x0

    .line 190
    if-nez v4, :cond_8

    .line 191
    .line 192
    new-instance v4, Landroid/net/RouteInfo;

    .line 193
    .line 194
    new-instance v7, Landroid/net/IpPrefix;

    .line 195
    .line 196
    sget-object v8, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    .line 197
    .line 198
    invoke-direct {v7, v8, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v4, v7, v6, v6, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 205
    .line 206
    .line 207
    :cond_8
    if-eqz v3, :cond_9

    .line 208
    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    :cond_9
    new-instance v0, Landroid/net/RouteInfo;

    .line 212
    .line 213
    new-instance v3, Landroid/net/IpPrefix;

    .line 214
    .line 215
    sget-object v4, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    .line 216
    .line 217
    invoke-direct {v3, v4, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v0, v3, v6, v6, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 224
    .line 225
    .line 226
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 232
    .line 233
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 234
    .line 235
    if-eqz v1, :cond_b

    .line 236
    .line 237
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_b

    .line 246
    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const/16 v2, 0x20

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 274
    .line 275
    iget p0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 276
    .line 277
    if-lez p0, :cond_c

    .line 278
    .line 279
    invoke-virtual {v5, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 280
    .line 281
    .line 282
    :cond_c
    return-object v5
.end method

.method public final makeVpnProfileStateLocked()Landroid/net/VpnProfileState;
    .locals 5

    .line 1
    new-instance v0, Landroid/net/VpnProfileState;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    const/4 v3, 0x5

    .line 9
    const/4 v4, 0x3

    .line 10
    if-eq v1, v3, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-eq v1, v4, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "Unhandled state "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", treat it as STATE_DISCONNECTED"

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "Vpn"

    .line 37
    .line 38
    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v2, v4

    .line 47
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 48
    .line 49
    instance-of v1, v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const/4 v1, 0x0

    .line 59
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 60
    .line 61
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 62
    .line 63
    invoke-direct {v0, v2, v1, v3, p0}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final onUserAdded(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 40
    .line 41
    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    :try_start_2
    const-string v0, "Vpn"

    .line 59
    .line 60
    const-string v1, "Failed to add restricted user to owner"

    .line 61
    .line 62
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p1

    .line 83
    :cond_1
    :goto_2
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 38
    .line 39
    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    :try_start_2
    const-string v0, "Vpn"

    .line 57
    .line 58
    const-string v1, "Failed to remove restricted user to owner"

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p1

    .line 81
    :cond_1
    :goto_2
    return-void
.end method

.method public final declared-synchronized onUserStopped()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 4
    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final declared-synchronized prepare(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "android.permission.CONTROL_VPN"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p2, :cond_f

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return v0

    .line 42
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x3

    .line 47
    const/4 v4, 0x2

    .line 48
    if-nez v2, :cond_9

    .line 49
    .line 50
    const-string p3, "[Legacy VPN]"

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-nez p3, :cond_8

    .line 57
    .line 58
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string v2, "android:activate_vpn"

    .line 61
    .line 62
    if-eq p1, v1, :cond_7

    .line 63
    .line 64
    if-eq p1, v4, :cond_5

    .line 65
    .line 66
    if-eq p1, v3, :cond_4

    .line 67
    .line 68
    :cond_3
    move p1, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const-string p1, "[Legacy VPN]"

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const-string p1, "android:activate_platform_vpn"

    .line 78
    .line 79
    invoke-static {p3, p2, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    invoke-static {p3, p2, v2}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    :cond_6
    move p1, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_7
    invoke-static {p3, p2, v2}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    :goto_1
    if-eqz p1, :cond_8

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    monitor-exit p0

    .line 103
    return v1

    .line 104
    :cond_8
    monitor-exit p0

    .line 105
    return v0

    .line 106
    :cond_9
    :try_start_2
    const-string v2, "[Legacy VPN]"

    .line 107
    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_f

    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const-string v5, "android:activate_vpn"

    .line 117
    .line 118
    if-eq p1, v1, :cond_e

    .line 119
    .line 120
    if-eq p1, v4, :cond_c

    .line 121
    .line 122
    if-eq p1, v3, :cond_b

    .line 123
    .line 124
    :cond_a
    move p1, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_b
    const-string p1, "[Legacy VPN]"

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    goto :goto_2

    .line 133
    :cond_c
    const-string p1, "android:activate_platform_vpn"

    .line 134
    .line 135
    invoke-static {v2, p2, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_d

    .line 140
    .line 141
    invoke-static {v2, p2, v5}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_a

    .line 146
    .line 147
    :cond_d
    move p1, v1

    .line 148
    goto :goto_2

    .line 149
    :cond_e
    invoke-static {v2, p2, v5}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    :goto_2
    if-nez p1, :cond_f

    .line 154
    .line 155
    const-string p1, "[Legacy VPN]"

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    monitor-exit p0

    .line 161
    return v0

    .line 162
    :cond_f
    if-eqz p3, :cond_15

    .line 163
    .line 164
    :try_start_3
    const-string p1, "[Legacy VPN]"

    .line 165
    .line 166
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_10

    .line 171
    .line 172
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_10

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_10
    if-eqz p2, :cond_13

    .line 180
    .line 181
    const-string p1, "[Legacy VPN]"

    .line 182
    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_12

    .line 188
    .line 189
    const-string p1, "[Legacy VPN]"

    .line 190
    .line 191
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_12

    .line 196
    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const/16 p2, 0x3e8

    .line 202
    .line 203
    if-ne p1, p2, :cond_11

    .line 204
    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-ne p1, p2, :cond_11

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 228
    .line 229
    .line 230
    :goto_3
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 231
    .line 232
    if-eqz p1, :cond_14

    .line 233
    .line 234
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    if-nez p1, :cond_14

    .line 239
    .line 240
    monitor-exit p0

    .line 241
    return v0

    .line 242
    :cond_14
    :try_start_4
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    .line 244
    .line 245
    monitor-exit p0

    .line 246
    return v1

    .line 247
    :cond_15
    :goto_4
    monitor-exit p0

    .line 248
    return v1

    .line 249
    :goto_5
    monitor-exit p0

    .line 250
    throw p1
.end method

.method public final prepareInternal(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, " to call protect() "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    .line 4
    .line 5
    const-string v2, "Vpn"

    .line 6
    .line 7
    const-string v3, "Failed to allow UID "

    .line 8
    .line 9
    const-string v4, "Switched from "

    .line 10
    .line 11
    const-string v5, "Failed to disallow UID "

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v8, :cond_0

    .line 21
    .line 22
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 25
    .line 26
    .line 27
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v8, Landroid/net/NetworkCapabilities$Builder;

    .line 35
    .line 36
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 37
    .line 38
    invoke-direct {v8, v10}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    new-instance v10, Landroid/net/VpnTransportInfo;

    .line 46
    .line 47
    const/4 v11, -0x1

    .line 48
    const/4 v12, 0x0

    .line 49
    invoke-direct {v10, v11, v9, v12, v12}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v10}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v8}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    if-eqz v8, :cond_1

    .line 69
    .line 70
    :try_start_1
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    const/4 v11, 0x1

    .line 77
    const v12, 0xffffff

    .line 78
    .line 79
    .line 80
    invoke-interface {v8, v12, v10, v9, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :catch_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 84
    .line 85
    const-string v10, "android:establish_vpn_service"

    .line 86
    .line 87
    iget v11, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 88
    .line 89
    iget-object v12, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v8, v10, v11, v12, v9}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 97
    .line 98
    invoke-virtual {v8, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 106
    .line 107
    if-eqz v8, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerAndNotifyAppLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_1
    :try_start_3
    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 113
    .line 114
    invoke-interface {v1, v8}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_1
    move-exception v8

    .line 119
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 125
    .line 126
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, " to "

    .line 153
    .line 154
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 172
    .line 173
    invoke-static {v4, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    iput v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    .line 185
    :try_start_5
    iget p1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 186
    .line 187
    invoke-interface {v1, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :catch_2
    move-exception p1

    .line 192
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :goto_3
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 216
    .line 217
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 218
    .line 219
    const-string/jumbo v0, "prepare"

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 228
    .line 229
    .line 230
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    .line 236
    .line 237
    throw p0
.end method

.method public final declared-synchronized provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "No package name provided"

    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string v0, "No profile provided"

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    .line 28
    .line 29
    const-string v2, "Test-mode profiles require the MANAGE_TEST_NETWORKS permission"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    array-length v0, p1

    .line 42
    const/high16 v1, 0x20000

    .line 43
    .line 44
    if-gt v0, v1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3, p1}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-string v0, "android:activate_platform_vpn"

    .line 67
    .line 68
    invoke-static {p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const-string v0, "android:activate_vpn"

    .line 75
    .line 76
    invoke-static {p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 p1, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 86
    :goto_2
    monitor-exit p0

    .line 87
    return p1

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p2, "Profile too big"

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :goto_3
    monitor-exit p0

    .line 102
    throw p1
.end method

.method public final declared-synchronized refreshPlatformVpnAppExclusionList()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->updateAppExclusionList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public final declared-synchronized removeAddress(ILjava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2, v0}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final resetUidListInNetworkCapabilities()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->applyBlockingRulesToUidRange(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 6
    .line 7
    check-cast v0, Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final saveAlwaysOnPackage()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :try_start_0
    const-string v4, "always_on_vpn_app"

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-static {v6, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    const-string v4, "always_on_vpn_lockdown"

    .line 23
    .line 24
    iget-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v5, 0x0

    .line 37
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    const-string v4, "always_on_vpn_lockdown_whitelist"

    .line 45
    .line 46
    const-string v5, ","

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {v5, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v4, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final sendEventToVpnManagerApp(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 13

    .line 21
    const-string v0, "Service of VpnManager app "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-class v3, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/DeviceIdleInternal;

    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget v9, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const-string v12, "VpnManager event"

    const/4 v10, 0x0

    const/16 v11, 0x135

    const-wide/16 v7, 0x7530

    move-object v6, p2

    invoke-interface/range {v4 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 25
    :try_start_1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 26
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    :try_start_2
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed to start"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    throw p0
.end method

.method public final sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VMEvent] Event class="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_0

    .line 2
    const-string v4, "UNKNOWN_CLASS"

    goto :goto_0

    .line 3
    :cond_0
    const-string v4, "ERROR_CLASS_RECOVERABLE"

    goto :goto_0

    .line 4
    :cond_1
    const-string v4, "ERROR_CLASS_NOT_RECOVERABLE"

    .line 5
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", err="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    .line 6
    const-string v2, "UNKNOWN_ERROR"

    goto :goto_1

    .line 7
    :cond_2
    const-string v2, "ERROR_CODE_NETWORK_IO"

    goto :goto_1

    .line 8
    :cond_3
    const-string v2, "ERROR_CODE_NETWORK_LOST"

    goto :goto_1

    .line 9
    :cond_4
    const-string v2, "ERROR_CODE_NETWORK_PROTOCOL_TIMEOUT"

    goto :goto_1

    .line 10
    :cond_5
    const-string v2, "ERROR_CODE_NETWORK_UNKNOWN_HOST"

    .line 11
    :goto_1
    const-string v3, " for "

    const-string v4, " on session "

    .line 12
    invoke-static {v1, v2, v3, p4, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 15
    invoke-static/range {p1 .. p9}, Lcom/android/server/connectivity/Vpn;->buildVpnManagerEventIntent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/content/Intent;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p4}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setAllowOnlyVpnForUids(ZLjava/util/Collection;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/net/UidRangeParcel;

    .line 32
    .line 33
    new-instance v3, Landroid/util/Range;

    .line 34
    .line 35
    iget v4, v2, Landroid/net/UidRangeParcel;->start:I

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v2, v2, Landroid/net/UidRangeParcel;->stop:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v3, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 55
    .line 56
    invoke-virtual {v1, p1, v0}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 62
    .line 63
    check-cast p0, Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 70
    .line 71
    check-cast p0, Landroid/util/ArraySet;

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception p0

    .line 78
    const-string v0, "Updating blocked="

    .line 79
    .line 80
    const-string v1, " for UIDs "

    .line 81
    .line 82
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, " failed"

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p2, "Vpn"

    .line 107
    .line 108
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 3
    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v10, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    xor-int/2addr v0, v10

    .line 14
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 25
    .line 26
    if-ne p3, v2, :cond_0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :cond_0
    move v2, v10

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_1
    move v2, v1

    .line 36
    :goto_0
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move v11, v10

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v11, v1

    .line 47
    :goto_1
    invoke-static {}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->isVpnExceptionRequired()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    new-instance p2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_3
    const-string v3, "Vpn"

    .line 65
    .line 66
    const-string v5, "add KG to exempted list for AlwaysOnVpn"

    .line 67
    .line 68
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const-string/jumbo v3, "com.samsung.android.kgclient"

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-nez p2, :cond_5

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return v1

    .line 85
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V

    .line 86
    .line 87
    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    const-string p2, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    new-instance p3, Landroid/net/VpnProfileState;

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-direct {p3, v1, v0, v1, v1}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    .line 98
    .line 99
    .line 100
    :goto_2
    move-object v6, p3

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    goto :goto_2

    .line 107
    :goto_3
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v2, -0x1

    .line 110
    const/4 v3, -0x1

    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    move-object v0, p0

    .line 114
    move-object v1, p2

    .line 115
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    .line 116
    .line 117
    .line 118
    :cond_7
    if-eqz v11, :cond_8

    .line 119
    .line 120
    const-string v1, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const/4 v8, 0x0

    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v2, -0x1

    .line 133
    const/4 v3, -0x1

    .line 134
    const/4 v7, 0x0

    .line 135
    move-object v0, p0

    .line 136
    move-object v4, p1

    .line 137
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    :cond_8
    monitor-exit p0

    .line 141
    return v10

    .line 142
    :goto_4
    monitor-exit p0

    .line 143
    throw p1
.end method

.method public final setAlwaysOnPackageInternal(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 6

    .line 1
    const-string v0, "[Legacy VPN]"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Vpn"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "Not setting legacy VPN \""

    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "\" as always-on."

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_0
    if-eqz p2, :cond_2

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    .line 53
    const-string v5, ","

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    const-string p0, "Not setting always-on vpn, invalid allowed package: "

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_2
    const/4 v1, 0x1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    .line 79
    .line 80
    .line 81
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    move v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x2

    .line 90
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(ILjava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    return v3

    .line 97
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 106
    .line 107
    move-object p1, v0

    .line 108
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 111
    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    if-eqz p3, :cond_6

    .line 115
    .line 116
    move v3, v1

    .line 117
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    new-instance p3, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    :goto_2
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 140
    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "[LockdownAlwaysOn] Mode changed: lockdown="

    .line 144
    .line 145
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 149
    .line 150
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, " alwaysOn="

    .line 154
    .line 155
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 159
    .line 160
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, " calling from "

    .line 164
    .line 165
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-virtual {p2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_8

    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 195
    .line 196
    .line 197
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 203
    .line 204
    if-eqz p1, :cond_9

    .line 205
    .line 206
    iget-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 207
    .line 208
    if-eq v0, p2, :cond_9

    .line 209
    .line 210
    const-string p2, "Lockdown mode changed"

    .line 211
    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_9
    :goto_3
    return v1
.end method

.method public final declared-synchronized setLockdown(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public final setPackageAuthorization(ILjava/lang/String;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 7
    .line 8
    invoke-static {v0, p2, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_7

    .line 15
    .line 16
    const-string v3, "[Legacy VPN]"

    .line 17
    .line 18
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    const-string v5, "android:activate_vpn"

    .line 31
    .line 32
    const-string v6, "android:activate_platform_vpn"

    .line 33
    .line 34
    const-string v7, "Vpn"

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    if-eq p1, v2, :cond_4

    .line 38
    .line 39
    if-eq p1, v8, :cond_3

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    if-eq p1, v5, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x3

    .line 45
    if-eq p1, p0, :cond_1

    .line 46
    .line 47
    :try_start_0
    const-string p0, "Unrecognized VPN type while granting authorization"

    .line 48
    .line 49
    invoke-static {v7, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_4

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return v1

    .line 64
    :cond_2
    :try_start_1
    filled-new-array {v6}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    filled-new-array {v5}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :goto_0
    array-length v6, v5

    .line 79
    move v9, v1

    .line 80
    :goto_1
    if-ge v9, v6, :cond_6

    .line 81
    .line 82
    aget-object v10, v5, v9

    .line 83
    .line 84
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 85
    .line 86
    if-ne p1, v2, :cond_5

    .line 87
    .line 88
    move v12, v8

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v12, v1

    .line 91
    :goto_2
    invoke-virtual {v11, v10, v0, p2, v12}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    return v8

    .line 101
    :goto_3
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "Failed to set app ops for package "

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p2, ", uid "

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v7, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    return v1

    .line 133
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_7
    :goto_5
    return v1
.end method

.method public final declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    array-length v2, p1

    .line 17
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Landroid/net/Network;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    move-object p1, v1

    .line 27
    :goto_0
    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Vpn;->logUnderlyNetworkChanges(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    instance-of v0, p1, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    check-cast p1, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p1, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_1
    monitor-exit p0

    .line 58
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :goto_2
    monitor-exit p0

    .line 61
    throw p1
.end method

.method public final setVpnForcedLocked(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v2, "[Legacy VPN]"

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move-object v0, v1

    .line 29
    :goto_1
    new-instance v2, Landroid/util/ArraySet;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 32
    .line 33
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz p1, :cond_6

    .line 38
    .line 39
    iget p1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/util/Range;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    new-instance v4, Landroid/net/UidRangeParcel;

    .line 97
    .line 98
    const/16 v5, 0x3f7

    .line 99
    .line 100
    invoke-direct {v4, v3, v5}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    new-instance v4, Landroid/net/UidRangeParcel;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/16 v5, 0x3f9

    .line 119
    .line 120
    invoke-direct {v4, v5, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    new-instance v4, Landroid/net/UidRangeParcel;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-direct {v4, v3, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_2

    .line 157
    .line 158
    new-instance v4, Landroid/net/UidRangeParcel;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-direct {v4, v5, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_5
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :goto_3
    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v3, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final showNotificationForKnoxStrongSwan(I)V
    .locals 6

    .line 1
    const-string v0, "Exception: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v3, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string/jumbo v4, "notification"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/app/NotificationManager;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 42
    .line 43
    invoke-virtual {p0, v5, v4}, Lcom/android/server/connectivity/Vpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const-string v4, "Knox_SS_Notification"

    .line 50
    .line 51
    new-instance v5, Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const p1, 0x186a0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4, p1, p0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_4

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    new-instance v4, Landroid/os/UserHandle;

    .line 68
    .line 69
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    const v5, 0x1080d0d

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1, v5, p0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_2
    :try_start_1
    const-string p1, "Vpn"

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_3
    return-void

    .line 106
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public final startAlwaysOnVpn()Z
    .locals 15

    .line 1
    const-string v0, "VpnService "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v10

    .line 8
    const/4 v11, 0x1

    .line 9
    if-nez v10, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v11

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v12, 0x0

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0, v0, v12}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return v12

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return v11

    .line 39
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v13

    .line 44
    :try_start_1
    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1, v10}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return v11

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 79
    .line 80
    const-string/jumbo v9, "vpn"

    .line 81
    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const/16 v8, 0x135

    .line 85
    .line 86
    const-wide/32 v4, 0xea60

    .line 87
    .line 88
    .line 89
    move-object v3, v10

    .line 90
    invoke-interface/range {v1 .. v9}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Landroid/content/Intent;

    .line 94
    .line 95
    const-string v2, "android.net.VpnService"

    .line 96
    .line 97
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .line 102
    .line 103
    :try_start_3
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    .line 107
    .line 108
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    if-eqz p0, :cond_4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    move v11, v12

    .line 113
    :goto_0
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    return v11

    .line 117
    :catch_1
    move-exception p0

    .line 118
    :try_start_4
    const-string v2, "Vpn"

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, " failed to start"

    .line 129
    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    .line 139
    .line 140
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    return v12

    .line 144
    :goto_1
    :try_start_5
    const-string v0, "Vpn"

    .line 145
    .line 146
    const-string v1, "Error starting always-on VPN"

    .line 147
    .line 148
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .line 150
    .line 151
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    .line 153
    .line 154
    return v12

    .line 155
    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    throw v0
.end method

.method public final startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/LinkProperties;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Missing active network connection"

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    const-string/jumbo v2, "ipsec"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    const-string/jumbo v2, "tun"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p2, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    const-string/jumbo v0, "startLegacyVpn changed egress: "

    .line 73
    .line 74
    .line 75
    const-string v2, " > "

    .line 76
    .line 77
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "Vpn"

    .line 93
    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    const/4 v2, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public final startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/net/VpnProfile;->clone()Lcom/android/internal/net/VpnProfile;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 8
    .line 9
    iget v3, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1c

    .line 20
    .line 21
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 22
    .line 23
    const-string/jumbo v3, "no_config_vpn"

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroid/os/UserHandle;

    .line 27
    .line 28
    iget v5, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 29
    .line 30
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1c

    .line 38
    .line 39
    const-string v0, ""

    .line 40
    .line 41
    const-string v3, ""

    .line 42
    .line 43
    const-string v4, ""

    .line 44
    .line 45
    const-string v5, ""

    .line 46
    .line 47
    const-string v6, ""

    .line 48
    .line 49
    const-string/jumbo v7, "security.ucmcrypto"

    .line 50
    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string/jumbo v9, "persist.security.ucmcrypto"

    .line 58
    .line 59
    .line 60
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const/4 v10, 0x1

    .line 65
    if-nez v7, :cond_1

    .line 66
    .line 67
    if-eqz v9, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v7, v8

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    move v7, v10

    .line 73
    :goto_1
    const-string v9, "Vpn"

    .line 74
    .line 75
    const-string/jumbo v11, "startLegacyVpnPrivileged: isUcmEnabled="

    .line 76
    .line 77
    .line 78
    invoke-static {v11, v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    const-string v9, "AndroidKeyStore"

    .line 82
    .line 83
    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const/4 v11, 0x0

    .line 88
    invoke-virtual {v9, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 89
    .line 90
    .line 91
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-nez v12, :cond_3

    .line 98
    .line 99
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_2

    .line 106
    .line 107
    move-object v3, v11

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    new-instance v12, Ljava/lang/String;

    .line 110
    .line 111
    new-array v13, v10, [Ljava/security/cert/Certificate;

    .line 112
    .line 113
    aput-object v3, v13, v8

    .line 114
    .line 115
    invoke-static {v13}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 120
    .line 121
    invoke-direct {v12, v3, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 122
    .line 123
    .line 124
    move-object v3, v12

    .line 125
    :goto_2
    if-nez v3, :cond_4

    .line 126
    .line 127
    if-eqz v7, :cond_4

    .line 128
    .line 129
    const-string v3, "USRCERT_"

    .line 130
    .line 131
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v3, v12}, Lcom/android/server/connectivity/Vpn;->getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    :cond_3
    :goto_3
    move-object/from16 v16, v0

    .line 138
    .line 139
    move-object/from16 v17, v3

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto/16 :goto_1d

    .line 144
    .line 145
    :cond_4
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_3

    .line 150
    :goto_4
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 159
    .line 160
    if-lez v0, :cond_6

    .line 161
    .line 162
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecCacertValue:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->ipsecCacertValue:Ljava/lang/String;

    .line 171
    .line 172
    :cond_5
    :goto_5
    move-object/from16 v21, v4

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_6
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v9, v0}, Lcom/android/server/connectivity/Vpn;->getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-nez v4, :cond_5

    .line 182
    .line 183
    if-eqz v7, :cond_5

    .line 184
    .line 185
    const-string v0, "CACERT_"

    .line 186
    .line 187
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Vpn;->getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    goto :goto_5

    .line 194
    :goto_6
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_7

    .line 201
    .line 202
    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 203
    .line 204
    if-lez v0, :cond_8

    .line 205
    .line 206
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCertValue:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_8

    .line 213
    .line 214
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCertValue:Ljava/lang/String;

    .line 215
    .line 216
    :cond_7
    :goto_7
    move-object/from16 v19, v5

    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_8
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-nez v0, :cond_9

    .line 226
    .line 227
    move-object v5, v11

    .line 228
    goto :goto_8

    .line 229
    :cond_9
    new-instance v3, Ljava/lang/String;

    .line 230
    .line 231
    new-array v4, v10, [Ljava/security/cert/Certificate;

    .line 232
    .line 233
    aput-object v0, v4, v8

    .line 234
    .line 235
    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 240
    .line 241
    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 242
    .line 243
    .line 244
    move-object v5, v3

    .line 245
    :goto_8
    if-nez v5, :cond_7

    .line 246
    .line 247
    if-eqz v7, :cond_7

    .line 248
    .line 249
    const-string v0, "USRCERT_"

    .line 250
    .line 251
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Vpn;->getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    goto :goto_7

    .line 258
    :goto_9
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_a

    .line 265
    .line 266
    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 267
    .line 268
    if-lez v0, :cond_b

    .line 269
    .line 270
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->allCert:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_b

    .line 277
    .line 278
    iget-object v6, v2, Lcom/android/internal/net/VpnProfile;->allCert:Ljava/lang/String;

    .line 279
    .line 280
    :catch_1
    :cond_a
    :goto_a
    move-object/from16 v20, v6

    .line 281
    .line 282
    goto/16 :goto_d

    .line 283
    .line 284
    :cond_b
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    new-instance v4, Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v9, v4}, Lcom/android/server/connectivity/Vpn;->buildCertificatePathFromRoot(Ljava/security/cert/X509Certificate;Ljava/security/KeyStore;Ljava/util/List;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    const/4 v7, 0x1

    .line 312
    if-eqz v5, :cond_c

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_c
    :try_start_2
    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 320
    .line 321
    if-eqz v0, :cond_e

    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-nez v5, :cond_e

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    if-eqz v9, :cond_e

    .line 338
    .line 339
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 344
    .line 345
    invoke-virtual {v0, v9}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 349
    if-eqz v9, :cond_d

    .line 350
    .line 351
    goto :goto_b

    .line 352
    :catch_2
    move-exception v0

    .line 353
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    .line 355
    .line 356
    :cond_e
    const/4 v7, 0x0

    .line 357
    :goto_b
    if-eqz v7, :cond_a

    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_a

    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-eqz v4, :cond_f

    .line 374
    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 380
    .line 381
    const-string v5, "Vpn"

    .line 382
    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    const-string v9, "allCaCerts= "

    .line 389
    .line 390
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    new-instance v5, Ljava/lang/String;

    .line 412
    .line 413
    new-array v7, v10, [Ljava/security/cert/Certificate;

    .line 414
    .line 415
    aput-object v4, v7, v8

    .line 416
    .line 417
    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 422
    .line 423
    invoke-direct {v5, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_f
    const-string v0, ","

    .line 431
    .line 432
    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 436
    goto/16 :goto_a

    .line 437
    .line 438
    :goto_d
    if-eqz v17, :cond_1b

    .line 439
    .line 440
    if-eqz v21, :cond_1b

    .line 441
    .line 442
    if-eqz v19, :cond_1b

    .line 443
    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 449
    .line 450
    const-string v0, "Vpn"

    .line 451
    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v4, "Egress Iface ("

    .line 455
    .line 456
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v4, ") activated"

    .line 465
    .line 466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    invoke-static {v2}, Lcom/android/internal/net/VpnProfile;->decrypt(Lcom/android/internal/net/VpnProfile;)V

    .line 477
    .line 478
    .line 479
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-nez v0, :cond_10

    .line 484
    .line 485
    const-string v0, ""

    .line 486
    .line 487
    iput-object v0, v2, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 488
    .line 489
    const-string v0, ""

    .line 490
    .line 491
    iput-object v0, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 492
    .line 493
    const-string v0, ""

    .line 494
    .line 495
    iput-object v0, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 496
    .line 497
    const-string v0, ""

    .line 498
    .line 499
    iput-object v0, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 500
    .line 501
    :cond_10
    iget v0, v2, Lcom/android/internal/net/VpnProfile;->type:I

    .line 502
    .line 503
    packed-switch v0, :pswitch_data_0

    .line 504
    .line 505
    .line 506
    goto/16 :goto_1c

    .line 507
    .line 508
    :pswitch_0
    const-string v0, "[Legacy VPN]"

    .line 509
    .line 510
    invoke-virtual {v1, v2, v0}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :pswitch_1
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 515
    .line 516
    const-string/jumbo v13, "ikev2eaptls"

    .line 517
    .line 518
    .line 519
    iget-object v14, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 520
    .line 521
    iget-object v15, v2, Lcom/android/internal/net/VpnProfile;->ipsecRemoteIdentifier:Ljava/lang/String;

    .line 522
    .line 523
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 524
    .line 525
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eqz v3, :cond_11

    .line 530
    .line 531
    const-string v3, "Enforcing"

    .line 532
    .line 533
    :goto_e
    move-object/from16 v22, v3

    .line 534
    .line 535
    goto :goto_f

    .line 536
    :cond_11
    const-string v3, "None"

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :goto_f
    iget-boolean v3, v2, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 540
    .line 541
    if-eqz v3, :cond_12

    .line 542
    .line 543
    const-string v3, "+pfs"

    .line 544
    .line 545
    :goto_10
    move-object/from16 v23, v3

    .line 546
    .line 547
    goto :goto_11

    .line 548
    :cond_12
    const-string/jumbo v3, "nonpfs"

    .line 549
    .line 550
    .line 551
    goto :goto_10

    .line 552
    :goto_11
    const-string v24, ""

    .line 553
    .line 554
    move-object/from16 v18, v21

    .line 555
    .line 556
    move-object/from16 v21, v0

    .line 557
    .line 558
    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    goto/16 :goto_1c

    .line 563
    .line 564
    :pswitch_2
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 565
    .line 566
    const-string/jumbo v13, "ikev2rsa"

    .line 567
    .line 568
    .line 569
    iget-object v14, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 570
    .line 571
    iget-object v15, v2, Lcom/android/internal/net/VpnProfile;->ipsecRemoteIdentifier:Ljava/lang/String;

    .line 572
    .line 573
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 574
    .line 575
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_13

    .line 580
    .line 581
    const-string v3, "Enforcing"

    .line 582
    .line 583
    :goto_12
    move-object/from16 v22, v3

    .line 584
    .line 585
    goto :goto_13

    .line 586
    :cond_13
    const-string v3, "None"

    .line 587
    .line 588
    goto :goto_12

    .line 589
    :goto_13
    iget-boolean v3, v2, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 590
    .line 591
    if-eqz v3, :cond_14

    .line 592
    .line 593
    const-string v3, "+pfs"

    .line 594
    .line 595
    :goto_14
    move-object/from16 v23, v3

    .line 596
    .line 597
    goto :goto_15

    .line 598
    :cond_14
    const-string/jumbo v3, "nonpfs"

    .line 599
    .line 600
    .line 601
    goto :goto_14

    .line 602
    :goto_15
    const-string v24, ""

    .line 603
    .line 604
    move-object/from16 v18, v21

    .line 605
    .line 606
    move-object/from16 v21, v0

    .line 607
    .line 608
    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v11

    .line 612
    goto :goto_1c

    .line 613
    :pswitch_3
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 614
    .line 615
    const-string/jumbo v13, "ikev2psk"

    .line 616
    .line 617
    .line 618
    iget-object v14, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 619
    .line 620
    iget-object v15, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 621
    .line 622
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_15

    .line 627
    .line 628
    const-string v0, "Enforcing"

    .line 629
    .line 630
    :goto_16
    move-object/from16 v16, v0

    .line 631
    .line 632
    goto :goto_17

    .line 633
    :cond_15
    const-string v0, "None"

    .line 634
    .line 635
    goto :goto_16

    .line 636
    :goto_17
    const-string/jumbo v17, "nonpfs"

    .line 637
    .line 638
    .line 639
    const-string v18, ""

    .line 640
    .line 641
    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v11

    .line 645
    goto :goto_1c

    .line 646
    :pswitch_4
    iget-object v0, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 647
    .line 648
    const-string/jumbo v19, "ikev2eap"

    .line 649
    .line 650
    .line 651
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 652
    .line 653
    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 654
    .line 655
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 658
    .line 659
    .line 660
    move-result v6

    .line 661
    if-eqz v6, :cond_16

    .line 662
    .line 663
    const-string v6, "Enforcing"

    .line 664
    .line 665
    :goto_18
    move-object/from16 v24, v6

    .line 666
    .line 667
    goto :goto_19

    .line 668
    :cond_16
    const-string v6, "None"

    .line 669
    .line 670
    goto :goto_18

    .line 671
    :goto_19
    iget-boolean v6, v2, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 672
    .line 673
    if-eqz v6, :cond_17

    .line 674
    .line 675
    const-string v6, "+pfs"

    .line 676
    .line 677
    :goto_1a
    move-object/from16 v25, v6

    .line 678
    .line 679
    goto :goto_1b

    .line 680
    :cond_17
    const-string/jumbo v6, "nonpfs"

    .line 681
    .line 682
    .line 683
    goto :goto_1a

    .line 684
    :goto_1b
    const-string v26, ""

    .line 685
    .line 686
    move-object/from16 v18, v0

    .line 687
    .line 688
    move-object/from16 v20, v3

    .line 689
    .line 690
    move-object/from16 v22, v4

    .line 691
    .line 692
    move-object/from16 v23, v5

    .line 693
    .line 694
    filled-new-array/range {v18 .. v26}, [Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    :goto_1c
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    .line 699
    .line 700
    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 701
    .line 702
    .line 703
    iput-boolean v10, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 704
    .line 705
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 706
    .line 707
    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 708
    .line 709
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 710
    .line 711
    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 712
    .line 713
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 714
    .line 715
    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 716
    .line 717
    iput-boolean v8, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 718
    .line 719
    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 720
    .line 721
    iput-object v4, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 722
    .line 723
    if-eqz p2, :cond_18

    .line 724
    .line 725
    new-array v4, v10, [Landroid/net/Network;

    .line 726
    .line 727
    aput-object p2, v4, v8

    .line 728
    .line 729
    iput-object v4, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 730
    .line 731
    :cond_18
    iput-object v3, v1, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 732
    .line 733
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v0, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 739
    .line 740
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    if-nez v3, :cond_19

    .line 745
    .line 746
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 747
    .line 748
    const-string v4, " +"

    .line 749
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 759
    .line 760
    :cond_19
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    if-nez v3, :cond_1a

    .line 767
    .line 768
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 769
    .line 770
    const-string v4, " +"

    .line 771
    .line 772
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 781
    .line 782
    :cond_1a
    monitor-enter p0

    .line 783
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 784
    .line 785
    .line 786
    const-string v3, "[Legacy VPN]"

    .line 787
    .line 788
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 792
    .line 793
    const-string/jumbo v4, "startLegacyVpn"

    .line 794
    .line 795
    .line 796
    invoke-virtual {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    new-instance v3, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 800
    .line 801
    invoke-direct {v3, v1, v0, v11, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 802
    .line 803
    .line 804
    iput-object v3, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 805
    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnRunner()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 807
    .line 808
    .line 809
    monitor-exit p0

    .line 810
    return-void

    .line 811
    :catchall_0
    move-exception v0

    .line 812
    monitor-exit p0

    .line 813
    throw v0

    .line 814
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 815
    .line 816
    const-string v1, "Cannot load credentials"

    .line 817
    .line 818
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    throw v0

    .line 822
    :goto_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 823
    .line 824
    const-string v2, "Failed to load credentials from AndroidKeyStore"

    .line 825
    .line 826
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 827
    .line 828
    .line 829
    throw v1

    .line 830
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    .line 831
    .line 832
    const-string v1, "Restricted users cannot establish VPNs"

    .line 833
    .line 834
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    throw v0

    .line 838
    nop

    .line 839
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startLegacyVpnRunner()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 3
    .line 4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    .line 6
    invoke-virtual {p0, v1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->agentConnect(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->unregister()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final declared-synchronized startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "No profile found for "

    .line 2
    .line 3
    const-string v1, "User consent not granted for package "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "No package name provided"

    .line 7
    .line 8
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/connectivity/Vpn;->prepare(ILjava/lang/String;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 36
    .line 37
    instance-of p1, p1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string/jumbo v0, "mVpnRunner shouldn\'t be null and should also be an instance of Ikev2VpnRunner"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :goto_1
    monitor-exit p0

    .line 88
    throw p1
.end method

.method public final declared-synchronized startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Unknown VPN profile type: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    .line 9
    const-string/jumbo v2, "startPlatformVpn"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_1
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "[Legacy VPN]"

    .line 22
    .line 23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iput-boolean v4, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 31
    .line 32
    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v4, v2, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    iput-object p2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 50
    .line 51
    iget-boolean v3, p1, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 52
    .line 53
    iput-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 54
    .line 55
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    iput-wide v5, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 62
    .line 63
    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 64
    .line 65
    iget-boolean v3, p1, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    .line 66
    .line 67
    iput-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 68
    .line 69
    iget-boolean v3, p1, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    .line 70
    .line 71
    iput-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 74
    .line 75
    iput-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 86
    .line 87
    iget v2, p1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 88
    .line 89
    const/4 v3, 0x6

    .line 90
    if-eq v2, v3, :cond_1

    .line 91
    .line 92
    const/4 v3, 0x7

    .line 93
    if-eq v2, v3, :cond_1

    .line 94
    .line 95
    const/16 v3, 0x8

    .line 96
    .line 97
    if-eq v2, v3, :cond_1

    .line 98
    .line 99
    const/16 v3, 0xa

    .line 100
    .line 101
    if-eq v2, v3, :cond_1

    .line 102
    .line 103
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 104
    .line 105
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 106
    .line 107
    const-string v3, "Invalid platform VPN type"

    .line 108
    .line 109
    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "Vpn"

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 120
    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 133
    .line 134
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 144
    .line 145
    invoke-direct {v2, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    .line 155
    .line 156
    :goto_1
    const-string p1, "[Legacy VPN]"

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_2

    .line 163
    .line 164
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 165
    .line 166
    const-string v3, "android:establish_vpn_manager"

    .line 167
    .line 168
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 169
    .line 170
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 171
    .line 172
    const/4 v6, 0x0

    .line 173
    const/4 v7, 0x0

    .line 174
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_2
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :goto_2
    :try_start_2
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 180
    .line 181
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 182
    .line 183
    const-string v0, "VPN startup failed"

    .line 184
    .line 185
    invoke-virtual {p0, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string v0, "VPN startup failed"

    .line 191
    .line 192
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :goto_3
    monitor-exit p0

    .line 197
    throw p1
.end method

.method public final stopVpnRunnerAndNotifyAppLocked()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v3, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    .line 13
    .line 14
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const/4 v5, -0x1

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v4, -0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    invoke-static/range {v3 .. v11}, Lcom/android/server/connectivity/Vpn;->buildVpnManagerEventIntent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v1, v2

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "[VMEvent] "

    .line 53
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 56
    .line 57
    const-string v6, "android:establish_vpn_manager"

    .line 58
    .line 59
    invoke-virtual {v5, v6, v0, v3, v2}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " stopped"

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1, v3}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    monitor-exit p0

    .line 91
    throw v0

    .line 92
    :cond_1
    :goto_1
    return-void
.end method

.method public final declared-synchronized stopVpnRunnerPrivileged()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 11
    .line 12
    instance-of v1, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v0, "LegacyVpnRunner"

    .line 23
    .line 24
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    monitor-exit v0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public final storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/os/PersistableBundle;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "COLLECTION_LENGTH"

    .line 12
    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    move v2, v0

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_0

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "LIST_ITEM_%d"

    .line 32
    .line 33
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    new-instance v5, Landroid/os/PersistableBundle;

    .line 44
    .line 45
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "STRING_KEY"

    .line 49
    .line 50
    invoke-virtual {v5, v6, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 70
    .line 71
    .line 72
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v2, p0, p2}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :goto_1
    const-string p1, "Vpn"

    .line 99
    .line 100
    const-string/jumbo p2, "problem writing into stream"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    return v0
.end method

.method public final updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 25
    .line 26
    const-class v6, Landroid/app/NotificationManager;

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    const/16 v6, 0x11

    .line 35
    .line 36
    const-string v7, "Vpn"

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    .line 51
    .line 52
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const v9, 0x1040300

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {p1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string/jumbo v8, "lockdown"

    .line 72
    .line 73
    .line 74
    iget-boolean v9, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 75
    .line 76
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const/high16 v8, 0x10000000

    .line 80
    .line 81
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 85
    .line 86
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/high16 v8, 0xc000000

    .line 93
    .line 94
    invoke-static {v0, v1, p1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Landroid/app/Notification$Builder;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    const-string v8, "VPN"

    .line 103
    .line 104
    invoke-direct {v0, v1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const v1, 0x1080d0d

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const v8, 0x104101f

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const v8, 0x104101c

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string/jumbo v0, "sys"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    const v0, 0x106001c

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {v5, v7, v6, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    throw p0
.end method

.method public final declared-synchronized updateAppExclusionList(Ljava/util/List;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 7
    .line 8
    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 19
    .line 20
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .locals 5

    .line 1
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "Vpn"

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    const-string p0, "Handover not possible due to changes to allowBypass"

    .line 13
    .line 14
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 50
    .line 51
    iget-boolean v2, v1, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 52
    .line 53
    if-ne v0, v2, :cond_2

    .line 54
    .line 55
    iget v0, p2, Lcom/android/internal/net/VpnConfig;->dport:I

    .line 56
    .line 57
    iget v2, v1, Lcom/android/internal/net/VpnConfig;->dport:I

    .line 58
    .line 59
    if-ne v0, v2, :cond_2

    .line 60
    .line 61
    iget v0, p2, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 62
    .line 63
    iget v2, v1, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 64
    .line 65
    if-ne v0, v2, :cond_2

    .line 66
    .line 67
    iget v0, p2, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 68
    .line 69
    iget v2, v1, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 70
    .line 71
    if-ne v0, v2, :cond_2

    .line 72
    .line 73
    iget v0, p2, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 74
    .line 75
    iget v2, v1, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 76
    .line 77
    if-ne v0, v2, :cond_2

    .line 78
    .line 79
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_3

    .line 100
    .line 101
    :cond_2
    const-string p0, "Handover not possible due to changes to port bypass configs"

    .line 102
    .line 103
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return v3

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x1

    .line 115
    return p0

    .line 116
    :cond_4
    :goto_0
    const-string p0, "Handover not possible due to changes to allowed/denied apps"

    .line 117
    .line 118
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v3
.end method

.method public final updateLocalProxyInfo(Landroid/net/ProxyInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final updateNotificationIconForKnoxStrongSwan(I)V
    .locals 9

    .line 1
    const-string v0, "Exception: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getknoxVpnTypeForStrongswanProfile()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_2

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v3, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string/jumbo v4, "notification"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/app/NotificationManager;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v4, 0x0

    .line 47
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 48
    .line 49
    invoke-virtual {p0, v5, v4}, Lcom/android/server/connectivity/Vpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v5, 0x0

    .line 54
    const v6, 0x186a0

    .line 55
    .line 56
    .line 57
    const-string v7, "Knox_SS_Notification"

    .line 58
    .line 59
    const v8, 0x1080d0d

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    :try_start_1
    new-instance v4, Landroid/os/UserHandle;

    .line 65
    .line 66
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v5, v8, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Landroid/os/UserHandle;

    .line 73
    .line 74
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v7, v6, p0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_4

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    new-instance v4, Landroid/os/UserHandle;

    .line 86
    .line 87
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v7, v6, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Landroid/os/UserHandle;

    .line 94
    .line 95
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v5, v8, p0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :goto_2
    :try_start_2
    const-string p1, "Vpn"

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_3
    return-void

    .line 128
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final updatePortBypassConfigs()V
    .locals 8

    .line 1
    const-string v0, "Vpn"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const-string v4, "_"

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    array-length v4, v1

    .line 22
    if-le v4, v3, :cond_1

    .line 23
    .line 24
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 25
    .line 26
    aget-object v5, v1, v2

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    move v5, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v5, v2

    .line 37
    :goto_0
    iput-boolean v5, v4, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 40
    .line 41
    aget-object v1, v1, v3

    .line 42
    .line 43
    iput-object v1, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 46
    .line 47
    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 48
    .line 49
    if-eqz v1, :cond_7

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/net/NetworkInterface;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string/jumbo v7, "wlan"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    const/4 v4, 0x3

    .line 84
    new-array v4, v4, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getIndex()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    aput-object v6, v4, v2

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    aput-object v6, v4, v3

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_5

    .line 115
    .line 116
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ljava/net/InterfaceAddress;

    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_3

    .line 131
    .line 132
    instance-of v7, v6, Ljava/net/Inet4Address;

    .line 133
    .line 134
    if-eqz v7, :cond_3

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    aput-object v5, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_1
    move-exception v4

    .line 148
    const-string v5, "Failed to get wifi interface info: "

    .line 149
    .line 150
    invoke-static {v4, v5, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    const/4 v4, 0x0

    .line 154
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 155
    .line 156
    const-string v1, "Failed to update port bypass configs due to no wifi interface info"

    .line 157
    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 162
    .line 163
    iput-boolean v2, p0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 167
    .line 168
    const/16 v5, 0x1bb

    .line 169
    .line 170
    iput v5, v0, Lcom/android/internal/net/VpnConfig;->dport:I

    .line 171
    .line 172
    const/16 v5, 0x60a

    .line 173
    .line 174
    iput v5, v0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 175
    .line 176
    const/16 v5, 0x2cec

    .line 177
    .line 178
    iput v5, v0, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 179
    .line 180
    aget-object v2, v4, v2

    .line 181
    .line 182
    check-cast v2, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    add-int/lit16 v2, v2, 0x3e8

    .line 189
    .line 190
    iput v2, v0, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 193
    .line 194
    aget-object v0, v4, v3

    .line 195
    .line 196
    check-cast v0, Ljava/lang/String;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 199
    .line 200
    aget-object v0, v4, v1

    .line 201
    .line 202
    check-cast v0, Ljava/lang/String;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 205
    .line 206
    :cond_7
    return-void
.end method

.method public updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v4, "setting state="

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, ", reason="

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "Vpn"

    .line 31
    .line 32
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getknoxVpnTypeForStrongswanProfile()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    :goto_0
    const/4 v5, 0x0

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-boolean v6, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 56
    .line 57
    if-eq v1, v6, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    if-ne v1, v3, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 64
    .line 65
    if-ne v1, v6, :cond_3

    .line 66
    .line 67
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 68
    .line 69
    if-ne v3, v6, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    :try_start_0
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 77
    .line 78
    instance-of v3, v3, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 79
    .line 80
    if-eqz v3, :cond_a

    .line 81
    .line 82
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 83
    .line 84
    if-eq v1, v3, :cond_4

    .line 85
    .line 86
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 87
    .line 88
    if-ne v1, v9, :cond_a

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_9

    .line 93
    .line 94
    :cond_4
    :goto_1
    const/high16 v9, 0x4000000

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    const v11, 0x1041021

    .line 98
    .line 99
    .line 100
    if-ne v1, v3, :cond_6

    .line 101
    .line 102
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 105
    .line 106
    if-nez v3, :cond_5

    .line 107
    .line 108
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget-object v11, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const v12, 0x1041022

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :goto_2
    iget-object v11, v0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 129
    .line 130
    const v12, 0x1041023

    .line 131
    .line 132
    .line 133
    const v13, 0x1080d0d

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_6
    iget-boolean v3, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 138
    .line 139
    if-eqz v3, :cond_7

    .line 140
    .line 141
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    const v11, 0x104101c

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const v11, 0x1041020

    .line 151
    .line 152
    .line 153
    :goto_3
    move v12, v11

    .line 154
    goto :goto_5

    .line 155
    :cond_7
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 156
    .line 157
    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v3, :cond_8

    .line 160
    .line 161
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    goto :goto_4

    .line 168
    :cond_8
    iget-object v11, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const v12, 0x104101a

    .line 175
    .line 176
    .line 177
    invoke-virtual {v11, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    :goto_4
    const v11, 0x104101b

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :goto_5
    iget-object v11, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    new-instance v13, Landroid/content/Intent;

    .line 188
    .line 189
    const-string v14, "android.settings.VPN_SETTINGS"

    .line 190
    .line 191
    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v11, v10, v13, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    const v13, 0x1080d0e

    .line 199
    .line 200
    .line 201
    :goto_6
    new-instance v14, Landroid/app/Notification$Builder;

    .line 202
    .line 203
    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 206
    .line 207
    invoke-direct {v14, v15, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-wide/16 v8, 0x0

    .line 211
    .line 212
    invoke-virtual {v14, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    iget-object v9, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    iget-object v8, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    const v9, 0x106001c

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget-boolean v8, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 256
    .line 257
    if-eqz v8, :cond_9

    .line 258
    .line 259
    new-instance v8, Landroid/content/Intent;

    .line 260
    .line 261
    const-string/jumbo v9, "com.android.server.action.LOCKDOWN_RESET"

    .line 262
    .line 263
    .line 264
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/high16 v9, 0x40000000    # 2.0f

    .line 268
    .line 269
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    iget-object v9, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    const v11, 0x1040c90

    .line 275
    .line 276
    .line 277
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    iget-object v11, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    const/high16 v12, 0x4000000

    .line 284
    .line 285
    invoke-static {v11, v10, v8, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    const v10, 0x1080562

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v10, v9, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 293
    .line 294
    .line 295
    :cond_9
    iget-object v8, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    invoke-static {v8}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    const/4 v5, 0x0

    .line 306
    const/16 v9, 0x14

    .line 307
    .line 308
    invoke-virtual {v8, v5, v9, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .line 310
    .line 311
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_a
    :try_start_1
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    const/4 v5, 0x0

    .line 323
    const/16 v8, 0x14

    .line 324
    .line 325
    invoke-virtual {v3, v5, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    .line 327
    .line 328
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    .line 330
    .line 331
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    iput v3, v0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 336
    .line 337
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 338
    .line 339
    invoke-virtual {v3, v1, v2, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sget-object v2, Lcom/android/server/connectivity/Vpn$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    aget v2, v2, v3

    .line 349
    .line 350
    if-eq v2, v4, :cond_e

    .line 351
    .line 352
    const/4 v3, 0x2

    .line 353
    if-eq v2, v3, :cond_d

    .line 354
    .line 355
    const/4 v3, 0x3

    .line 356
    if-eq v2, v3, :cond_d

    .line 357
    .line 358
    const/4 v3, 0x4

    .line 359
    if-ne v2, v3, :cond_c

    .line 360
    .line 361
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 362
    .line 363
    if-nez v2, :cond_b

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 367
    .line 368
    const-string v1, "VPN can only go to CONNECTING state when the agent is null."

    .line 369
    .line 370
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 375
    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v3, "Illegal state argument "

    .line 379
    .line 380
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :cond_d
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 395
    .line 396
    if-eqz v2, :cond_f

    .line 397
    .line 398
    invoke-virtual {v2}, Landroid/net/NetworkAgent;->unregister()V

    .line 399
    .line 400
    .line 401
    const/4 v2, 0x0

    .line 402
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_e
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 406
    .line 407
    if-eqz v2, :cond_f

    .line 408
    .line 409
    invoke-virtual {v2}, Landroid/net/NetworkAgent;->markConnected()V

    .line 410
    .line 411
    .line 412
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :goto_9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    .line 418
    .line 419
    throw v0
.end method

.method public final updateUidListInNetworkCapabilities()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/util/Range;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v3, "uidRange going to be updated is "

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " for profile "

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "Vpn"

    .line 56
    .line 57
    invoke-static {v2, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 81
    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public final updateUidRangesToPerAppVpn(Ljava/util/Set;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateUidRangesToPerAppVpn "

    .line 2
    .line 3
    .line 4
    const-string v1, "Vpn"

    .line 5
    .line 6
    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 33
    .line 34
    new-instance v2, Landroid/util/Range;

    .line 35
    .line 36
    invoke-direct {v2, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 37
    .line 38
    .line 39
    check-cast v1, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 46
    .line 47
    new-instance v2, Landroid/util/Range;

    .line 48
    .line 49
    invoke-direct {v2, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 50
    .line 51
    .line 52
    check-cast v1, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final updateUidRangesToUserVpn(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateUidRangesToUserVpn "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Vpn"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const v0, 0x186a0

    .line 30
    .line 31
    .line 32
    mul-int/2addr p1, v0

    .line 33
    add-int/lit8 v0, p1, 0x1

    .line 34
    .line 35
    const v1, 0x1869f

    .line 36
    .line 37
    .line 38
    add-int/2addr p1, v1

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 42
    .line 43
    new-instance v1, Landroid/util/Range;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 54
    .line 55
    .line 56
    check-cast p2, Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 63
    .line 64
    new-instance v1, Landroid/util/Range;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v1, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 75
    .line 76
    .line 77
    check-cast p2, Landroid/util/ArraySet;

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateUidRangesToUserVpnWithBlackList "

    .line 2
    .line 3
    .line 4
    const-string v1, "Vpn"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    move-object v0, p2

    .line 10
    check-cast v0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    add-int/lit8 p2, p2, 0x1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ne v1, p2, :cond_1

    .line 64
    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 69
    .line 70
    new-instance v3, Landroid/util/Range;

    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    add-int/lit8 v4, v1, -0x1

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {v3, p2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 83
    .line 84
    .line 85
    check-cast v2, Landroid/util/ArraySet;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    move p2, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-gt p2, v0, :cond_3

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 107
    .line 108
    new-instance v1, Landroid/util/Range;

    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-direct {v1, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 121
    .line 122
    .line 123
    check-cast v0, Landroid/util/ArraySet;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "android.software.ipsec_tunnels"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 34
    .line 35
    const-string p1, "Ikev2VpnProfile(s) requires PackageManager.FEATURE_IPSEC_TUNNELS"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final verifyCallingUidAndPackage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 13
    .line 14
    invoke-static {v1, p1, p0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    const-string v1, " does not belong to uid "

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method
