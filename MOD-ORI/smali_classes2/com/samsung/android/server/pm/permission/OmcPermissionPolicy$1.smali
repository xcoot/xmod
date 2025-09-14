.class public final Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;
.super Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const v1, 0x2800b000

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    const-string p0, "Package not found: "

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "OmcPermissionPolicy"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    const-string p0, "Permission not found: "

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "OmcPermissionPolicy"

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 20

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
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v3, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, " is null"

    .line 42
    .line 43
    const-string v3, "OmcPermissionPolicy"

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 50
    .line 51
    array-length v5, v3

    .line 52
    const/4 v10, 0x0

    .line 53
    move v6, v10

    .line 54
    :goto_0
    const/4 v7, 0x0

    .line 55
    if-ge v6, v5, :cond_3

    .line 56
    .line 57
    aget-object v11, v3, v6

    .line 58
    .line 59
    invoke-static {v4, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-nez v11, :cond_2

    .line 64
    .line 65
    aput-object v7, v3, v6

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    new-instance v4, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move-object v11, v3

    .line 80
    check-cast v11, [Ljava/lang/String;

    .line 81
    .line 82
    new-instance v12, Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-direct {v12, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    if-eqz p3, :cond_4

    .line 90
    .line 91
    const/16 v4, 0x30

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/16 v4, 0x20

    .line 95
    .line 96
    :goto_1
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    const-class v6, Landroid/permission/PermissionManager;

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroid/permission/PermissionManager;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    move v13, v10

    .line 115
    :goto_2
    if-ge v13, v6, :cond_6

    .line 116
    .line 117
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 122
    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 126
    .line 127
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-ge v15, v7, :cond_5

    .line 132
    .line 133
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    move-object v15, v2

    .line 138
    check-cast v15, Landroid/util/ArraySet;

    .line 139
    .line 140
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_5

    .line 145
    .line 146
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 154
    .line 155
    const/4 v7, 0x0

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    array-length v13, v11

    .line 158
    new-array v2, v13, [Ljava/lang/String;

    .line 159
    .line 160
    move v3, v10

    .line 161
    move v5, v3

    .line 162
    move v6, v5

    .line 163
    :goto_3
    if-ge v3, v13, :cond_9

    .line 164
    .line 165
    aget-object v7, v11, v3

    .line 166
    .line 167
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    if-nez v14, :cond_7

    .line 172
    .line 173
    const/4 v14, 0x0

    .line 174
    goto :goto_4

    .line 175
    :cond_7
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 176
    .line 177
    :goto_4
    if-eqz v14, :cond_8

    .line 178
    .line 179
    aput-object v7, v2, v6

    .line 180
    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    add-int/lit8 v14, v13, -0x1

    .line 185
    .line 186
    sub-int/2addr v14, v5

    .line 187
    aput-object v7, v2, v14

    .line 188
    .line 189
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    move v14, v10

    .line 195
    :goto_6
    if-ge v14, v13, :cond_15

    .line 196
    .line 197
    aget-object v15, v11, v14

    .line 198
    .line 199
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_14

    .line 204
    .line 205
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v9, v15, v2, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    const/16 v16, 0x1

    .line 212
    .line 213
    if-eqz p3, :cond_a

    .line 214
    .line 215
    and-int/lit8 v2, v7, 0x10

    .line 216
    .line 217
    if-eqz v2, :cond_a

    .line 218
    .line 219
    move/from16 v17, v16

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_a
    move/from16 v17, v10

    .line 223
    .line 224
    :goto_7
    and-int/lit8 v2, v7, 0x17

    .line 225
    .line 226
    if-eqz v2, :cond_c

    .line 227
    .line 228
    if-eqz v17, :cond_b

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_b
    move/from16 v18, v4

    .line 232
    .line 233
    move/from16 v19, v7

    .line 234
    .line 235
    goto/16 :goto_c

    .line 236
    .line 237
    :cond_c
    :goto_8
    and-int/lit8 v2, v7, 0x4

    .line 238
    .line 239
    if-eqz v2, :cond_d

    .line 240
    .line 241
    goto/16 :goto_d

    .line 242
    .line 243
    :cond_d
    and-int/lit16 v2, v7, 0x3800

    .line 244
    .line 245
    or-int v18, v4, v2

    .line 246
    .line 247
    invoke-virtual {v0, v15}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-nez v2, :cond_e

    .line 252
    .line 253
    move v2, v10

    .line 254
    goto :goto_9

    .line 255
    :cond_e
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    :goto_9
    if-eqz v2, :cond_f

    .line 260
    .line 261
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 262
    .line 263
    const/16 v5, 0x1000

    .line 264
    .line 265
    const/16 v6, 0x1000

    .line 266
    .line 267
    move-object v2, v9

    .line 268
    move-object v3, v15

    .line 269
    move/from16 v19, v7

    .line 270
    .line 271
    move-object v7, v8

    .line 272
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 273
    .line 274
    .line 275
    goto :goto_a

    .line 276
    :cond_f
    move/from16 v19, v7

    .line 277
    .line 278
    :goto_a
    if-eqz v17, :cond_10

    .line 279
    .line 280
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 281
    .line 282
    and-int/lit8 v6, v19, -0x11

    .line 283
    .line 284
    move-object v2, v9

    .line 285
    move-object v3, v15

    .line 286
    move/from16 v5, v19

    .line 287
    .line 288
    move-object v7, v8

    .line 289
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 290
    .line 291
    .line 292
    :cond_10
    iget-object v2, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-virtual {v2, v8, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v2, v15, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v2, :cond_11

    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_11
    move/from16 v16, v10

    .line 312
    .line 313
    :goto_b
    if-nez v16, :cond_12

    .line 314
    .line 315
    iget-object v2, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v2, v3, v15, v8}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 324
    .line 325
    .line 326
    :cond_12
    or-int/lit8 v5, v18, 0x40

    .line 327
    .line 328
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 329
    .line 330
    move-object v2, v9

    .line 331
    move-object v3, v15

    .line 332
    move/from16 v6, v18

    .line 333
    .line 334
    move-object v7, v8

    .line 335
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 336
    .line 337
    .line 338
    :goto_c
    and-int/lit8 v2, v19, 0x20

    .line 339
    .line 340
    if-eqz v2, :cond_13

    .line 341
    .line 342
    and-int/lit8 v2, v19, 0x10

    .line 343
    .line 344
    if-eqz v2, :cond_13

    .line 345
    .line 346
    if-nez p3, :cond_13

    .line 347
    .line 348
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 349
    .line 350
    const/16 v5, 0x10

    .line 351
    .line 352
    const/4 v6, 0x0

    .line 353
    move-object v2, v9

    .line 354
    move-object v3, v15

    .line 355
    move-object v7, v8

    .line 356
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 357
    .line 358
    .line 359
    :cond_13
    move/from16 v4, v18

    .line 360
    .line 361
    :cond_14
    :goto_d
    add-int/lit8 v14, v14, 0x1

    .line 362
    .line 363
    goto/16 :goto_6

    .line 364
    .line 365
    :cond_15
    return-void
.end method

.method public final revokeRuntimePermissionsProxy(ILjava/lang/String;Ljava/util/Set;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :cond_1
    if-eqz p0, :cond_7

    .line 23
    .line 24
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v7, Landroid/util/ArraySet;

    .line 34
    .line 35
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v7, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    check-cast p3, Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_7

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    move-object v2, p3

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v0, v2, p2, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    and-int/lit8 v1, p3, 0x20

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    and-int/lit8 v1, p3, 0x4

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    and-int/lit8 p3, p3, 0x10

    .line 89
    .line 90
    if-eqz p3, :cond_6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    invoke-virtual {v0, p2, v2, v6}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 94
    .line 95
    .line 96
    const/16 v4, 0x20

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v1, v0

    .line 100
    move-object v3, p2

    .line 101
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    :goto_1
    return-void
.end method
