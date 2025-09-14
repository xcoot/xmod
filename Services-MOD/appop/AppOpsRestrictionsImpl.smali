.class public final Lcom/android/server/appop/AppOpsRestrictionsImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsRestrictions;


# instance fields
.field public final mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalRestrictions:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

.field public final mUserRestrictions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 25
    iput-object p1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    .line 31
    return-void
.end method


# virtual methods
.method public final clearUserRestrictions(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/util/SparseArray;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v4

    .line 23
    move v5, v2

    .line 24
    :goto_0
    if-ge v5, v4, :cond_2

    .line 26
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 32
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    .line 35
    move-result v7

    .line 36
    move v8, v2

    .line 37
    :goto_1
    if-ge v8, v7, :cond_1

    .line 39
    invoke-virtual {v6, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 42
    move-result v9

    .line 43
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 46
    add-int/lit8 v8, v8, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 60
    move v1, v3

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v1, v2

    .line 63
    :goto_3
    iget-object v4, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_4

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v3, v2

    .line 73
    :goto_4
    or-int p1, v1, v3

    .line 75
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 78
    move-result v1

    .line 79
    :goto_5
    if-ge v2, v1, :cond_5

    .line 81
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 84
    move-result v3

    .line 85
    new-instance v4, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;

    .line 87
    invoke-direct {v4, p0, v3}, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V

    .line 90
    iget-object v3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    return p1
.end method

.method public final dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 14
    move-result v4

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    const/4 v7, 0x1

    .line 17
    const-string v8, "]"

    .line 19
    const-string v9, ", "

    .line 21
    const-string v10, "["

    .line 23
    const-string v11, ":"

    .line 25
    if-ge v6, v4, :cond_2

    .line 27
    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v12

    .line 33
    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 38
    move-result-object v13

    .line 39
    check-cast v13, Landroid/util/SparseBooleanArray;

    .line 41
    new-instance v14, Ljava/lang/StringBuilder;

    .line 43
    const-string v15, "  Global restrictions for token "

    .line 45
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v11

    .line 58
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    new-instance v11, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    .line 72
    move-result v10

    .line 73
    const/4 v12, 0x0

    .line 74
    :goto_1
    if-ge v12, v10, :cond_1

    .line 76
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 79
    move-result v14

    .line 80
    if-le v14, v7, :cond_0

    .line 82
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    invoke-virtual {v13, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 88
    move-result v14

    .line 89
    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 92
    move-result-object v14

    .line 93
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v12, v12, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    const-string v8, "      Restricted ops: "

    .line 106
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 124
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 127
    move-result v4

    .line 128
    const/4 v6, 0x0

    .line 129
    :goto_2
    if-ge v6, v4, :cond_14

    .line 131
    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 133
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 136
    move-result-object v12

    .line 137
    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 139
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v13

    .line 143
    check-cast v13, Landroid/util/SparseArray;

    .line 145
    iget-object v14, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 147
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Landroid/util/SparseArray;

    .line 153
    if-eqz v13, :cond_3

    .line 155
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 158
    move-result v15

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    const/4 v15, 0x0

    .line 161
    :goto_3
    const-string/jumbo v5, "user: "

    .line 164
    if-lez v15, :cond_b

    .line 166
    if-nez v2, :cond_b

    .line 168
    const/4 v7, 0x0

    .line 169
    const/16 v17, 0x0

    .line 171
    const/16 v18, 0x0

    .line 173
    :goto_4
    if-ge v7, v15, :cond_a

    .line 175
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 178
    move-result v0

    .line 179
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 182
    move-result-object v19

    .line 183
    move/from16 v20, v4

    .line 185
    move-object/from16 v4, v19

    .line 187
    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 189
    if-nez v4, :cond_4

    .line 191
    goto :goto_5

    .line 192
    :cond_4
    if-ltz v3, :cond_5

    .line 194
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 197
    move-result v19

    .line 198
    if-nez v19, :cond_5

    .line 200
    :goto_5
    move-object/from16 v22, v10

    .line 202
    move-object/from16 v19, v13

    .line 204
    move/from16 v21, v15

    .line 206
    const/4 v15, 0x1

    .line 207
    goto :goto_8

    .line 208
    :cond_5
    move-object/from16 v19, v13

    .line 210
    if-nez v17, :cond_6

    .line 212
    new-instance v13, Ljava/lang/StringBuilder;

    .line 214
    move/from16 v21, v15

    .line 216
    const-string v15, "  User restrictions for token "

    .line 218
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v13

    .line 231
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const/16 v17, 0x1

    .line 236
    goto :goto_6

    .line 237
    :cond_6
    move/from16 v21, v15

    .line 239
    :goto_6
    if-nez v18, :cond_7

    .line 241
    const-string v13, "      Restricted ops:"

    .line 243
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const/16 v18, 0x1

    .line 248
    :cond_7
    invoke-static {v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    move-result-object v13

    .line 252
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 255
    move-result v15

    .line 256
    move-object/from16 v22, v10

    .line 258
    const/4 v10, 0x0

    .line 259
    :goto_7
    if-ge v10, v15, :cond_9

    .line 261
    invoke-virtual {v4, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 264
    move-result v23

    .line 265
    move-object/from16 v24, v4

    .line 267
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    .line 270
    move-result v4

    .line 271
    move/from16 v25, v15

    .line 273
    const/4 v15, 0x1

    .line 274
    if-le v4, v15, :cond_8

    .line 276
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_8
    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v10, v10, 0x1

    .line 288
    move-object/from16 v4, v24

    .line 290
    move/from16 v15, v25

    .line 292
    goto :goto_7

    .line 293
    :cond_9
    const/4 v15, 0x1

    .line 294
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v4, "        "

    .line 299
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 308
    const-string v0, " restricted ops: "

    .line 310
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 318
    move-object/from16 v0, p0

    .line 320
    move-object/from16 v13, v19

    .line 322
    move/from16 v4, v20

    .line 324
    move/from16 v15, v21

    .line 326
    move-object/from16 v10, v22

    .line 328
    goto/16 :goto_4

    .line 330
    :cond_a
    move/from16 v20, v4

    .line 332
    move-object/from16 v22, v10

    .line 334
    const/4 v15, 0x1

    .line 335
    goto :goto_9

    .line 336
    :cond_b
    move/from16 v20, v4

    .line 338
    move v15, v7

    .line 339
    move-object/from16 v22, v10

    .line 341
    const/16 v17, 0x0

    .line 343
    :goto_9
    if-eqz v14, :cond_c

    .line 345
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 348
    move-result v0

    .line 349
    goto :goto_a

    .line 350
    :cond_c
    const/4 v0, 0x0

    .line 351
    :goto_a
    if-lez v0, :cond_13

    .line 353
    if-gez v3, :cond_13

    .line 355
    new-instance v4, Landroid/util/IndentingPrintWriter;

    .line 357
    invoke-direct {v4, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 360
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 363
    const/4 v7, 0x0

    .line 364
    const/4 v10, 0x0

    .line 365
    :goto_b
    if-ge v7, v0, :cond_12

    .line 367
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 370
    move-result v13

    .line 371
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 374
    move-result-object v16

    .line 375
    move-object/from16 v15, v16

    .line 377
    check-cast v15, Landroid/os/PackageTagsList;

    .line 379
    if-nez v15, :cond_d

    .line 381
    goto :goto_d

    .line 382
    :cond_d
    if-eqz v2, :cond_e

    .line 384
    invoke-virtual {v15, v2}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    .line 387
    move-result v16

    .line 388
    goto :goto_c

    .line 389
    :cond_e
    const/16 v16, 0x1

    .line 391
    :goto_c
    if-nez v16, :cond_f

    .line 393
    :goto_d
    move/from16 v16, v0

    .line 395
    goto :goto_e

    .line 396
    :cond_f
    move/from16 v16, v0

    .line 398
    if-nez v17, :cond_10

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    const-string v1, "User restrictions for token "

    .line 404
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const/16 v17, 0x1

    .line 422
    :cond_10
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 425
    if-nez v10, :cond_11

    .line 427
    const-string v0, "Excluded packages:"

    .line 429
    invoke-virtual {v4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    const/4 v10, 0x1

    .line 433
    :cond_11
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 436
    invoke-virtual {v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v4, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 442
    const-string v0, " packages: "

    .line 444
    invoke-virtual {v4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 450
    invoke-virtual {v15, v4}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 453
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 456
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 459
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 462
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 464
    move-object/from16 v1, p1

    .line 466
    move/from16 v0, v16

    .line 468
    const/4 v15, 0x1

    .line 469
    goto :goto_b

    .line 470
    :cond_12
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 473
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 475
    move-object/from16 v0, p0

    .line 477
    move-object/from16 v1, p1

    .line 479
    move/from16 v4, v20

    .line 481
    move-object/from16 v10, v22

    .line 483
    const/4 v7, 0x1

    .line 484
    goto/16 :goto_2

    .line 486
    :cond_14
    return-void
.end method
