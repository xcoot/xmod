.class public final Lcom/android/server/asks/UnknownStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public BASE_CODE_PATH:Ljava/lang/String;

.field public KEY_VALUE:Ljava/lang/String;

.field public PKGNAME:Ljava/lang/String;

.field public PKGSIGHASH:Ljava/lang/String;

.field public SIGHASH:Ljava/lang/String;

.field public blockPermGroup:Ljava/util/ArrayList;

.field public blockPermissions:Ljava/util/HashMap;

.field public certPolicies:Ljava/util/HashMap;

.field public defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

.field public exceptPkgName:Ljava/util/ArrayList;

.field public executeBlockPkgName:Ljava/util/ArrayList;

.field public regexDomainRule:Ljava/util/ArrayList;

.field public regexPackageRule:Ljava/util/ArrayList;

.field public tagNameList:Ljava/util/ArrayList;

.field public unknownAppsList:Ljava/util/HashMap;

.field public warningPermGroup:Ljava/util/ArrayList;

.field public warningPermissions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 17
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 19
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 25
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 27
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    .line 35
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 37
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 39
    return-void
.end method

.method public static isDevDevice()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.boot.em.status"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "0x1"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method


# virtual methods
.method public final addCertPolicy(Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    move-object/from16 v5, p5

    .line 13
    move/from16 v6, p6

    .line 15
    move/from16 v7, p7

    .line 17
    move-object/from16 v8, p8

    .line 19
    move/from16 v9, p10

    .line 21
    move-object/from16 v10, p11

    .line 23
    move-object/from16 v11, p12

    .line 25
    const-string v12, "ALL"

    .line 27
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v13

    .line 31
    const/16 v14, 0x1f8

    .line 33
    const/16 v15, 0x1f4

    .line 35
    if-eqz v13, :cond_d

    .line 37
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v13

    .line 41
    if-eqz v13, :cond_d

    .line 43
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 45
    if-nez v1, :cond_1d

    .line 47
    new-instance v1, Lcom/android/server/asks/PKGINFO;

    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 54
    if-ne v2, v15, :cond_0

    .line 56
    const/16 v1, 0x1f9

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    if-ne v2, v14, :cond_2

    .line 61
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 63
    if-nez v1, :cond_1

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 80
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    move v1, v2

    .line 91
    :goto_0
    if-ne v9, v15, :cond_3

    .line 93
    move v9, v15

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const/16 v2, 0x1f7

    .line 97
    if-ne v9, v2, :cond_4

    .line 99
    const/16 v9, 0x1f7

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/16 v2, 0x1f6

    .line 104
    if-ne v9, v2, :cond_5

    .line 106
    const/16 v9, 0x1f6

    .line 108
    :cond_5
    :goto_1
    const/16 v2, 0x1f5

    .line 110
    if-ne v6, v15, :cond_6

    .line 112
    move v6, v2

    .line 113
    :cond_6
    if-ne v7, v15, :cond_7

    .line 115
    move v7, v2

    .line 116
    :cond_7
    if-ne v3, v15, :cond_8

    .line 118
    const/4 v2, 0x0

    .line 119
    move v3, v2

    .line 120
    :cond_8
    if-nez v4, :cond_a

    .line 122
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 124
    if-nez v2, :cond_9

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iput-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 133
    :cond_9
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_a

    .line 141
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_a
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 153
    if-nez v2, :cond_b

    .line 155
    new-instance v2, Ljava/util/HashMap;

    .line 157
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 160
    iput-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 162
    :cond_b
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 164
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_c

    .line 170
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 172
    move-object/from16 v5, p9

    .line 174
    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_c
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 179
    iput v4, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 181
    iput v1, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 183
    iput v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 185
    iput v6, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 187
    iput v7, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 189
    iput v9, v0, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    .line 191
    iput-object v10, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 193
    iput-object v11, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 195
    goto/16 :goto_7

    .line 197
    :cond_d
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 199
    if-nez v8, :cond_e

    .line 201
    new-instance v8, Ljava/util/HashMap;

    .line 203
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 206
    iput-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 208
    :cond_e
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 210
    if-eqz v8, :cond_1d

    .line 212
    new-instance v8, Lcom/android/server/asks/PKGINFO;

    .line 214
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 217
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 219
    if-eqz v13, :cond_15

    .line 221
    if-ne v2, v15, :cond_f

    .line 223
    iget v2, v13, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 225
    goto :goto_2

    .line 226
    :cond_f
    if-ne v2, v14, :cond_11

    .line 228
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 230
    if-nez v13, :cond_10

    .line 232
    new-instance v13, Ljava/util/ArrayList;

    .line 234
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iput-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 239
    :cond_10
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 244
    move-result v13

    .line 245
    if-nez v13, :cond_11

    .line 247
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_11
    :goto_2
    if-ne v6, v15, :cond_12

    .line 254
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 256
    iget v6, v6, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 258
    :cond_12
    if-ne v7, v15, :cond_13

    .line 260
    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 262
    iget v7, v7, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 264
    :cond_13
    if-ne v3, v15, :cond_14

    .line 266
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 268
    iget v3, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 270
    :cond_14
    if-ne v9, v15, :cond_15

    .line 272
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 274
    iget v13, v13, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    .line 276
    :goto_3
    const/16 v14, 0x1f7

    .line 278
    goto :goto_4

    .line 279
    :cond_15
    move v13, v9

    .line 280
    goto :goto_3

    .line 281
    :goto_4
    if-ne v9, v14, :cond_17

    .line 283
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 285
    if-nez v9, :cond_16

    .line 287
    new-instance v9, Ljava/util/ArrayList;

    .line 289
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 294
    :cond_16
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 296
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 299
    move-result v9

    .line 300
    if-nez v9, :cond_19

    .line 302
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    goto :goto_5

    .line 308
    :cond_17
    const/16 v9, 0x1f6

    .line 310
    if-ne v13, v9, :cond_19

    .line 312
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 314
    if-nez v9, :cond_18

    .line 316
    new-instance v9, Ljava/util/ArrayList;

    .line 318
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 323
    :cond_18
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 328
    move-result v9

    .line 329
    if-nez v9, :cond_19

    .line 331
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_19
    :goto_5
    if-nez v4, :cond_1b

    .line 338
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 340
    if-nez v9, :cond_1a

    .line 342
    new-instance v9, Ljava/util/ArrayList;

    .line 344
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 349
    :cond_1a
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 354
    move-result v9

    .line 355
    if-nez v9, :cond_1b

    .line 357
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 359
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1b
    iput v4, v8, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 364
    iput v2, v8, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 366
    iput v3, v8, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 368
    iput v6, v8, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 370
    iput v7, v8, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 372
    iput v13, v8, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    .line 374
    iput-object v10, v8, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 376
    iput-object v11, v8, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 378
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 380
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_1d

    .line 386
    new-instance v2, Ljava/util/HashMap;

    .line 388
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 391
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_1c

    .line 397
    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    goto :goto_6

    .line 401
    :cond_1c
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_6
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 406
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1d
    :goto_7
    return-void
.end method

.method public final addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move/from16 v3, p11

    move-object/from16 v4, p14

    .line 1
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 5
    :cond_1
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 7
    :cond_2
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 9
    :cond_3
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    :cond_4
    const/4 v5, 0x1

    if-eqz p2, :cond_7

    if-eqz p9, :cond_6

    .line 11
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 12
    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    sub-int/2addr v6, v5

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    goto :goto_0

    .line 13
    :cond_5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 14
    :cond_6
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    goto :goto_0

    :cond_7
    if-eqz p9, :cond_9

    .line 15
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 16
    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    sub-int/2addr v6, v5

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    goto :goto_0

    .line 17
    :cond_8
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 18
    :cond_9
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :goto_0
    if-eqz v6, :cond_10

    .line 19
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 20
    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 21
    new-instance v7, Lcom/android/server/asks/PEMINFO;

    .line 22
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move/from16 v8, p4

    .line 23
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->MIN:I

    move/from16 v8, p5

    .line 24
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->MAX:I

    move v8, p3

    .line 25
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    move/from16 v8, p6

    .line 26
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    move/from16 v8, p7

    .line 27
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    const/4 v8, 0x0

    .line 28
    iput-object v8, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    move-object/from16 v8, p12

    .line 29
    iput-object v8, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    move-object/from16 v8, p13

    .line 30
    iput-object v8, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v8, -0x1

    if-eq v3, v8, :cond_f

    .line 31
    new-instance v9, Lcom/android/server/asks/MORERULES;

    .line 32
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    .line 33
    iput-boolean v10, v9, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    .line 34
    iput-boolean v10, v9, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    .line 35
    iput-boolean v10, v9, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    .line 36
    iput-object v9, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 37
    iput v8, v9, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 38
    iput-boolean v10, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    .line 39
    iput-boolean v10, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    .line 40
    iput-boolean v10, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    .line 41
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 42
    array-length v8, v2

    const/4 v11, 0x2

    if-ne v8, v11, :cond_f

    .line 43
    aget-object v2, v2, v10

    const-string v8, "\\+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    :goto_1
    array-length v8, v2

    if-ge v10, v8, :cond_d

    .line 45
    aget-object v8, v2, v10

    const-string/jumbo v11, "famous"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 46
    iput-boolean v5, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    goto :goto_2

    .line 47
    :cond_a
    aget-object v8, v2, v10

    const-string/jumbo v11, "randompkg"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 48
    iput-boolean v5, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    goto :goto_2

    .line 49
    :cond_b
    aget-object v8, v2, v10

    const-string/jumbo v11, "malformed"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 50
    iput-boolean v5, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    :cond_c
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 51
    :cond_d
    iget-boolean v2, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    if-nez v2, :cond_e

    iget-boolean v2, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    if-nez v2, :cond_e

    iget-boolean v2, v9, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    if-eqz v2, :cond_f

    .line 52
    :cond_e
    iput v3, v9, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 53
    :cond_f
    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p15, :cond_10

    .line 54
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final addPermissionGroup(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 14
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 23
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    if-eqz p1, :cond_2

    .line 30
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    return-void
.end method

.method public final checkDomain(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "PackageInformationStore"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v0, " checkDomain() : "

    .line 11
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 28
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 34
    if-eqz p0, :cond_1

    .line 36
    const-string p1, "ALL"

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 50
    if-eqz p0, :cond_2

    .line 52
    const-string/jumbo p1, "checkPolicyWithDetail() : Target"

    .line 55
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 60
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 62
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 64
    iget-object v7, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 66
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    move-object v2, p2

    .line 71
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string p0, " no"

    .line 77
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public final checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const/4 v4, 0x3

    .line 8
    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 12
    const-string v5, "PackageInformationStore"

    .line 14
    if-eqz v0, :cond_22

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v6, "checkMoreRule() : ["

    .line 21
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v6, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 26
    iget-boolean v6, v6, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v6, "]["

    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v7, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 38
    iget-boolean v7, v7, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v6, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 48
    iget-boolean v6, v6, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v6, "]"

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 67
    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    .line 69
    const/4 v6, 0x1

    .line 70
    const/4 v7, 0x2

    .line 71
    const-string v9, "0x1"

    .line 73
    const-string/jumbo v10, "ro.boot.em.status"

    .line 76
    const/4 v11, 0x0

    .line 77
    if-eqz v0, :cond_10

    .line 79
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v12, "check_moreRule_Famous ="

    .line 90
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v12, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 95
    iget v12, v12, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 97
    invoke-static {v0, v12, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 100
    :cond_0
    iget-object v12, v1, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    .line 102
    iget-object v13, v1, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    .line 104
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 114
    const-string/jumbo v0, "check_moreRule_Famous + :"

    .line 117
    const-string v14, "::"

    .line 119
    const-string v15, "PackageInformation_Famous"

    .line 121
    invoke-static {v0, v12, v14, v13, v15}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    .line 126
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    const-string v15, "TARGET"

    .line 136
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v15, "VALUE"

    .line 141
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v15, Ljava/io/File;

    .line 146
    const-string v8, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_RANK.xml"

    .line 148
    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 154
    move-result-object v8

    .line 155
    const-string v16, ""

    .line 157
    if-eqz v8, :cond_3

    .line 159
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_3

    .line 169
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_2

    .line 179
    goto/16 :goto_9

    .line 181
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v8, v6, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 188
    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_4

    .line 194
    goto/16 :goto_9

    .line 196
    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    .line 198
    invoke-direct {v8, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 204
    move-result-object v15

    .line 205
    invoke-interface {v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 208
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 211
    move-result v17

    .line 212
    move-object/from16 v19, v16

    .line 214
    move/from16 v11, v17

    .line 216
    const/16 v20, 0x0

    .line 218
    :goto_0
    if-eq v11, v6, :cond_b

    .line 220
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 223
    move-result-object v6

    .line 224
    if-eq v11, v7, :cond_7

    .line 226
    if-eq v11, v4, :cond_6

    .line 228
    :cond_5
    move-object/from16 v11, v19

    .line 230
    move-object/from16 v4, v20

    .line 232
    goto :goto_2

    .line 233
    :cond_6
    const/4 v11, 0x0

    .line 234
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v21

    .line 238
    move-object/from16 v11, v21

    .line 240
    check-cast v11, Ljava/lang/String;

    .line 242
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_5

    .line 248
    move-object/from16 v11, v19

    .line 250
    move-object/from16 v6, v20

    .line 252
    invoke-virtual {v14, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-object v4, v6

    .line 256
    goto :goto_2

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    move-object v4, v0

    .line 259
    goto :goto_4

    .line 260
    :cond_7
    move-object/from16 v11, v19

    .line 262
    move-object/from16 v4, v20

    .line 264
    const/4 v7, 0x0

    .line 265
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object v18

    .line 269
    move-object/from16 v7, v18

    .line 271
    check-cast v7, Ljava/lang/String;

    .line 273
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v7

    .line 277
    if-eqz v7, :cond_9

    .line 279
    const/4 v7, 0x0

    .line 280
    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    if-eqz v4, :cond_8

    .line 286
    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 289
    move-result-object v4

    .line 290
    goto :goto_1

    .line 291
    :cond_8
    move-object v4, v11

    .line 292
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 294
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 297
    goto :goto_3

    .line 298
    :cond_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 301
    move-result v6

    .line 302
    if-eqz v6, :cond_a

    .line 304
    const/4 v6, 0x0

    .line 305
    invoke-interface {v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 308
    move-result-object v7

    .line 309
    if-eqz v7, :cond_a

    .line 311
    if-eqz v4, :cond_a

    .line 313
    invoke-interface {v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 316
    move-result-object v7

    .line 317
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_a
    :goto_2
    move-object v6, v4

    .line 321
    move-object v4, v11

    .line 322
    :goto_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 325
    move-result v11

    .line 326
    move-object/from16 v19, v4

    .line 328
    move-object/from16 v20, v6

    .line 330
    const/4 v4, 0x3

    .line 331
    const/4 v6, 0x1

    .line 332
    const/4 v7, 0x2

    .line 333
    goto :goto_0

    .line 334
    :cond_b
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 340
    goto :goto_9

    .line 341
    :catch_0
    move-exception v0

    .line 342
    goto :goto_6

    .line 343
    :catch_1
    move-exception v0

    .line 344
    goto :goto_7

    .line 345
    :catch_2
    move-exception v0

    .line 346
    goto :goto_8

    .line 347
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    goto :goto_5

    .line 351
    :catchall_1
    move-exception v0

    .line 352
    move-object v6, v0

    .line 353
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 356
    :goto_5
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 357
    :goto_6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 360
    goto :goto_9

    .line 361
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 364
    goto :goto_9

    .line 365
    :goto_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 368
    :goto_9
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_c

    .line 374
    :goto_a
    const/4 v1, 0x3

    .line 375
    goto :goto_b

    .line 376
    :cond_c
    const-string v0, "SIG"

    .line 378
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_d

    .line 384
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/util/ArrayList;

    .line 390
    if-eqz v0, :cond_d

    .line 392
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_d

    .line 398
    goto :goto_a

    .line 399
    :cond_d
    const-string v0, "SIGHASH"

    .line 401
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_e

    .line 407
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Ljava/util/ArrayList;

    .line 413
    if-eqz v0, :cond_e

    .line 415
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_e

    .line 421
    goto :goto_a

    .line 422
    :goto_b
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 424
    return-void

    .line 425
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 427
    const-string v4, "It is target of rank. "

    .line 429
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_f

    .line 438
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 440
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 442
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    move-result-object v16

    .line 446
    :cond_f
    move-object/from16 v4, v16

    .line 448
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v0

    .line 455
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 460
    const/4 v4, 0x1

    .line 461
    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    .line 463
    const/4 v4, 0x0

    .line 464
    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 466
    :cond_10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 468
    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    .line 470
    if-eqz v0, :cond_19

    .line 472
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_11

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    .line 480
    const-string/jumbo v4, "check_moreRule_RandomPkg"

    .line 483
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 488
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 490
    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 493
    :cond_11
    iget-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    .line 495
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_12

    .line 505
    const-string/jumbo v4, "check_moreRule_RandomPkg + :"

    .line 508
    const-string v6, "PackageInformation_RandomPkg"

    .line 510
    invoke-static {v4, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_12
    if-eqz v0, :cond_16

    .line 515
    const-string v4, "\\."

    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 520
    move-result-object v0

    .line 521
    const/4 v4, 0x0

    .line 522
    const/4 v6, 0x0

    .line 523
    :goto_c
    array-length v7, v0

    .line 524
    if-ge v4, v7, :cond_15

    .line 526
    aget-object v7, v0, v4

    .line 528
    invoke-static {v7}, Lcom/android/server/asks/MoreRuleRandomPkg;->isRandom(Ljava/lang/String;)Z

    .line 531
    move-result v7

    .line 532
    if-eqz v7, :cond_13

    .line 534
    add-int/lit8 v6, v6, 0x1

    .line 536
    :cond_13
    const/4 v7, 0x1

    .line 537
    if-ne v6, v7, :cond_14

    .line 539
    goto :goto_d

    .line 540
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 542
    goto :goto_c

    .line 543
    :cond_15
    const/4 v7, 0x1

    .line 544
    :goto_d
    if-eq v6, v7, :cond_17

    .line 546
    array-length v0, v0

    .line 547
    if-ne v6, v0, :cond_16

    .line 549
    goto :goto_e

    .line 550
    :cond_16
    const/4 v1, 0x3

    .line 551
    goto :goto_f

    .line 552
    :cond_17
    :goto_e
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_18

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    .line 560
    const-string v4, "It is target of randomPkg. "

    .line 562
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 567
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 569
    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 572
    :cond_18
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 574
    const/4 v4, 0x1

    .line 575
    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    .line 577
    const/4 v4, 0x0

    .line 578
    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 580
    goto :goto_10

    .line 581
    :goto_f
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 583
    return-void

    .line 584
    :cond_19
    :goto_10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 586
    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    .line 588
    if-eqz v0, :cond_23

    .line 590
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_1a

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    .line 598
    const-string/jumbo v4, "check_moreRule_MALFORMED:"

    .line 601
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 606
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 608
    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 611
    :cond_1a
    iget-object v0, v1, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    .line 613
    const/4 v1, 0x2

    .line 614
    new-array v1, v1, [I

    .line 616
    const/4 v4, 0x0

    .line 617
    aput v4, v1, v4

    .line 619
    const/4 v6, 0x1

    .line 620
    aput v4, v1, v6

    .line 622
    new-instance v4, Ljava/io/File;

    .line 624
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 630
    move-result v6

    .line 631
    const-string v7, "PackageInformation_ZIP"

    .line 633
    if-eqz v6, :cond_20

    .line 635
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 638
    move-result v4

    .line 639
    if-nez v4, :cond_1b

    .line 641
    goto :goto_15

    .line 642
    :cond_1b
    :try_start_5
    invoke-static {v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->findEOCDOffset(Ljava/lang/String;)J

    .line 645
    move-result-wide v8

    .line 646
    invoke-static {v8, v9, v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->parseEocdRecord(JLjava/lang/String;)Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;

    .line 649
    move-result-object v4

    .line 650
    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->diskNumber:S

    .line 652
    if-gtz v6, :cond_1c

    .line 654
    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->startDiskNumber:S

    .line 656
    if-lez v6, :cond_1d

    .line 658
    goto :goto_11

    .line 659
    :catch_3
    move-exception v0

    .line 660
    goto :goto_12

    .line 661
    :catch_4
    move-exception v0

    .line 662
    goto :goto_13

    .line 663
    :cond_1c
    :goto_11
    const-string v6, "ZIP Number of this Disk Tampering"

    .line 665
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v6, 0x1

    .line 669
    const/4 v8, 0x0

    .line 670
    aput v6, v1, v8

    .line 672
    :cond_1d
    iget v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirOffset:I

    .line 674
    iget v8, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirSize:I

    .line 676
    invoke-static {v6, v8, v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->countCentralDirectorySignatures(IILjava/lang/String;)I

    .line 679
    move-result v0

    .line 680
    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesThisDisk:S

    .line 682
    if-ne v6, v0, :cond_1e

    .line 684
    iget-short v4, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesTotal:S

    .line 686
    if-eq v4, v0, :cond_1f

    .line 688
    :cond_1e
    const-string v0, "Number of Entries this DiskTampering"

    .line 690
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v4, 0x1

    .line 694
    aput v4, v1, v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 696
    goto :goto_14

    .line 697
    :goto_12
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 700
    move-result-object v0

    .line 701
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    goto :goto_14

    .line 705
    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 708
    move-result-object v0

    .line 709
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_1f
    :goto_14
    move-object v8, v1

    .line 713
    goto :goto_16

    .line 714
    :cond_20
    :goto_15
    const-string v1, "The file "

    .line 716
    const-string v4, " does not exist."

    .line 718
    invoke-static {v1, v0, v4, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v8, 0x0

    .line 722
    :goto_16
    if-eqz v8, :cond_23

    .line 724
    invoke-static {v8}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 727
    move-result-object v0

    .line 728
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    .line 731
    move-result v0

    .line 732
    if-lez v0, :cond_21

    .line 734
    const-string v0, "Zip broken"

    .line 736
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 741
    const/4 v1, 0x1

    .line 742
    iput-boolean v1, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    .line 744
    const/4 v5, 0x0

    .line 745
    const-string v6, ""

    .line 747
    const/4 v2, 0x0

    .line 748
    const/4 v0, 0x0

    .line 749
    const/4 v4, 0x0

    .line 750
    const-string v7, ""

    .line 752
    const/4 v8, 0x0

    .line 753
    move-object/from16 v1, p2

    .line 755
    move v3, v0

    .line 756
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 759
    goto :goto_17

    .line 760
    :cond_21
    const-string v0, "Zip Success"

    .line 762
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v1, 0x3

    .line 766
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 768
    return-void

    .line 769
    :cond_22
    move v1, v4

    .line 770
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 772
    const-string v0, "The moreRule targetPolicy may be NULL."

    .line 774
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_23
    :goto_17
    return-void
.end method

.method public final checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 7
    if-nez v2, :cond_0

    .line 9
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 11
    if-nez v3, :cond_0

    .line 13
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 15
    if-nez v3, :cond_0

    .line 17
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 19
    if-nez v3, :cond_0

    .line 21
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 23
    if-nez v3, :cond_0

    .line 25
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 27
    if-eqz v3, :cond_0

    .line 29
    iget v6, v3, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 31
    iget v7, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 33
    iget v8, v3, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 35
    iget-object v9, v3, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 37
    iget-object v10, v3, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object/from16 v4, p2

    .line 43
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 46
    return-void

    .line 47
    :cond_0
    if-eqz v1, :cond_4

    .line 49
    const-string v3, "PackageInformationStore"

    .line 51
    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 59
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/HashMap;

    .line 67
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 72
    move-result v2

    .line 73
    const/4 v4, 0x1

    .line 74
    if-ne v2, v4, :cond_1

    .line 76
    const-string v2, "ALL"

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/server/asks/PKGINFO;

    .line 90
    if-eqz v1, :cond_2

    .line 92
    const-string/jumbo v0, "checkPolicy() : Target"

    .line 95
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v6, v1, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 100
    iget v7, v1, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 102
    iget v8, v1, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 104
    iget-object v9, v1, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 106
    iget-object v10, v1, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    move-object/from16 v4, p2

    .line 112
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 115
    return-void

    .line 116
    :cond_1
    const/16 v16, 0x0

    .line 118
    const-string v17, ""

    .line 120
    const/4 v13, 0x1

    .line 121
    const/4 v14, 0x0

    .line 122
    const/4 v15, 0x0

    .line 123
    const-string v18, ""

    .line 125
    const/16 v19, 0x0

    .line 127
    move-object/from16 v12, p2

    .line 129
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 132
    return-void

    .line 133
    :cond_2
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 135
    if-eqz v1, :cond_3

    .line 137
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 139
    if-eqz v1, :cond_3

    .line 141
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 143
    if-eqz v1, :cond_3

    .line 145
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 147
    if-eqz v1, :cond_3

    .line 149
    const/4 v8, 0x0

    .line 150
    const-string v9, ""

    .line 152
    const/4 v5, 0x2

    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    const-string v10, ""

    .line 157
    const/4 v11, 0x0

    .line 158
    move-object/from16 v4, p2

    .line 160
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 163
    return-void

    .line 164
    :cond_3
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 166
    if-eqz v1, :cond_4

    .line 168
    const-string/jumbo v1, "checkPolicy() : Default"

    .line 171
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 176
    iget v3, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 178
    iget v4, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 180
    iget v5, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 182
    iget-object v6, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 184
    iget-object v7, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v2, 0x0

    .line 188
    move-object/from16 v1, p2

    .line 190
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 193
    return-void

    .line 194
    :cond_4
    const/4 v13, 0x0

    .line 195
    const-string v14, ""

    .line 197
    const/4 v10, 0x4

    .line 198
    const/4 v11, 0x0

    .line 199
    const/4 v12, 0x0

    .line 200
    const-string v15, ""

    .line 202
    const/16 v16, 0x0

    .line 204
    move-object/from16 v9, p2

    .line 206
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 209
    return-void
.end method

.method public final checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/HashMap;

    .line 21
    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    const-string/jumbo v1, "checkPolicyWithDetail() : Target"

    .line 30
    const-string v2, "PackageInformationStore"

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 40
    if-eqz p0, :cond_2

    .line 42
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 47
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 49
    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 51
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 53
    iget-object v9, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    move-object v3, p3

    .line 58
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 64
    if-eqz p2, :cond_1

    .line 66
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 68
    if-eqz p2, :cond_1

    .line 70
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 72
    if-eqz p2, :cond_1

    .line 74
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 76
    if-eqz p0, :cond_1

    .line 78
    const/4 v7, 0x0

    .line 79
    const-string v8, ""

    .line 81
    const/4 v4, 0x2

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    const-string v9, ""

    .line 86
    const/4 v10, 0x0

    .line 87
    move-object v3, p3

    .line 88
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 91
    return-void

    .line 92
    :cond_1
    const-string p0, "ALL"

    .line 94
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 106
    if-eqz p0, :cond_2

    .line 108
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 113
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 115
    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 117
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 119
    iget-object v9, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v4, 0x0

    .line 123
    move-object v3, p3

    .line 124
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 127
    :cond_2
    :goto_0
    return-void
.end method

.method public final checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p4

    .line 9
    const-string v4, "PackageInformationStore"

    .line 11
    const-string/jumbo v5, "start to check P policy."

    .line 14
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 19
    if-eqz v5, :cond_21

    .line 21
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 23
    if-eqz v5, :cond_21

    .line 25
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 27
    if-eqz v5, :cond_21

    .line 29
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 31
    if-eqz v5, :cond_21

    .line 33
    if-eqz v1, :cond_21

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    const/4 v7, 0x0

    .line 41
    :goto_0
    array-length v8, v1

    .line 42
    if-ge v7, v8, :cond_0

    .line 44
    aget-object v8, v1, v7

    .line 46
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x1

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    :goto_1
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result v13

    .line 62
    if-ge v9, v13, :cond_5

    .line 64
    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v10

    .line 70
    check-cast v10, Ljava/util/HashMap;

    .line 72
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 75
    move-result-object v11

    .line 76
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v11

    .line 80
    move v13, v12

    .line 81
    const/4 v12, 0x0

    .line 82
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v14

    .line 86
    if-eqz v14, :cond_3

    .line 88
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v14

    .line 92
    check-cast v14, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    move-result-object v15

    .line 98
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    move-result v15

    .line 102
    if-nez v15, :cond_1

    .line 104
    const/4 v11, 0x0

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    if-nez v12, :cond_2

    .line 108
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    move-result-object v12

    .line 112
    check-cast v12, Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_2

    .line 120
    const-string v14, "additional P(B) :targetKey  - "

    .line 122
    invoke-static {v14, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    const/4 v11, 0x1

    .line 129
    :goto_3
    if-eqz v11, :cond_4

    .line 131
    const-string v9, "all target! "

    .line 133
    invoke-static {v13, v9, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 139
    move v10, v11

    .line 140
    move-object v11, v12

    .line 141
    move v12, v13

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    move-object v12, v11

    .line 144
    move v11, v10

    .line 145
    const/4 v10, 0x0

    .line 146
    :goto_4
    const-string v9, "additional P(B): apply MoreRule"

    .line 148
    const/16 v13, 0x1f5

    .line 150
    const/16 v14, 0x1f7

    .line 152
    const/16 v15, 0x1f6

    .line 154
    const/4 v6, 0x3

    .line 155
    if-eqz v10, :cond_a

    .line 157
    if-eqz v11, :cond_a

    .line 159
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v10

    .line 163
    check-cast v10, Lcom/android/server/asks/PEMINFO;

    .line 165
    const-string/jumbo v11, "checkPolicywithPem(B) :targetKey  - "

    .line 168
    invoke-static {v11, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz v10, :cond_a

    .line 173
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 175
    if-gt v11, v2, :cond_a

    .line 177
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 179
    if-gt v2, v11, :cond_a

    .line 181
    invoke-virtual {v0, v10, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 184
    iget v11, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 186
    if-eqz v11, :cond_6

    .line 188
    if-eq v11, v6, :cond_7

    .line 190
    goto/16 :goto_5

    .line 192
    :cond_6
    iget-object v11, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 194
    if-eqz v11, :cond_7

    .line 196
    iget v11, v11, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 198
    iput v11, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 200
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 203
    move-result v11

    .line 204
    if-eqz v11, :cond_7

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    iget v12, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 213
    invoke-static {v11, v12, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 216
    :cond_7
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 218
    if-ne v11, v15, :cond_8

    .line 220
    if-nez p3, :cond_8

    .line 222
    const-string v0, "additional P(B) : Target Group(local)"

    .line 224
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 229
    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 231
    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 233
    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 235
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 237
    const/4 v1, 0x0

    .line 238
    const/16 v8, 0x1f9

    .line 240
    move-object/from16 v0, p4

    .line 242
    move v3, v4

    .line 243
    move v4, v8

    .line 244
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 247
    return-void

    .line 248
    :cond_8
    if-ne v11, v14, :cond_9

    .line 250
    if-eqz p3, :cond_9

    .line 252
    const-string v0, "additional P(B) : Target Group(url)"

    .line 254
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 259
    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 261
    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 263
    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 265
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 267
    const/4 v1, 0x0

    .line 268
    const/16 v8, 0x1f9

    .line 270
    move-object/from16 v0, p4

    .line 272
    move v3, v4

    .line 273
    move v4, v8

    .line 274
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 277
    return-void

    .line 278
    :cond_9
    if-ne v11, v13, :cond_a

    .line 280
    const-string v0, "additional P(B) :  Target Group"

    .line 282
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 287
    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 289
    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 291
    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 293
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 295
    const/4 v1, 0x0

    .line 296
    const/16 v8, 0x1f9

    .line 298
    move-object/from16 v0, p4

    .line 300
    move v3, v4

    .line 301
    move v4, v8

    .line 302
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 305
    return-void

    .line 306
    :cond_a
    :goto_5
    const/4 v10, 0x0

    .line 307
    :goto_6
    array-length v11, v1

    .line 308
    if-ge v10, v11, :cond_10

    .line 310
    iget-object v11, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 312
    aget-object v12, v1, v10

    .line 314
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 317
    move-result v11

    .line 318
    if-eqz v11, :cond_f

    .line 320
    iget-object v11, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 322
    aget-object v12, v1, v10

    .line 324
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-result-object v11

    .line 328
    check-cast v11, Lcom/android/server/asks/PEMINFO;

    .line 330
    if-eqz v11, :cond_f

    .line 332
    iget v12, v11, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 334
    if-gt v12, v2, :cond_f

    .line 336
    iget v12, v11, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 338
    if-gt v2, v12, :cond_f

    .line 340
    invoke-virtual {v0, v11, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 343
    iget v12, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 345
    if-eqz v12, :cond_b

    .line 347
    if-eq v12, v6, :cond_c

    .line 349
    goto/16 :goto_7

    .line 351
    :cond_b
    iget-object v12, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 353
    if-eqz v12, :cond_c

    .line 355
    iget v12, v12, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 357
    iput v12, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 359
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 362
    move-result v12

    .line 363
    if-eqz v12, :cond_c

    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    iget v7, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 372
    invoke-static {v12, v7, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 375
    :cond_c
    iget v7, v11, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 377
    if-ne v7, v15, :cond_d

    .line 379
    if-nez p3, :cond_d

    .line 381
    const-string v0, "additional P(B) : Target(local)"

    .line 383
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 388
    iget v4, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 390
    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 392
    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 394
    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 396
    const/4 v1, 0x0

    .line 397
    const/16 v8, 0x1f9

    .line 399
    move-object/from16 v0, p4

    .line 401
    move v3, v4

    .line 402
    move v4, v8

    .line 403
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 406
    return-void

    .line 407
    :cond_d
    if-ne v7, v14, :cond_e

    .line 409
    if-eqz p3, :cond_e

    .line 411
    const-string v0, "additional P(B) : Target(url)"

    .line 413
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 418
    iget v4, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 420
    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 422
    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 424
    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 426
    const/4 v1, 0x0

    .line 427
    const/16 v8, 0x1f9

    .line 429
    move-object/from16 v0, p4

    .line 431
    move v3, v4

    .line 432
    move v4, v8

    .line 433
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 436
    return-void

    .line 437
    :cond_e
    if-ne v7, v13, :cond_f

    .line 439
    const-string v0, "additional P(B) : Target"

    .line 441
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 446
    iget v4, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 448
    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 450
    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 452
    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 454
    const/4 v1, 0x0

    .line 455
    const/16 v8, 0x1f9

    .line 457
    move-object/from16 v0, p4

    .line 459
    move v3, v4

    .line 460
    move v4, v8

    .line 461
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 464
    return-void

    .line 465
    :cond_f
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 467
    goto/16 :goto_6

    .line 469
    :cond_10
    const/4 v7, 0x0

    .line 470
    const/4 v9, 0x1

    .line 471
    const/4 v10, 0x0

    .line 472
    const/4 v11, 0x0

    .line 473
    :goto_8
    iget-object v12, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 475
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 478
    move-result v12

    .line 479
    if-ge v7, v12, :cond_15

    .line 481
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    move-result-object v9

    .line 487
    check-cast v9, Ljava/util/HashMap;

    .line 489
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 492
    move-result-object v10

    .line 493
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 496
    move-result-object v10

    .line 497
    move v12, v11

    .line 498
    const/4 v11, 0x0

    .line 499
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    move-result v16

    .line 503
    if-eqz v16, :cond_13

    .line 505
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    move-result-object v16

    .line 509
    check-cast v16, Ljava/util/Map$Entry;

    .line 511
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 514
    move-result-object v8

    .line 515
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 518
    move-result v8

    .line 519
    if-nez v8, :cond_11

    .line 521
    const/4 v8, 0x0

    .line 522
    goto :goto_a

    .line 523
    :cond_11
    if-nez v11, :cond_12

    .line 525
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 528
    move-result-object v8

    .line 529
    move-object v11, v8

    .line 530
    check-cast v11, Ljava/lang/String;

    .line 532
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 535
    move-result v8

    .line 536
    if-eqz v8, :cond_12

    .line 538
    const-string v8, "additional P(Wa) : targetKey="

    .line 540
    invoke-static {v8, v11, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 545
    goto :goto_9

    .line 546
    :cond_13
    const/4 v8, 0x1

    .line 547
    :goto_a
    if-eqz v8, :cond_14

    .line 549
    const-string v5, "additional P(Wa) : target all "

    .line 551
    invoke-static {v12, v5, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 554
    move-object v10, v11

    .line 555
    move-object/from16 v17, v9

    .line 557
    move v9, v8

    .line 558
    move-object/from16 v8, v17

    .line 560
    goto :goto_b

    .line 561
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 563
    move v9, v8

    .line 564
    move-object v10, v11

    .line 565
    move v11, v12

    .line 566
    goto :goto_8

    .line 567
    :cond_15
    const/4 v8, 0x0

    .line 568
    :goto_b
    const-string v5, "additional P(Wa): apply MoreRule"

    .line 570
    if-eqz v8, :cond_1b

    .line 572
    if-eqz v9, :cond_1b

    .line 574
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    move-result-object v7

    .line 578
    check-cast v7, Lcom/android/server/asks/PEMINFO;

    .line 580
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 583
    move-result v8

    .line 584
    if-eqz v8, :cond_16

    .line 586
    const-string v8, "all target key: "

    .line 588
    invoke-static {v8, v10, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_16
    if-eqz v7, :cond_1b

    .line 593
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 595
    if-gt v8, v2, :cond_1b

    .line 597
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 599
    if-gt v2, v8, :cond_1b

    .line 601
    invoke-virtual {v0, v7, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 604
    iget v8, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 606
    if-eqz v8, :cond_17

    .line 608
    if-eq v8, v6, :cond_18

    .line 610
    goto/16 :goto_c

    .line 612
    :cond_17
    iget-object v8, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 614
    if-eqz v8, :cond_18

    .line 616
    iget v8, v8, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 618
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 620
    new-instance v8, Ljava/lang/StringBuilder;

    .line 622
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    iget v9, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 627
    invoke-static {v8, v9, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 630
    :cond_18
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 632
    if-ne v8, v15, :cond_19

    .line 634
    if-nez p3, :cond_19

    .line 636
    const-string v0, "additional P(Wa) : Target Group(local)"

    .line 638
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 643
    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 645
    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 647
    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 649
    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 651
    const/4 v1, 0x0

    .line 652
    const/16 v8, 0x1f9

    .line 654
    move-object/from16 v0, p4

    .line 656
    move v3, v4

    .line 657
    move v4, v8

    .line 658
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 661
    return-void

    .line 662
    :cond_19
    if-ne v8, v14, :cond_1a

    .line 664
    if-eqz p3, :cond_1a

    .line 666
    const-string v0, "additional P(Wa) : Target Group(url)"

    .line 668
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 673
    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 675
    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 677
    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 679
    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 681
    const/4 v1, 0x0

    .line 682
    const/16 v8, 0x1f9

    .line 684
    move-object/from16 v0, p4

    .line 686
    move v3, v4

    .line 687
    move v4, v8

    .line 688
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 691
    return-void

    .line 692
    :cond_1a
    if-ne v8, v13, :cond_1b

    .line 694
    const-string v0, "additional P(Wa) :  Target Group"

    .line 696
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 701
    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 703
    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 705
    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 707
    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 709
    const/4 v1, 0x0

    .line 710
    const/16 v8, 0x1f9

    .line 712
    move-object/from16 v0, p4

    .line 714
    move v3, v4

    .line 715
    move v4, v8

    .line 716
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 719
    return-void

    .line 720
    :cond_1b
    :goto_c
    const/4 v7, 0x0

    .line 721
    :goto_d
    array-length v8, v1

    .line 722
    if-ge v7, v8, :cond_21

    .line 724
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 726
    aget-object v9, v1, v7

    .line 728
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 731
    move-result v8

    .line 732
    if-eqz v8, :cond_20

    .line 734
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 736
    aget-object v9, v1, v7

    .line 738
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    move-result-object v8

    .line 742
    check-cast v8, Lcom/android/server/asks/PEMINFO;

    .line 744
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 746
    if-gt v9, v2, :cond_20

    .line 748
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 750
    if-gt v2, v9, :cond_20

    .line 752
    invoke-virtual {v0, v8, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 755
    iget v9, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 757
    if-eqz v9, :cond_1c

    .line 759
    if-eq v9, v6, :cond_1d

    .line 761
    goto/16 :goto_e

    .line 763
    :cond_1c
    iget-object v9, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 765
    if-eqz v9, :cond_1d

    .line 767
    iget v9, v9, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 769
    iput v9, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 771
    new-instance v9, Ljava/lang/StringBuilder;

    .line 773
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    iget v10, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 778
    invoke-static {v9, v10, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 781
    :cond_1d
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 783
    if-ne v9, v15, :cond_1e

    .line 785
    if-nez p3, :cond_1e

    .line 787
    const-string v0, "additional P(Wa) : Target(local)"

    .line 789
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 794
    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 796
    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 798
    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 800
    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 802
    const/4 v1, 0x0

    .line 803
    const/16 v8, 0x1f9

    .line 805
    move-object/from16 v0, p4

    .line 807
    move v3, v4

    .line 808
    move v4, v8

    .line 809
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 812
    return-void

    .line 813
    :cond_1e
    if-ne v9, v14, :cond_1f

    .line 815
    if-eqz p3, :cond_1f

    .line 817
    const-string v0, "additional P(Wa) : Target(url)"

    .line 819
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 824
    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 826
    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 828
    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 830
    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 832
    const/4 v1, 0x0

    .line 833
    const/16 v8, 0x1f9

    .line 835
    move-object/from16 v0, p4

    .line 837
    move v3, v4

    .line 838
    move v4, v8

    .line 839
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 842
    return-void

    .line 843
    :cond_1f
    if-ne v9, v13, :cond_20

    .line 845
    const-string v0, "additional P(Wa) : Target"

    .line 847
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 852
    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 854
    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 856
    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 858
    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 860
    const/4 v1, 0x0

    .line 861
    const/16 v8, 0x1f9

    .line 863
    move-object/from16 v0, p4

    .line 865
    move v3, v4

    .line 866
    move v4, v8

    .line 867
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 870
    return-void

    .line 871
    :cond_20
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 873
    goto/16 :goto_d

    .line 875
    :cond_21
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 877
    if-eqz v1, :cond_22

    .line 879
    const-string v1, "additional P : Default"

    .line 881
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 886
    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 888
    iget v4, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 890
    iget v5, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 892
    iget-object v6, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 894
    iget-object v7, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 896
    const/4 v8, 0x0

    .line 897
    const/4 v1, 0x0

    .line 898
    move-object/from16 v0, p4

    .line 900
    move v3, v4

    .line 901
    move v4, v5

    .line 902
    move-object v5, v6

    .line 903
    move-object v6, v7

    .line 904
    move-object v7, v8

    .line 905
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 908
    return-void

    .line 909
    :cond_22
    const/4 v4, 0x0

    .line 910
    const-string v5, ""

    .line 912
    const/4 v1, 0x4

    .line 913
    const/4 v2, 0x0

    .line 914
    const/4 v6, 0x0

    .line 915
    const-string v7, ""

    .line 917
    const/4 v8, 0x0

    .line 918
    move-object/from16 v0, p4

    .line 920
    move v3, v6

    .line 921
    move-object v6, v7

    .line 922
    move-object v7, v8

    .line 923
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 926
    return-void
.end method

.method public final checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "PackageInformationStore"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, " checkRegexTarget() :"

    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ", isDomain : "

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_9

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz p3, :cond_1

    .line 40
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 42
    if-eqz p3, :cond_2

    .line 44
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Ljava/util/ArrayList;

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 53
    if-eqz p3, :cond_2

    .line 55
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Ljava/util/ArrayList;

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object p3, v2

    .line 63
    :goto_0
    if-eqz p3, :cond_9

    .line 65
    move v3, v0

    .line 66
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v4

    .line 70
    if-ge v3, v4, :cond_8

    .line 72
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/String;

    .line 78
    const/16 v5, 0x20

    .line 80
    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_7

    .line 94
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_3

    .line 100
    const-string p3, " hit :"

    .line 102
    const-string v3, " by "

    .line 104
    invoke-static {p3, p1, v3, v4, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 109
    const/4 p3, 0x1

    .line 110
    const-string v3, "ALL"

    .line 112
    if-eqz p1, :cond_6

    .line 114
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 120
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 122
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Ljava/util/HashMap;

    .line 128
    if-eqz p0, :cond_5

    .line 130
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 140
    move-object v2, p0

    .line 141
    check-cast v2, Lcom/android/server/asks/PKGINFO;

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_5

    .line 150
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 154
    move-object v2, p0

    .line 155
    check-cast v2, Lcom/android/server/asks/PKGINFO;

    .line 157
    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    .line 159
    const-string/jumbo p0, "checkPolicyWithDetail() : policy Target"

    .line 162
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget v5, v2, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 167
    iget v6, v2, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 169
    iget v7, v2, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 171
    iget-object v8, v2, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 173
    iget-object v9, v2, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 175
    const/4 v10, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    move-object v3, p2

    .line 178
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 181
    :goto_3
    move v0, p3

    .line 182
    goto :goto_4

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 185
    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_8

    .line 193
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 195
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Ljava/util/HashMap;

    .line 201
    if-eqz p0, :cond_8

    .line 203
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_8

    .line 209
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 215
    if-eqz p0, :cond_8

    .line 217
    const-string/jumbo p1, "checkPolicyWithDetail() : ALL Target"

    .line 220
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 225
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 227
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 229
    iget-object v7, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 231
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 233
    const/4 v9, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    move-object v2, p2

    .line 236
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 239
    goto :goto_3

    .line 240
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 242
    goto/16 :goto_1

    .line 244
    :cond_8
    :goto_4
    if-nez v0, :cond_9

    .line 246
    const-string p0, "Regex Policy does not match."

    .line 248
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_9
    return v0
.end method
