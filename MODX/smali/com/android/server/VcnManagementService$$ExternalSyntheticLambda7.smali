.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/net/NetworkCapabilities;

.field public final synthetic f$2:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/VcnManagementService;

    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;->f$1:Landroid/net/NetworkCapabilities;

    .line 8
    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;->f$2:Landroid/net/LinkProperties;

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/VcnManagementService;

    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;->f$1:Landroid/net/NetworkCapabilities;

    .line 5
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;->f$2:Landroid/net/LinkProperties;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Landroid/net/NetworkCapabilities;

    .line 12
    invoke-direct {v2, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 15
    iget-object v3, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    iget-object v4, v0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 20
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x0

    .line 30
    :cond_0
    move-object v6, v5

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_3

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 46
    if-eqz v6, :cond_2

    .line 48
    iget-object v8, v4, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 50
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_1

    .line 56
    iget-object v8, v4, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 58
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 64
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 67
    move-result-object v8

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object v8, v5

    .line 70
    :goto_1
    invoke-virtual {v6, v8}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_2

    .line 76
    const-string v6, "Got multiple subscription groups for a single network"

    .line 78
    invoke-static {v6}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 81
    :cond_2
    iget-object v6, v4, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 83
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_0

    .line 89
    iget-object v6, v4, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 91
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 97
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 100
    move-result-object v6

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v4, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 104
    monitor-enter v4

    .line 105
    :try_start_1
    iget-object v3, v0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 107
    check-cast v3, Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/server/vcn/Vcn;

    .line 115
    iget-object v5, v0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 117
    check-cast v5, Landroid/util/ArrayMap;

    .line 119
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Landroid/net/vcn/VcnConfig;

    .line 125
    const/4 v7, 0x1

    .line 126
    const/4 v8, 0x0

    .line 127
    if-eqz v3, :cond_a

    .line 129
    if-nez v5, :cond_4

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v10, "Vcn instance exists but VcnConfig does not for "

    .line 138
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v9

    .line 148
    invoke-static {v9}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto/16 :goto_c

    .line 155
    :cond_4
    :goto_2
    iget v9, v3, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 157
    const/4 v10, 0x2

    .line 158
    if-ne v9, v10, :cond_5

    .line 160
    move v9, v7

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move v9, v8

    .line 163
    :goto_3
    iget-object v11, v0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 165
    iget-object v12, v0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 167
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    new-instance v13, Landroid/util/ArraySet;

    .line 172
    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 175
    invoke-virtual {v5}, Landroid/net/vcn/VcnConfig;->getRestrictedUnderlyingNetworkTransports()Ljava/util/Set;

    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-virtual {v11, v6, v12}, Lcom/android/server/VcnManagementService$Dependencies;->getRestrictedTransportsFromCarrierConfig(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Set;

    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-virtual {v13}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 192
    move-result-object v5

    .line 193
    move v6, v8

    .line 194
    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_b

    .line 200
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v11

    .line 204
    check-cast v11, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result v11

    .line 210
    invoke-virtual {v2, v11}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 213
    move-result v12

    .line 214
    if-eqz v12, :cond_6

    .line 216
    if-eqz v11, :cond_8

    .line 218
    const/4 v12, 0x7

    .line 219
    if-ne v11, v12, :cond_7

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    move v6, v7

    .line 223
    goto :goto_7

    .line 224
    :cond_8
    :goto_5
    iget v11, v3, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 226
    if-ne v11, v10, :cond_9

    .line 228
    move v11, v7

    .line 229
    goto :goto_6

    .line 230
    :cond_9
    move v11, v8

    .line 231
    :goto_6
    or-int/2addr v6, v11

    .line 232
    goto :goto_4

    .line 233
    :cond_a
    move v6, v8

    .line 234
    move v9, v6

    .line 235
    :cond_b
    :goto_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    new-instance v3, Landroid/net/NetworkCapabilities$Builder;

    .line 238
    invoke-direct {v3, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 241
    const/16 v2, 0x1c

    .line 243
    if-eqz v9, :cond_c

    .line 245
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 252
    :goto_8
    const/16 v2, 0xd

    .line 254
    if-eqz v6, :cond_d

    .line 256
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 259
    :cond_d
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 262
    move-result-object v3

    .line 263
    new-instance v4, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    .line 265
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 267
    sget v5, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->$r8$clinit:I

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 275
    move-result-object v5

    .line 276
    if-nez v5, :cond_e

    .line 278
    goto :goto_a

    .line 279
    :cond_e
    iget-object v5, v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mLockObject:Ljava/lang/Object;

    .line 281
    monitor-enter v5

    .line 282
    :try_start_2
    iget-object v6, v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mLinkProperties:Ljava/util/Map;

    .line 284
    check-cast v6, Landroid/util/ArrayMap;

    .line 286
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 289
    move-result-object v6

    .line 290
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 293
    move-result-object v6

    .line 294
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_11

    .line 300
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    move-result-object v9

    .line 304
    check-cast v9, Ljava/util/Map$Entry;

    .line 306
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 309
    move-result-object v10

    .line 310
    if-eqz v10, :cond_f

    .line 312
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 315
    move-result-object v10

    .line 316
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 319
    move-result v10

    .line 320
    if-nez v10, :cond_f

    .line 322
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 325
    move-result-object v10

    .line 326
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 329
    move-result-object v11

    .line 330
    check-cast v11, Landroid/net/LinkProperties;

    .line 332
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 335
    move-result-object v11

    .line 336
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 339
    move-result v10

    .line 340
    if-eqz v10, :cond_f

    .line 342
    iget-object v0, v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    .line 344
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 347
    move-result-object v6

    .line 348
    check-cast v0, Landroid/util/ArrayMap;

    .line 350
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 356
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 359
    move-result v0

    .line 360
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 363
    move-result v2

    .line 364
    if-eq v0, v2, :cond_10

    .line 366
    goto :goto_9

    .line 367
    :cond_10
    move v7, v8

    .line 368
    :goto_9
    monitor-exit v5

    .line 369
    move v8, v7

    .line 370
    goto :goto_a

    .line 371
    :catchall_1
    move-exception p0

    .line 372
    goto :goto_b

    .line 373
    :cond_11
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    :goto_a
    invoke-direct {v4, v8, v3}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(ZLandroid/net/NetworkCapabilities;)V

    .line 377
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 386
    return-object v4

    .line 387
    :goto_b
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 388
    throw p0

    .line 389
    :goto_c
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    throw p0

    .line 391
    :catchall_2
    move-exception p0

    .line 392
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 393
    throw p0
.end method
