.class public final Lcom/android/server/am/mars/filter/FilterManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

.field public final mFF:Lcom/android/server/am/mars/filter/FilterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 6
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 8
    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 12
    return-void
.end method

.method public static filterForSpecificPolicy(IIILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p0, v0, :cond_0

    .line 11
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 15
    const/16 v2, 0xa

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v2, p3, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 27
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/am/mars/filter/FilterChain;

    .line 39
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/am/mars/filter/FilterChain;->filter(IIILjava/lang/String;)I

    .line 44
    move-result v1

    .line 45
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 6
    move-object/from16 v3, p1

    .line 8
    iput-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    .line 10
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 30
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v6

    .line 40
    sget-object v7, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 42
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 47
    const/4 v6, 0x4

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v7

    .line 52
    sget-object v8, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 54
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 59
    const/4 v7, 0x5

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v8

    .line 64
    sget-object v9, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    .line 66
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 71
    const/4 v8, 0x6

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v9

    .line 76
    sget-object v10, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    .line 78
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 83
    const/4 v9, 0x7

    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v10

    .line 88
    sget-object v11, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 90
    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 95
    const/16 v10, 0x8

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v11

    .line 101
    sget-object v12, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    .line 103
    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 108
    const/16 v11, 0x9

    .line 110
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v12

    .line 114
    sget-object v13, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    .line 116
    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 121
    const/16 v12, 0xa

    .line 123
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v13

    .line 127
    sget-object v14, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    .line 129
    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 134
    const/16 v13, 0xb

    .line 136
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v14

    .line 140
    sget-object v15, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 142
    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 147
    const/16 v14, 0xc

    .line 149
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v15

    .line 153
    sget-object v10, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    .line 155
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 160
    const/16 v10, 0xd

    .line 162
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v15

    .line 166
    sget-object v10, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    .line 168
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 173
    const/16 v10, 0xe

    .line 175
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v15

    .line 179
    sget-object v7, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    .line 181
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 186
    const/16 v7, 0xf

    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v15

    .line 192
    sget-object v7, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    .line 194
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 199
    const/16 v7, 0x10

    .line 201
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v15

    .line 205
    sget-object v7, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    .line 207
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 212
    const/16 v7, 0x11

    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    move-result-object v15

    .line 218
    sget-object v10, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    .line 220
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 225
    const/16 v10, 0x12

    .line 227
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    move-result-object v15

    .line 231
    sget-object v10, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 233
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 238
    const/16 v10, 0x13

    .line 240
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    move-result-object v15

    .line 244
    sget-object v10, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    .line 246
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 251
    const/16 v10, 0x14

    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v10

    .line 257
    sget-object v15, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    .line 259
    invoke-virtual {v3, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 264
    const/16 v10, 0x15

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    move-result-object v15

    .line 270
    sget-object v10, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    .line 272
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 277
    const/16 v10, 0x16

    .line 279
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    move-result-object v15

    .line 283
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    .line 285
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 290
    const/16 v10, 0x17

    .line 292
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v15

    .line 296
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    .line 298
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 303
    const/16 v10, 0x18

    .line 305
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    move-result-object v15

    .line 309
    sget-object v16, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    .line 311
    sget-object v10, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 313
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 318
    const/16 v10, 0x19

    .line 320
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v15

    .line 324
    sget-object v10, Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    .line 326
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 331
    const/16 v10, 0x1a

    .line 333
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    move-result-object v15

    .line 337
    sget-object v10, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    .line 339
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 344
    const/16 v10, 0x1b

    .line 346
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    move-result-object v15

    .line 350
    sget-object v10, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 352
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 357
    const/16 v10, 0x1c

    .line 359
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v15

    .line 363
    sget-object v10, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    .line 365
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 370
    const/16 v10, 0x1d

    .line 372
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    move-result-object v15

    .line 376
    sget-object v10, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    .line 378
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 383
    const/16 v10, 0x1e

    .line 385
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    move-result-object v15

    .line 389
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    .line 391
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 396
    const/16 v10, 0x1f

    .line 398
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    move-result-object v15

    .line 402
    sget-object v10, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$NFCPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    .line 404
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 409
    const/16 v10, 0x20

    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    move-result-object v15

    .line 415
    sget-object v10, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    .line 417
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 422
    const/16 v10, 0x21

    .line 424
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    move-result-object v15

    .line 428
    sget-object v10, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    .line 430
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move v3, v1

    .line 434
    :goto_0
    const/16 v10, 0x22

    .line 436
    if-ge v3, v10, :cond_0

    .line 438
    iget-object v10, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    move-result-object v15

    .line 444
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    move-result-object v10

    .line 448
    check-cast v10, Lcom/android/server/am/mars/filter/IFilter;

    .line 450
    iget-object v15, v2, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    .line 452
    invoke-interface {v10, v15}, Lcom/android/server/am/mars/filter/IFilter;->init(Landroid/content/Context;)V

    .line 455
    add-int/2addr v3, v1

    .line 456
    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 459
    iget-object v2, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    move-result-object v3

    .line 465
    sget-object v10, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 467
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 470
    move-result-object v15

    .line 471
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChain;

    .line 473
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object v15, v1, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 478
    const/4 v15, 0x0

    .line 479
    iput-object v15, v1, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 481
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 484
    move-result-object v15

    .line 485
    new-instance v9, Lcom/android/server/am/mars/filter/FilterChain;

    .line 487
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object v15, v9, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 492
    iput-object v1, v9, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 494
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 497
    move-result-object v1

    .line 498
    new-instance v15, Lcom/android/server/am/mars/filter/FilterChain;

    .line 500
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object v1, v15, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 505
    iput-object v9, v15, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 507
    invoke-virtual {v10, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 510
    move-result-object v1

    .line 511
    new-instance v9, Lcom/android/server/am/mars/filter/FilterChain;

    .line 513
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object v1, v9, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 518
    iput-object v15, v9, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 520
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 523
    move-result-object v1

    .line 524
    new-instance v15, Lcom/android/server/am/mars/filter/FilterChain;

    .line 526
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object v1, v15, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 531
    iput-object v9, v15, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 533
    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 538
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    move-result-object v2

    .line 542
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 544
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 547
    invoke-static {v10, v5, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 550
    const/4 v9, 0x7

    .line 551
    invoke-static {v10, v9, v3, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 554
    const/16 v9, 0xe

    .line 556
    const/16 v15, 0x10

    .line 558
    invoke-static {v10, v13, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 561
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 564
    move-result-object v9

    .line 565
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 568
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 570
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 575
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    move-result-object v2

    .line 579
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 581
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 584
    const/4 v9, 0x5

    .line 585
    const/4 v15, 0x1

    .line 586
    invoke-static {v10, v15, v3, v6, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 589
    const/4 v9, 0x7

    .line 590
    const/16 v15, 0x8

    .line 592
    invoke-static {v10, v8, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 595
    invoke-static {v10, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 598
    const/16 v9, 0xd

    .line 600
    const/16 v15, 0xe

    .line 602
    invoke-static {v10, v14, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 605
    const/16 v9, 0xf

    .line 607
    const/16 v15, 0x10

    .line 609
    invoke-static {v10, v9, v3, v15, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 612
    const/16 v9, 0x1b

    .line 614
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 617
    move-result-object v15

    .line 618
    invoke-virtual {v3, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 621
    const/16 v9, 0x1c

    .line 623
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 626
    move-result-object v15

    .line 627
    invoke-virtual {v3, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 630
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 632
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 637
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 643
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 646
    const/4 v9, 0x7

    .line 647
    const/4 v15, 0x1

    .line 648
    invoke-static {v10, v15, v3, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 651
    const/16 v9, 0x8

    .line 653
    invoke-static {v10, v9, v3, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 656
    const/16 v9, 0xe

    .line 658
    invoke-static {v10, v14, v3, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 661
    const/16 v4, 0x1b

    .line 663
    const/16 v9, 0x12

    .line 665
    const/16 v15, 0x1a

    .line 667
    invoke-static {v10, v9, v3, v15, v4}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 670
    const/16 v4, 0x1c

    .line 672
    const/16 v9, 0x1f

    .line 674
    const/16 v15, 0x20

    .line 676
    invoke-static {v10, v4, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 679
    const/16 v4, 0x21

    .line 681
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 684
    move-result-object v9

    .line 685
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 688
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 690
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 695
    const/4 v2, 0x5

    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 699
    move-result-object v3

    .line 700
    new-instance v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 702
    invoke-direct {v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 705
    invoke-static {v10, v5, v2, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 708
    const/4 v4, 0x7

    .line 709
    invoke-static {v10, v4, v2, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 712
    const/16 v4, 0xe

    .line 714
    invoke-static {v10, v13, v2, v4, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 717
    iget-object v2, v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 719
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 724
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 727
    move-result-object v2

    .line 728
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 730
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 733
    invoke-static {v10, v5, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 736
    const/4 v4, 0x7

    .line 737
    invoke-static {v10, v4, v3, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 740
    const/16 v9, 0xe

    .line 742
    invoke-static {v10, v13, v3, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 745
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 747
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 752
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    move-result-object v2

    .line 756
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 758
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 761
    invoke-static {v10, v6, v3, v8, v4}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 764
    invoke-static {v10, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 767
    const/16 v4, 0xe

    .line 769
    const/16 v9, 0x15

    .line 771
    invoke-static {v10, v4, v3, v14, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 774
    const/16 v4, 0x16

    .line 776
    const/16 v9, 0x19

    .line 778
    const/16 v15, 0x1b

    .line 780
    invoke-static {v10, v4, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 783
    const/16 v4, 0x1e

    .line 785
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 788
    move-result-object v9

    .line 789
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 792
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 794
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 799
    const/16 v2, 0x8

    .line 801
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    move-result-object v3

    .line 805
    new-instance v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 807
    invoke-direct {v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 810
    invoke-static {v10, v6, v2, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 813
    const/16 v4, 0xe

    .line 815
    const/16 v9, 0x15

    .line 817
    invoke-static {v10, v13, v2, v4, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 820
    const/16 v4, 0x16

    .line 822
    const/16 v9, 0x19

    .line 824
    const/16 v15, 0x1e

    .line 826
    invoke-static {v10, v4, v2, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 829
    iget-object v2, v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 831
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 836
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 839
    move-result-object v2

    .line 840
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 842
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 845
    const/4 v4, 0x2

    .line 846
    invoke-static {v10, v5, v3, v4, v6}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 849
    const/4 v4, 0x5

    .line 850
    const/4 v9, 0x7

    .line 851
    invoke-static {v10, v4, v3, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 854
    invoke-static {v10, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 857
    const/16 v4, 0xe

    .line 859
    invoke-static {v10, v14, v3, v4, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 862
    const/16 v4, 0x13

    .line 864
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 867
    move-result-object v9

    .line 868
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 871
    const/16 v4, 0x18

    .line 873
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 876
    move-result-object v9

    .line 877
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 880
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 882
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 887
    const/16 v2, 0x12

    .line 889
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    move-result-object v3

    .line 893
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 895
    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 898
    const/4 v9, 0x2

    .line 899
    const/4 v15, 0x7

    .line 900
    invoke-static {v10, v8, v4, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 903
    invoke-static {v10, v11, v4, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 906
    const/16 v9, 0x13

    .line 908
    const/16 v15, 0x18

    .line 910
    invoke-static {v10, v2, v4, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 913
    const/16 v2, 0x1a

    .line 915
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 918
    move-result-object v9

    .line 919
    invoke-virtual {v4, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 922
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 925
    move-result-object v2

    .line 926
    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 929
    iget-object v2, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 931
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 936
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 939
    move-result-object v2

    .line 940
    invoke-virtual {v10, v5}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 943
    move-result-object v3

    .line 944
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 946
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 949
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 951
    const/4 v3, 0x0

    .line 952
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 954
    invoke-virtual {v10, v6}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 957
    move-result-object v3

    .line 958
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 960
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 965
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 967
    invoke-virtual {v10, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 970
    move-result-object v3

    .line 971
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 973
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 978
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 980
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 983
    move-result-object v3

    .line 984
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 986
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 991
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 993
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 996
    move-result-object v3

    .line 997
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 999
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1004
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1006
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1009
    move-result-object v3

    .line 1010
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1012
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1017
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1019
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1024
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    move-result-object v2

    .line 1028
    invoke-virtual {v10, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1031
    move-result-object v3

    .line 1032
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1034
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1039
    const/4 v3, 0x0

    .line 1040
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1042
    const/4 v3, 0x7

    .line 1043
    invoke-virtual {v10, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1046
    move-result-object v5

    .line 1047
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1049
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object v5, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1054
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1056
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1059
    move-result-object v4

    .line 1060
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1062
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1067
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1069
    const/4 v3, 0x2

    .line 1070
    invoke-virtual {v10, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1073
    move-result-object v4

    .line 1074
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1076
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1081
    iput-object v5, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1083
    const/16 v4, 0x20

    .line 1085
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1088
    move-result-object v5

    .line 1089
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1091
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1094
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1096
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1098
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1103
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1106
    move-result-object v2

    .line 1107
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 1109
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 1112
    const/4 v4, 0x2

    .line 1113
    const/4 v5, 0x7

    .line 1114
    const/4 v9, 0x1

    .line 1115
    invoke-static {v10, v9, v3, v4, v5}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1118
    const/16 v4, 0xf

    .line 1120
    invoke-static {v10, v4, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1123
    invoke-static {v10, v11, v3, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1126
    const/16 v4, 0xe

    .line 1128
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1131
    move-result-object v5

    .line 1132
    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1135
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1138
    move-result-object v5

    .line 1139
    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1142
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1144
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1149
    const/16 v2, 0xd

    .line 1151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    move-result-object v3

    .line 1155
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1158
    move-result-object v2

    .line 1159
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1161
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1164
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1166
    const/4 v2, 0x0

    .line 1167
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1169
    const/4 v2, 0x5

    .line 1170
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1173
    move-result-object v2

    .line 1174
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1176
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1179
    iput-object v2, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1181
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1183
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1188
    const/16 v2, 0xe

    .line 1190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1193
    move-result-object v3

    .line 1194
    const/4 v2, 0x1

    .line 1195
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1198
    move-result-object v2

    .line 1199
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1201
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1204
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1206
    const/4 v2, 0x0

    .line 1207
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1209
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1214
    const/16 v2, 0xf

    .line 1216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1219
    move-result-object v3

    .line 1220
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 1222
    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 1225
    const/4 v5, 0x2

    .line 1226
    const/16 v9, 0x8

    .line 1228
    invoke-static {v10, v5, v4, v9, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1231
    const/4 v5, 0x7

    .line 1232
    invoke-static {v10, v5, v4, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1235
    const/16 v5, 0xe

    .line 1237
    invoke-static {v10, v14, v4, v5, v2}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1240
    const/16 v2, 0x12

    .line 1242
    const/16 v5, 0x17

    .line 1244
    invoke-static {v10, v7, v4, v2, v5}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1247
    const/16 v2, 0x1a

    .line 1249
    const/16 v5, 0x1b

    .line 1251
    invoke-static {v10, v2, v4, v5, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1254
    const/16 v2, 0x1c

    .line 1256
    const/16 v5, 0x1d

    .line 1258
    const/16 v9, 0x1f

    .line 1260
    invoke-static {v10, v2, v4, v5, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1263
    const/16 v2, 0x20

    .line 1265
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1272
    const/16 v2, 0x21

    .line 1274
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1277
    move-result-object v2

    .line 1278
    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1281
    iget-object v2, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1283
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1288
    const/16 v2, 0x10

    .line 1290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1293
    move-result-object v2

    .line 1294
    invoke-virtual {v10, v6}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1297
    move-result-object v3

    .line 1298
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1300
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1305
    const/4 v3, 0x0

    .line 1306
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1308
    invoke-virtual {v10, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1311
    move-result-object v3

    .line 1312
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1314
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1317
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1319
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1321
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1324
    move-result-object v3

    .line 1325
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1327
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1330
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1332
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1334
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1337
    move-result-object v3

    .line 1338
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1340
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1345
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1347
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1350
    move-result-object v3

    .line 1351
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1353
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1356
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1358
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1360
    const/16 v3, 0xd

    .line 1362
    invoke-virtual {v10, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1365
    move-result-object v3

    .line 1366
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1368
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1371
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1373
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1375
    invoke-virtual {v10, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1378
    move-result-object v3

    .line 1379
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1381
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1384
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1386
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1388
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1393
    const/16 v1, 0x13

    .line 1395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1398
    move-result-object v1

    .line 1399
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1402
    move-result-object v2

    .line 1403
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1405
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1408
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1410
    const/4 v2, 0x0

    .line 1411
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1413
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1416
    move-result-object v2

    .line 1417
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1419
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1422
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1424
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1426
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1429
    move-result-object v2

    .line 1430
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1432
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1435
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1437
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1439
    invoke-virtual {v10, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1442
    move-result-object v2

    .line 1443
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1445
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1450
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1452
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1455
    move-result-object v2

    .line 1456
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1458
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1463
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1465
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    return-void
.end method
