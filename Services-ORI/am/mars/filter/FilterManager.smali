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

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 7
    .line 8
    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 11
    .line 12
    return-void
.end method

.method public static filterForSpecificPolicy(IIILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v2, p3, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/am/mars/filter/FilterChain;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/am/mars/filter/FilterChain;->filter(IIILjava/lang/String;)I

    .line 42
    .line 43
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

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 5
    .line 6
    move-object/from16 v3, p1

    .line 7
    .line 8
    iput-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    .line 17
    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 29
    .line 30
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v7, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 41
    .line 42
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    sget-object v8, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 53
    .line 54
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 58
    .line 59
    const/4 v7, 0x5

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    sget-object v9, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    .line 65
    .line 66
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 70
    .line 71
    const/4 v8, 0x6

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    sget-object v10, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    .line 77
    .line 78
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 82
    .line 83
    const/4 v9, 0x7

    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    sget-object v11, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 89
    .line 90
    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 94
    .line 95
    const/16 v10, 0x8

    .line 96
    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    sget-object v12, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    .line 102
    .line 103
    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 107
    .line 108
    const/16 v11, 0x9

    .line 109
    .line 110
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    sget-object v13, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    .line 115
    .line 116
    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 120
    .line 121
    const/16 v12, 0xa

    .line 122
    .line 123
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    sget-object v14, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    .line 128
    .line 129
    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 133
    .line 134
    const/16 v13, 0xb

    .line 135
    .line 136
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    sget-object v15, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 141
    .line 142
    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 146
    .line 147
    const/16 v14, 0xc

    .line 148
    .line 149
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    sget-object v10, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    .line 154
    .line 155
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 159
    .line 160
    const/16 v10, 0xd

    .line 161
    .line 162
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    sget-object v10, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    .line 167
    .line 168
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 172
    .line 173
    const/16 v10, 0xe

    .line 174
    .line 175
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    sget-object v7, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    .line 180
    .line 181
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 185
    .line 186
    const/16 v7, 0xf

    .line 187
    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    sget-object v7, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    .line 193
    .line 194
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 198
    .line 199
    const/16 v7, 0x10

    .line 200
    .line 201
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    sget-object v7, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    .line 206
    .line 207
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 211
    .line 212
    const/16 v7, 0x11

    .line 213
    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    sget-object v10, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    .line 219
    .line 220
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 224
    .line 225
    const/16 v10, 0x12

    .line 226
    .line 227
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    sget-object v10, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 232
    .line 233
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 237
    .line 238
    const/16 v10, 0x13

    .line 239
    .line 240
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    sget-object v10, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    .line 245
    .line 246
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 250
    .line 251
    const/16 v10, 0x14

    .line 252
    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    sget-object v15, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    .line 258
    .line 259
    invoke-virtual {v3, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 263
    .line 264
    const/16 v10, 0x15

    .line 265
    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v15

    .line 270
    sget-object v10, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    .line 271
    .line 272
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 276
    .line 277
    const/16 v10, 0x16

    .line 278
    .line 279
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    .line 284
    .line 285
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 289
    .line 290
    const/16 v10, 0x17

    .line 291
    .line 292
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    .line 297
    .line 298
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 302
    .line 303
    const/16 v10, 0x18

    .line 304
    .line 305
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v15

    .line 309
    sget-object v16, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    .line 310
    .line 311
    sget-object v10, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 312
    .line 313
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 317
    .line 318
    const/16 v10, 0x19

    .line 319
    .line 320
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    sget-object v10, Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    .line 325
    .line 326
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 330
    .line 331
    const/16 v10, 0x1a

    .line 332
    .line 333
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    sget-object v10, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    .line 338
    .line 339
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 343
    .line 344
    const/16 v10, 0x1b

    .line 345
    .line 346
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v15

    .line 350
    sget-object v10, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 351
    .line 352
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 356
    .line 357
    const/16 v10, 0x1c

    .line 358
    .line 359
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v15

    .line 363
    sget-object v10, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    .line 364
    .line 365
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 369
    .line 370
    const/16 v10, 0x1d

    .line 371
    .line 372
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v15

    .line 376
    sget-object v10, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    .line 377
    .line 378
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 382
    .line 383
    const/16 v10, 0x1e

    .line 384
    .line 385
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v15

    .line 389
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    .line 390
    .line 391
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 395
    .line 396
    const/16 v10, 0x1f

    .line 397
    .line 398
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    sget-object v10, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$NFCPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    .line 403
    .line 404
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 408
    .line 409
    const/16 v10, 0x20

    .line 410
    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v15

    .line 415
    sget-object v10, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    .line 416
    .line 417
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 421
    .line 422
    const/16 v10, 0x21

    .line 423
    .line 424
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v15

    .line 428
    sget-object v10, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    .line 429
    .line 430
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move v3, v1

    .line 434
    :goto_0
    const/16 v10, 0x22

    .line 435
    .line 436
    if-ge v3, v10, :cond_0

    .line 437
    .line 438
    iget-object v10, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 439
    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    check-cast v10, Lcom/android/server/am/mars/filter/IFilter;

    .line 449
    .line 450
    iget-object v15, v2, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    .line 451
    .line 452
    invoke-interface {v10, v15}, Lcom/android/server/am/mars/filter/IFilter;->init(Landroid/content/Context;)V

    .line 453
    .line 454
    .line 455
    add-int/2addr v3, v1

    .line 456
    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 458
    .line 459
    iget-object v2, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 460
    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    sget-object v10, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 466
    .line 467
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 468
    .line 469
    .line 470
    move-result-object v15

    .line 471
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChain;

    .line 472
    .line 473
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 474
    .line 475
    .line 476
    iput-object v15, v1, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 477
    .line 478
    const/4 v15, 0x0

    .line 479
    iput-object v15, v1, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 480
    .line 481
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 482
    .line 483
    .line 484
    move-result-object v15

    .line 485
    new-instance v9, Lcom/android/server/am/mars/filter/FilterChain;

    .line 486
    .line 487
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 488
    .line 489
    .line 490
    iput-object v15, v9, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 491
    .line 492
    iput-object v1, v9, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 493
    .line 494
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    new-instance v15, Lcom/android/server/am/mars/filter/FilterChain;

    .line 499
    .line 500
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 501
    .line 502
    .line 503
    iput-object v1, v15, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 504
    .line 505
    iput-object v9, v15, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 506
    .line 507
    invoke-virtual {v10, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    new-instance v9, Lcom/android/server/am/mars/filter/FilterChain;

    .line 512
    .line 513
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 514
    .line 515
    .line 516
    iput-object v1, v9, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 517
    .line 518
    iput-object v15, v9, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 519
    .line 520
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    new-instance v15, Lcom/android/server/am/mars/filter/FilterChain;

    .line 525
    .line 526
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 527
    .line 528
    .line 529
    iput-object v1, v15, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 530
    .line 531
    iput-object v9, v15, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 532
    .line 533
    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 537
    .line 538
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 543
    .line 544
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-static {v10, v5, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 548
    .line 549
    .line 550
    const/4 v9, 0x7

    .line 551
    invoke-static {v10, v9, v3, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 552
    .line 553
    .line 554
    const/16 v9, 0xe

    .line 555
    .line 556
    const/16 v15, 0x10

    .line 557
    .line 558
    invoke-static {v10, v13, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 566
    .line 567
    .line 568
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 569
    .line 570
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 574
    .line 575
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 580
    .line 581
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    const/4 v9, 0x5

    .line 585
    const/4 v15, 0x1

    .line 586
    invoke-static {v10, v15, v3, v6, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 587
    .line 588
    .line 589
    const/4 v9, 0x7

    .line 590
    const/16 v15, 0x8

    .line 591
    .line 592
    invoke-static {v10, v8, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 593
    .line 594
    .line 595
    invoke-static {v10, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 596
    .line 597
    .line 598
    const/16 v9, 0xd

    .line 599
    .line 600
    const/16 v15, 0xe

    .line 601
    .line 602
    invoke-static {v10, v14, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 603
    .line 604
    .line 605
    const/16 v9, 0xf

    .line 606
    .line 607
    const/16 v15, 0x10

    .line 608
    .line 609
    invoke-static {v10, v9, v3, v15, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 610
    .line 611
    .line 612
    const/16 v9, 0x1b

    .line 613
    .line 614
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 615
    .line 616
    .line 617
    move-result-object v15

    .line 618
    invoke-virtual {v3, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 619
    .line 620
    .line 621
    const/16 v9, 0x1c

    .line 622
    .line 623
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 624
    .line 625
    .line 626
    move-result-object v15

    .line 627
    invoke-virtual {v3, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 628
    .line 629
    .line 630
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 631
    .line 632
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 636
    .line 637
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 642
    .line 643
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    const/4 v9, 0x7

    .line 647
    const/4 v15, 0x1

    .line 648
    invoke-static {v10, v15, v3, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 649
    .line 650
    .line 651
    const/16 v9, 0x8

    .line 652
    .line 653
    invoke-static {v10, v9, v3, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 654
    .line 655
    .line 656
    const/16 v9, 0xe

    .line 657
    .line 658
    invoke-static {v10, v14, v3, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 659
    .line 660
    .line 661
    const/16 v4, 0x1b

    .line 662
    .line 663
    const/16 v9, 0x12

    .line 664
    .line 665
    const/16 v15, 0x1a

    .line 666
    .line 667
    invoke-static {v10, v9, v3, v15, v4}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 668
    .line 669
    .line 670
    const/16 v4, 0x1c

    .line 671
    .line 672
    const/16 v9, 0x1f

    .line 673
    .line 674
    const/16 v15, 0x20

    .line 675
    .line 676
    invoke-static {v10, v4, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 677
    .line 678
    .line 679
    const/16 v4, 0x21

    .line 680
    .line 681
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 686
    .line 687
    .line 688
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 689
    .line 690
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 694
    .line 695
    const/4 v2, 0x5

    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    new-instance v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 701
    .line 702
    invoke-direct {v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    invoke-static {v10, v5, v2, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 706
    .line 707
    .line 708
    const/4 v4, 0x7

    .line 709
    invoke-static {v10, v4, v2, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 710
    .line 711
    .line 712
    const/16 v4, 0xe

    .line 713
    .line 714
    invoke-static {v10, v13, v2, v4, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 715
    .line 716
    .line 717
    iget-object v2, v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 718
    .line 719
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 723
    .line 724
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 729
    .line 730
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-static {v10, v5, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 734
    .line 735
    .line 736
    const/4 v4, 0x7

    .line 737
    invoke-static {v10, v4, v3, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 738
    .line 739
    .line 740
    const/16 v9, 0xe

    .line 741
    .line 742
    invoke-static {v10, v13, v3, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 743
    .line 744
    .line 745
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 746
    .line 747
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 751
    .line 752
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 757
    .line 758
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 759
    .line 760
    .line 761
    invoke-static {v10, v6, v3, v8, v4}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 762
    .line 763
    .line 764
    invoke-static {v10, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 765
    .line 766
    .line 767
    const/16 v4, 0xe

    .line 768
    .line 769
    const/16 v9, 0x15

    .line 770
    .line 771
    invoke-static {v10, v4, v3, v14, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 772
    .line 773
    .line 774
    const/16 v4, 0x16

    .line 775
    .line 776
    const/16 v9, 0x19

    .line 777
    .line 778
    const/16 v15, 0x1b

    .line 779
    .line 780
    invoke-static {v10, v4, v3, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 781
    .line 782
    .line 783
    const/16 v4, 0x1e

    .line 784
    .line 785
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 786
    .line 787
    .line 788
    move-result-object v9

    .line 789
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 790
    .line 791
    .line 792
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 793
    .line 794
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 798
    .line 799
    const/16 v2, 0x8

    .line 800
    .line 801
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    new-instance v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 806
    .line 807
    invoke-direct {v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    invoke-static {v10, v6, v2, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 811
    .line 812
    .line 813
    const/16 v4, 0xe

    .line 814
    .line 815
    const/16 v9, 0x15

    .line 816
    .line 817
    invoke-static {v10, v13, v2, v4, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 818
    .line 819
    .line 820
    const/16 v4, 0x16

    .line 821
    .line 822
    const/16 v9, 0x19

    .line 823
    .line 824
    const/16 v15, 0x1e

    .line 825
    .line 826
    invoke-static {v10, v4, v2, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 827
    .line 828
    .line 829
    iget-object v2, v2, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 830
    .line 831
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 835
    .line 836
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 841
    .line 842
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    const/4 v4, 0x2

    .line 846
    invoke-static {v10, v5, v3, v4, v6}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 847
    .line 848
    .line 849
    const/4 v4, 0x5

    .line 850
    const/4 v9, 0x7

    .line 851
    invoke-static {v10, v4, v3, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 852
    .line 853
    .line 854
    invoke-static {v10, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 855
    .line 856
    .line 857
    const/16 v4, 0xe

    .line 858
    .line 859
    invoke-static {v10, v14, v3, v4, v7}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 860
    .line 861
    .line 862
    const/16 v4, 0x13

    .line 863
    .line 864
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 865
    .line 866
    .line 867
    move-result-object v9

    .line 868
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 869
    .line 870
    .line 871
    const/16 v4, 0x18

    .line 872
    .line 873
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 874
    .line 875
    .line 876
    move-result-object v9

    .line 877
    invoke-virtual {v3, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 878
    .line 879
    .line 880
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 881
    .line 882
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 886
    .line 887
    const/16 v2, 0x12

    .line 888
    .line 889
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 894
    .line 895
    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 896
    .line 897
    .line 898
    const/4 v9, 0x2

    .line 899
    const/4 v15, 0x7

    .line 900
    invoke-static {v10, v8, v4, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 901
    .line 902
    .line 903
    invoke-static {v10, v11, v4, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 904
    .line 905
    .line 906
    const/16 v9, 0x13

    .line 907
    .line 908
    const/16 v15, 0x18

    .line 909
    .line 910
    invoke-static {v10, v2, v4, v9, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 911
    .line 912
    .line 913
    const/16 v2, 0x1a

    .line 914
    .line 915
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 916
    .line 917
    .line 918
    move-result-object v9

    .line 919
    invoke-virtual {v4, v9}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 927
    .line 928
    .line 929
    iget-object v2, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 930
    .line 931
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 935
    .line 936
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    invoke-virtual {v10, v5}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 941
    .line 942
    .line 943
    move-result-object v3

    .line 944
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 945
    .line 946
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 947
    .line 948
    .line 949
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 950
    .line 951
    const/4 v3, 0x0

    .line 952
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 953
    .line 954
    invoke-virtual {v10, v6}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 959
    .line 960
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 961
    .line 962
    .line 963
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 964
    .line 965
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 966
    .line 967
    invoke-virtual {v10, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 972
    .line 973
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 974
    .line 975
    .line 976
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 977
    .line 978
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 979
    .line 980
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 985
    .line 986
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 987
    .line 988
    .line 989
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 990
    .line 991
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 992
    .line 993
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 998
    .line 999
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1003
    .line 1004
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1005
    .line 1006
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1011
    .line 1012
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1016
    .line 1017
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1018
    .line 1019
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1023
    .line 1024
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    invoke-virtual {v10, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v3

    .line 1032
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1033
    .line 1034
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1038
    .line 1039
    const/4 v3, 0x0

    .line 1040
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1041
    .line 1042
    const/4 v3, 0x7

    .line 1043
    invoke-virtual {v10, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v5

    .line 1047
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1048
    .line 1049
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1050
    .line 1051
    .line 1052
    iput-object v5, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1053
    .line 1054
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1055
    .line 1056
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v4

    .line 1060
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1061
    .line 1062
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1066
    .line 1067
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1068
    .line 1069
    const/4 v3, 0x2

    .line 1070
    invoke-virtual {v10, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v4

    .line 1074
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1075
    .line 1076
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1080
    .line 1081
    iput-object v5, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1082
    .line 1083
    const/16 v4, 0x20

    .line 1084
    .line 1085
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v5

    .line 1089
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1090
    .line 1091
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1095
    .line 1096
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1097
    .line 1098
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1102
    .line 1103
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 1108
    .line 1109
    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 1110
    .line 1111
    .line 1112
    const/4 v4, 0x2

    .line 1113
    const/4 v5, 0x7

    .line 1114
    const/4 v9, 0x1

    .line 1115
    invoke-static {v10, v9, v3, v4, v5}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1116
    .line 1117
    .line 1118
    const/16 v4, 0xf

    .line 1119
    .line 1120
    invoke-static {v10, v4, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v10, v11, v3, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1124
    .line 1125
    .line 1126
    const/16 v4, 0xe

    .line 1127
    .line 1128
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v5

    .line 1132
    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v5

    .line 1139
    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1140
    .line 1141
    .line 1142
    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1143
    .line 1144
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1148
    .line 1149
    const/16 v2, 0xd

    .line 1150
    .line 1151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v3

    .line 1155
    invoke-virtual {v10, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1160
    .line 1161
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1162
    .line 1163
    .line 1164
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1165
    .line 1166
    const/4 v2, 0x0

    .line 1167
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1168
    .line 1169
    const/4 v2, 0x5

    .line 1170
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v2

    .line 1174
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1175
    .line 1176
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    iput-object v2, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1180
    .line 1181
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1182
    .line 1183
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1187
    .line 1188
    const/16 v2, 0xe

    .line 1189
    .line 1190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    const/4 v2, 0x1

    .line 1195
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1200
    .line 1201
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1202
    .line 1203
    .line 1204
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1205
    .line 1206
    const/4 v2, 0x0

    .line 1207
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1208
    .line 1209
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1213
    .line 1214
    const/16 v2, 0xf

    .line 1215
    .line 1216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    .line 1221
    .line 1222
    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    const/4 v5, 0x2

    .line 1226
    const/16 v9, 0x8

    .line 1227
    .line 1228
    invoke-static {v10, v5, v4, v9, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1229
    .line 1230
    .line 1231
    const/4 v5, 0x7

    .line 1232
    invoke-static {v10, v5, v4, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1233
    .line 1234
    .line 1235
    const/16 v5, 0xe

    .line 1236
    .line 1237
    invoke-static {v10, v14, v4, v5, v2}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1238
    .line 1239
    .line 1240
    const/16 v2, 0x12

    .line 1241
    .line 1242
    const/16 v5, 0x17

    .line 1243
    .line 1244
    invoke-static {v10, v7, v4, v2, v5}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1245
    .line 1246
    .line 1247
    const/16 v2, 0x1a

    .line 1248
    .line 1249
    const/16 v5, 0x1b

    .line 1250
    .line 1251
    invoke-static {v10, v2, v4, v5, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1252
    .line 1253
    .line 1254
    const/16 v2, 0x1c

    .line 1255
    .line 1256
    const/16 v5, 0x1d

    .line 1257
    .line 1258
    const/16 v9, 0x1f

    .line 1259
    .line 1260
    invoke-static {v10, v2, v4, v5, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    .line 1261
    .line 1262
    .line 1263
    const/16 v2, 0x20

    .line 1264
    .line 1265
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1270
    .line 1271
    .line 1272
    const/16 v2, 0x21

    .line 1273
    .line 1274
    invoke-virtual {v10, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v2

    .line 1278
    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 1279
    .line 1280
    .line 1281
    iget-object v2, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1282
    .line 1283
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1287
    .line 1288
    const/16 v2, 0x10

    .line 1289
    .line 1290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v2

    .line 1294
    invoke-virtual {v10, v6}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v3

    .line 1298
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1299
    .line 1300
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1304
    .line 1305
    const/4 v3, 0x0

    .line 1306
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1307
    .line 1308
    invoke-virtual {v10, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1313
    .line 1314
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1315
    .line 1316
    .line 1317
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1318
    .line 1319
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1320
    .line 1321
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v3

    .line 1325
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1326
    .line 1327
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1328
    .line 1329
    .line 1330
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1331
    .line 1332
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1333
    .line 1334
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1339
    .line 1340
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1341
    .line 1342
    .line 1343
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1344
    .line 1345
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1346
    .line 1347
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v3

    .line 1351
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1352
    .line 1353
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1354
    .line 1355
    .line 1356
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1357
    .line 1358
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1359
    .line 1360
    const/16 v3, 0xd

    .line 1361
    .line 1362
    invoke-virtual {v10, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v3

    .line 1366
    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1367
    .line 1368
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1369
    .line 1370
    .line 1371
    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1372
    .line 1373
    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1374
    .line 1375
    invoke-virtual {v10, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1380
    .line 1381
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1382
    .line 1383
    .line 1384
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1385
    .line 1386
    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1387
    .line 1388
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 1392
    .line 1393
    const/16 v1, 0x13

    .line 1394
    .line 1395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v2

    .line 1403
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1404
    .line 1405
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1406
    .line 1407
    .line 1408
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1409
    .line 1410
    const/4 v2, 0x0

    .line 1411
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1412
    .line 1413
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v2

    .line 1417
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1418
    .line 1419
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1420
    .line 1421
    .line 1422
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1423
    .line 1424
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1425
    .line 1426
    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v2

    .line 1430
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1431
    .line 1432
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1433
    .line 1434
    .line 1435
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1436
    .line 1437
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1438
    .line 1439
    invoke-virtual {v10, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v2

    .line 1443
    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1444
    .line 1445
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1446
    .line 1447
    .line 1448
    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1449
    .line 1450
    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1451
    .line 1452
    invoke-virtual {v10, v7}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v2

    .line 1456
    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    .line 1457
    .line 1458
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1459
    .line 1460
    .line 1461
    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 1462
    .line 1463
    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 1464
    .line 1465
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    return-void
.end method
