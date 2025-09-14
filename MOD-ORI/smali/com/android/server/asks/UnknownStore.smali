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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 38
    .line 39
    return-void
.end method

.method public static isDevDevice()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.boot.em.status"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "0x1"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
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

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    move/from16 v9, p10

    .line 20
    .line 21
    move-object/from16 v10, p11

    .line 22
    .line 23
    move-object/from16 v11, p12

    .line 24
    .line 25
    const-string v12, "ALL"

    .line 26
    .line 27
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    const/16 v14, 0x1f8

    .line 32
    .line 33
    const/16 v15, 0x1f4

    .line 34
    .line 35
    if-eqz v13, :cond_d

    .line 36
    .line 37
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    if-eqz v13, :cond_d

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 44
    .line 45
    if-nez v1, :cond_1d

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/asks/PKGINFO;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 53
    .line 54
    if-ne v2, v15, :cond_0

    .line 55
    .line 56
    const/16 v1, 0x1f9

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    if-ne v2, v14, :cond_2

    .line 60
    .line 61
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 71
    .line 72
    :cond_1
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    move v1, v2

    .line 91
    :goto_0
    if-ne v9, v15, :cond_3

    .line 92
    .line 93
    move v9, v15

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const/16 v2, 0x1f7

    .line 96
    .line 97
    if-ne v9, v2, :cond_4

    .line 98
    .line 99
    const/16 v9, 0x1f7

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/16 v2, 0x1f6

    .line 103
    .line 104
    if-ne v9, v2, :cond_5

    .line 105
    .line 106
    const/16 v9, 0x1f6

    .line 107
    .line 108
    :cond_5
    :goto_1
    const/16 v2, 0x1f5

    .line 109
    .line 110
    if-ne v6, v15, :cond_6

    .line 111
    .line 112
    move v6, v2

    .line 113
    :cond_6
    if-ne v7, v15, :cond_7

    .line 114
    .line 115
    move v7, v2

    .line 116
    :cond_7
    if-ne v3, v15, :cond_8

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    move v3, v2

    .line 120
    :cond_8
    if-nez v4, :cond_a

    .line 121
    .line 122
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 123
    .line 124
    if-nez v2, :cond_9

    .line 125
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 132
    .line 133
    :cond_9
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_a

    .line 140
    .line 141
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_a
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 152
    .line 153
    if-nez v2, :cond_b

    .line 154
    .line 155
    new-instance v2, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 161
    .line 162
    :cond_b
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_c

    .line 169
    .line 170
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 171
    .line 172
    move-object/from16 v5, p9

    .line 173
    .line 174
    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_c
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 178
    .line 179
    iput v4, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 180
    .line 181
    iput v1, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 182
    .line 183
    iput v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 184
    .line 185
    iput v6, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 186
    .line 187
    iput v7, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 188
    .line 189
    iput v9, v0, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    .line 190
    .line 191
    iput-object v10, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v11, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :cond_d
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 198
    .line 199
    if-nez v8, :cond_e

    .line 200
    .line 201
    new-instance v8, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 204
    .line 205
    .line 206
    iput-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 207
    .line 208
    :cond_e
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 209
    .line 210
    if-eqz v8, :cond_1d

    .line 211
    .line 212
    new-instance v8, Lcom/android/server/asks/PKGINFO;

    .line 213
    .line 214
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 218
    .line 219
    if-eqz v13, :cond_15

    .line 220
    .line 221
    if-ne v2, v15, :cond_f

    .line 222
    .line 223
    iget v2, v13, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_f
    if-ne v2, v14, :cond_11

    .line 227
    .line 228
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 229
    .line 230
    if-nez v13, :cond_10

    .line 231
    .line 232
    new-instance v13, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 238
    .line 239
    :cond_10
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    if-nez v13, :cond_11

    .line 246
    .line 247
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    :cond_11
    :goto_2
    if-ne v6, v15, :cond_12

    .line 253
    .line 254
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 255
    .line 256
    iget v6, v6, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 257
    .line 258
    :cond_12
    if-ne v7, v15, :cond_13

    .line 259
    .line 260
    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 261
    .line 262
    iget v7, v7, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 263
    .line 264
    :cond_13
    if-ne v3, v15, :cond_14

    .line 265
    .line 266
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 267
    .line 268
    iget v3, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 269
    .line 270
    :cond_14
    if-ne v9, v15, :cond_15

    .line 271
    .line 272
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 273
    .line 274
    iget v13, v13, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    .line 275
    .line 276
    :goto_3
    const/16 v14, 0x1f7

    .line 277
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

    .line 282
    .line 283
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 284
    .line 285
    if-nez v9, :cond_16

    .line 286
    .line 287
    new-instance v9, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .line 291
    .line 292
    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 293
    .line 294
    :cond_16
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    if-nez v9, :cond_19

    .line 301
    .line 302
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_17
    const/16 v9, 0x1f6

    .line 309
    .line 310
    if-ne v13, v9, :cond_19

    .line 311
    .line 312
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 313
    .line 314
    if-nez v9, :cond_18

    .line 315
    .line 316
    new-instance v9, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 322
    .line 323
    :cond_18
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-nez v9, :cond_19

    .line 330
    .line 331
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    :cond_19
    :goto_5
    if-nez v4, :cond_1b

    .line 337
    .line 338
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 339
    .line 340
    if-nez v9, :cond_1a

    .line 341
    .line 342
    new-instance v9, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 348
    .line 349
    :cond_1a
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-nez v9, :cond_1b

    .line 356
    .line 357
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_1b
    iput v4, v8, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 363
    .line 364
    iput v2, v8, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 365
    .line 366
    iput v3, v8, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 367
    .line 368
    iput v6, v8, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 369
    .line 370
    iput v7, v8, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 371
    .line 372
    iput v13, v8, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    .line 373
    .line 374
    iput-object v10, v8, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 375
    .line 376
    iput-object v11, v8, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 379
    .line 380
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_1d

    .line 385
    .line 386
    new-instance v2, Ljava/util/HashMap;

    .line 387
    .line 388
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_1c

    .line 396
    .line 397
    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_1c
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    :goto_6
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 405
    .line 406
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
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

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final checkDomain(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "PackageInformationStore"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, " checkDomain() : "

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const-string p1, "ALL"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const-string/jumbo p1, "checkPolicyWithDetail() : Target"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 59
    .line 60
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 61
    .line 62
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 63
    .line 64
    iget-object v7, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    move-object v2, p2

    .line 71
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string p0, " no"

    .line 76
    .line 77
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public final checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 9
    .line 10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 11
    .line 12
    const-string v5, "PackageInformationStore"

    .line 13
    .line 14
    if-eqz v0, :cond_22

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v6, "checkMoreRule() : ["

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v6, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 25
    .line 26
    iget-boolean v6, v6, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v6, "]["

    .line 32
    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v7, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 37
    .line 38
    iget-boolean v7, v7, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    .line 39
    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v6, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 47
    .line 48
    iget-boolean v6, v6, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v6, "]"

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 66
    .line 67
    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    const/4 v7, 0x2

    .line 71
    const-string v9, "0x1"

    .line 72
    .line 73
    const-string/jumbo v10, "ro.boot.em.status"

    .line 74
    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    if-eqz v0, :cond_10

    .line 78
    .line 79
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v12, "check_moreRule_Famous ="

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v12, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 94
    .line 95
    iget v12, v12, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 96
    .line 97
    invoke-static {v0, v12, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    iget-object v12, v1, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v13, v1, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    const-string/jumbo v0, "check_moreRule_Famous + :"

    .line 115
    .line 116
    .line 117
    const-string v14, "::"

    .line 118
    .line 119
    const-string v15, "PackageInformation_Famous"

    .line 120
    .line 121
    invoke-static {v0, v12, v14, v13, v15}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v15, "TARGET"

    .line 135
    .line 136
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const-string v15, "VALUE"

    .line 140
    .line 141
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v15, Ljava/io/File;

    .line 145
    .line 146
    const-string v8, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_RANK.xml"

    .line 147
    .line 148
    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    const-string v16, ""

    .line 156
    .line 157
    if-eqz v8, :cond_3

    .line 158
    .line 159
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_3

    .line 168
    .line 169
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_2

    .line 178
    .line 179
    goto/16 :goto_9

    .line 180
    .line 181
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v8, v6, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 186
    .line 187
    .line 188
    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_4

    .line 193
    .line 194
    goto/16 :goto_9

    .line 195
    .line 196
    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    .line 197
    .line 198
    invoke-direct {v8, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    invoke-interface {v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 209
    .line 210
    .line 211
    move-result v17

    .line 212
    move-object/from16 v19, v16

    .line 213
    .line 214
    move/from16 v11, v17

    .line 215
    .line 216
    const/16 v20, 0x0

    .line 217
    .line 218
    :goto_0
    if-eq v11, v6, :cond_b

    .line 219
    .line 220
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    if-eq v11, v7, :cond_7

    .line 225
    .line 226
    if-eq v11, v4, :cond_6

    .line 227
    .line 228
    :cond_5
    move-object/from16 v11, v19

    .line 229
    .line 230
    move-object/from16 v4, v20

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_6
    const/4 v11, 0x0

    .line 234
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v21

    .line 238
    move-object/from16 v11, v21

    .line 239
    .line 240
    check-cast v11, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_5

    .line 247
    .line 248
    move-object/from16 v11, v19

    .line 249
    .line 250
    move-object/from16 v6, v20

    .line 251
    .line 252
    invoke-virtual {v14, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
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

    .line 261
    .line 262
    move-object/from16 v4, v20

    .line 263
    .line 264
    const/4 v7, 0x0

    .line 265
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v18

    .line 269
    move-object/from16 v7, v18

    .line 270
    .line 271
    check-cast v7, Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-eqz v7, :cond_9

    .line 278
    .line 279
    const/4 v7, 0x0

    .line 280
    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    if-eqz v4, :cond_8

    .line 285
    .line 286
    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 287
    .line 288
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

    .line 293
    .line 294
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-eqz v6, :cond_a

    .line 303
    .line 304
    const/4 v6, 0x0

    .line 305
    invoke-interface {v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    if-eqz v7, :cond_a

    .line 310
    .line 311
    if-eqz v4, :cond_a

    .line 312
    .line 313
    invoke-interface {v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :cond_a
    :goto_2
    move-object v6, v4

    .line 321
    move-object v4, v11

    .line 322
    :goto_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    move-object/from16 v19, v4

    .line 327
    .line 328
    move-object/from16 v20, v6

    .line 329
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

    .line 335
    .line 336
    .line 337
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    .line 339
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

    .line 348
    .line 349
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

    .line 354
    .line 355
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

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    .line 363
    .line 364
    goto :goto_9

    .line 365
    :goto_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 366
    .line 367
    .line 368
    :goto_9
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_c

    .line 373
    .line 374
    :goto_a
    const/4 v1, 0x3

    .line 375
    goto :goto_b

    .line 376
    :cond_c
    const-string v0, "SIG"

    .line 377
    .line 378
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_d

    .line 383
    .line 384
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/util/ArrayList;

    .line 389
    .line 390
    if-eqz v0, :cond_d

    .line 391
    .line 392
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_d

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_d
    const-string v0, "SIGHASH"

    .line 400
    .line 401
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_e

    .line 406
    .line 407
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Ljava/util/ArrayList;

    .line 412
    .line 413
    if-eqz v0, :cond_e

    .line 414
    .line 415
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_e

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :goto_b
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 423
    .line 424
    return-void

    .line 425
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    const-string v4, "It is target of rank. "

    .line 428
    .line 429
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_f

    .line 437
    .line 438
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 439
    .line 440
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 441
    .line 442
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v16

    .line 446
    :cond_f
    move-object/from16 v4, v16

    .line 447
    .line 448
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 459
    .line 460
    const/4 v4, 0x1

    .line 461
    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    .line 462
    .line 463
    const/4 v4, 0x0

    .line 464
    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 465
    .line 466
    :cond_10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 467
    .line 468
    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    .line 469
    .line 470
    if-eqz v0, :cond_19

    .line 471
    .line 472
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_11

    .line 477
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string/jumbo v4, "check_moreRule_RandomPkg"

    .line 481
    .line 482
    .line 483
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 487
    .line 488
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 489
    .line 490
    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_11
    iget-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_12

    .line 504
    .line 505
    const-string/jumbo v4, "check_moreRule_RandomPkg + :"

    .line 506
    .line 507
    .line 508
    const-string v6, "PackageInformation_RandomPkg"

    .line 509
    .line 510
    invoke-static {v4, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    :cond_12
    if-eqz v0, :cond_16

    .line 514
    .line 515
    const-string v4, "\\."

    .line 516
    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 518
    .line 519
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

    .line 525
    .line 526
    aget-object v7, v0, v4

    .line 527
    .line 528
    invoke-static {v7}, Lcom/android/server/asks/MoreRuleRandomPkg;->isRandom(Ljava/lang/String;)Z

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    if-eqz v7, :cond_13

    .line 533
    .line 534
    add-int/lit8 v6, v6, 0x1

    .line 535
    .line 536
    :cond_13
    const/4 v7, 0x1

    .line 537
    if-ne v6, v7, :cond_14

    .line 538
    .line 539
    goto :goto_d

    .line 540
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_15
    const/4 v7, 0x1

    .line 544
    :goto_d
    if-eq v6, v7, :cond_17

    .line 545
    .line 546
    array-length v0, v0

    .line 547
    if-ne v6, v0, :cond_16

    .line 548
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

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_18

    .line 557
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    const-string v4, "It is target of randomPkg. "

    .line 561
    .line 562
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 566
    .line 567
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 568
    .line 569
    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_18
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 573
    .line 574
    const/4 v4, 0x1

    .line 575
    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    .line 576
    .line 577
    const/4 v4, 0x0

    .line 578
    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 579
    .line 580
    goto :goto_10

    .line 581
    :goto_f
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 582
    .line 583
    return-void

    .line 584
    :cond_19
    :goto_10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 585
    .line 586
    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    .line 587
    .line 588
    if-eqz v0, :cond_23

    .line 589
    .line 590
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_1a

    .line 595
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string/jumbo v4, "check_moreRule_MALFORMED:"

    .line 599
    .line 600
    .line 601
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 605
    .line 606
    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 607
    .line 608
    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 609
    .line 610
    .line 611
    :cond_1a
    iget-object v0, v1, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    .line 612
    .line 613
    const/4 v1, 0x2

    .line 614
    new-array v1, v1, [I

    .line 615
    .line 616
    const/4 v4, 0x0

    .line 617
    aput v4, v1, v4

    .line 618
    .line 619
    const/4 v6, 0x1

    .line 620
    aput v4, v1, v6

    .line 621
    .line 622
    new-instance v4, Ljava/io/File;

    .line 623
    .line 624
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 628
    .line 629
    .line 630
    move-result v6

    .line 631
    const-string v7, "PackageInformation_ZIP"

    .line 632
    .line 633
    if-eqz v6, :cond_20

    .line 634
    .line 635
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-nez v4, :cond_1b

    .line 640
    .line 641
    goto :goto_15

    .line 642
    :cond_1b
    :try_start_5
    invoke-static {v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->findEOCDOffset(Ljava/lang/String;)J

    .line 643
    .line 644
    .line 645
    move-result-wide v8

    .line 646
    invoke-static {v8, v9, v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->parseEocdRecord(JLjava/lang/String;)Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->diskNumber:S

    .line 651
    .line 652
    if-gtz v6, :cond_1c

    .line 653
    .line 654
    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->startDiskNumber:S

    .line 655
    .line 656
    if-lez v6, :cond_1d

    .line 657
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

    .line 664
    .line 665
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    const/4 v6, 0x1

    .line 669
    const/4 v8, 0x0

    .line 670
    aput v6, v1, v8

    .line 671
    .line 672
    :cond_1d
    iget v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirOffset:I

    .line 673
    .line 674
    iget v8, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirSize:I

    .line 675
    .line 676
    invoke-static {v6, v8, v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->countCentralDirectorySignatures(IILjava/lang/String;)I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesThisDisk:S

    .line 681
    .line 682
    if-ne v6, v0, :cond_1e

    .line 683
    .line 684
    iget-short v4, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesTotal:S

    .line 685
    .line 686
    if-eq v4, v0, :cond_1f

    .line 687
    .line 688
    :cond_1e
    const-string v0, "Number of Entries this DiskTampering"

    .line 689
    .line 690
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    const/4 v4, 0x1

    .line 694
    aput v4, v1, v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 695
    .line 696
    goto :goto_14

    .line 697
    :goto_12
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    goto :goto_14

    .line 705
    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
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

    .line 715
    .line 716
    const-string v4, " does not exist."

    .line 717
    .line 718
    invoke-static {v1, v0, v4, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    const/4 v8, 0x0

    .line 722
    :goto_16
    if-eqz v8, :cond_23

    .line 723
    .line 724
    invoke-static {v8}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    if-lez v0, :cond_21

    .line 733
    .line 734
    const-string v0, "Zip broken"

    .line 735
    .line 736
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 740
    .line 741
    const/4 v1, 0x1

    .line 742
    iput-boolean v1, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    .line 743
    .line 744
    const/4 v5, 0x0

    .line 745
    const-string v6, ""

    .line 746
    .line 747
    const/4 v2, 0x0

    .line 748
    const/4 v0, 0x0

    .line 749
    const/4 v4, 0x0

    .line 750
    const-string v7, ""

    .line 751
    .line 752
    const/4 v8, 0x0

    .line 753
    move-object/from16 v1, p2

    .line 754
    .line 755
    move v3, v0

    .line 756
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 757
    .line 758
    .line 759
    goto :goto_17

    .line 760
    :cond_21
    const-string v0, "Zip Success"

    .line 761
    .line 762
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .line 764
    .line 765
    const/4 v1, 0x3

    .line 766
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 767
    .line 768
    return-void

    .line 769
    :cond_22
    move v1, v4

    .line 770
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 771
    .line 772
    const-string v0, "The moreRule targetPolicy may be NULL."

    .line 773
    .line 774
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    :cond_23
    :goto_17
    return-void
.end method

.method public final checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget v6, v3, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 30
    .line 31
    iget v7, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 32
    .line 33
    iget v8, v3, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 34
    .line 35
    iget-object v9, v3, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v10, v3, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object/from16 v4, p2

    .line 42
    .line 43
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const-string v3, "PackageInformationStore"

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/HashMap;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v4, 0x1

    .line 74
    if-ne v2, v4, :cond_1

    .line 75
    .line 76
    const-string v2, "ALL"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/server/asks/PKGINFO;

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    const-string/jumbo v0, "checkPolicy() : Target"

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget v6, v1, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 99
    .line 100
    iget v7, v1, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 101
    .line 102
    iget v8, v1, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 103
    .line 104
    iget-object v9, v1, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v10, v1, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    move-object/from16 v4, p2

    .line 111
    .line 112
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    const/16 v16, 0x0

    .line 117
    .line 118
    const-string v17, ""

    .line 119
    .line 120
    const/4 v13, 0x1

    .line 121
    const/4 v14, 0x0

    .line 122
    const/4 v15, 0x0

    .line 123
    const-string v18, ""

    .line 124
    .line 125
    const/16 v19, 0x0

    .line 126
    .line 127
    move-object/from16 v12, p2

    .line 128
    .line 129
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 142
    .line 143
    if-eqz v1, :cond_3

    .line 144
    .line 145
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    const/4 v8, 0x0

    .line 150
    const-string v9, ""

    .line 151
    .line 152
    const/4 v5, 0x2

    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    const-string v10, ""

    .line 156
    .line 157
    const/4 v11, 0x0

    .line 158
    move-object/from16 v4, p2

    .line 159
    .line 160
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_3
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 165
    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    const-string/jumbo v1, "checkPolicy() : Default"

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 175
    .line 176
    iget v3, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 177
    .line 178
    iget v4, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 179
    .line 180
    iget v5, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 181
    .line 182
    iget-object v6, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v7, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v2, 0x0

    .line 188
    move-object/from16 v1, p2

    .line 189
    .line 190
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_4
    const/4 v13, 0x0

    .line 195
    const-string v14, ""

    .line 196
    .line 197
    const/4 v10, 0x4

    .line 198
    const/4 v11, 0x0

    .line 199
    const/4 v12, 0x0

    .line 200
    const-string v15, ""

    .line 201
    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    move-object/from16 v9, p2

    .line 205
    .line 206
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/HashMap;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string/jumbo v1, "checkPolicyWithDetail() : Target"

    .line 28
    .line 29
    .line 30
    const-string v2, "PackageInformationStore"

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 46
    .line 47
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 48
    .line 49
    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 50
    .line 51
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v9, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    move-object v3, p3

    .line 58
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 67
    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz p0, :cond_1

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const-string v8, ""

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    const-string v9, ""

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    move-object v3, p3

    .line 88
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    const-string p0, "ALL"

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 105
    .line 106
    if-eqz p0, :cond_2

    .line 107
    .line 108
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 112
    .line 113
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 114
    .line 115
    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 116
    .line 117
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v9, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 120
    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v4, 0x0

    .line 123
    move-object v3, p3

    .line 124
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    return-void
.end method

.method public final checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-string v4, "PackageInformationStore"

    .line 10
    .line 11
    const-string/jumbo v5, "start to check P policy."

    .line 12
    .line 13
    .line 14
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-eqz v5, :cond_21

    .line 20
    .line 21
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v5, :cond_21

    .line 24
    .line 25
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 26
    .line 27
    if-eqz v5, :cond_21

    .line 28
    .line 29
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 30
    .line 31
    if-eqz v5, :cond_21

    .line 32
    .line 33
    if-eqz v1, :cond_21

    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    :goto_0
    array-length v8, v1

    .line 42
    if-ge v7, v8, :cond_0

    .line 43
    .line 44
    aget-object v8, v1, v7

    .line 45
    .line 46
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
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

    .line 57
    .line 58
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    if-ge v9, v13, :cond_5

    .line 63
    .line 64
    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    check-cast v10, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    move v13, v12

    .line 81
    const/4 v12, 0x0

    .line 82
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    if-eqz v14, :cond_3

    .line 87
    .line 88
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    check-cast v14, Ljava/util/Map$Entry;

    .line 93
    .line 94
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-nez v15, :cond_1

    .line 103
    .line 104
    const/4 v11, 0x0

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    if-nez v12, :cond_2

    .line 107
    .line 108
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    check-cast v12, Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_2

    .line 119
    .line 120
    const-string v14, "additional P(B) :targetKey  - "

    .line 121
    .line 122
    invoke-static {v14, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    const/4 v11, 0x1

    .line 129
    :goto_3
    if-eqz v11, :cond_4

    .line 130
    .line 131
    const-string v9, "all target! "

    .line 132
    .line 133
    invoke-static {v13, v9, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 138
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

    .line 147
    .line 148
    const/16 v13, 0x1f5

    .line 149
    .line 150
    const/16 v14, 0x1f7

    .line 151
    .line 152
    const/16 v15, 0x1f6

    .line 153
    .line 154
    const/4 v6, 0x3

    .line 155
    if-eqz v10, :cond_a

    .line 156
    .line 157
    if-eqz v11, :cond_a

    .line 158
    .line 159
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    check-cast v10, Lcom/android/server/asks/PEMINFO;

    .line 164
    .line 165
    const-string/jumbo v11, "checkPolicywithPem(B) :targetKey  - "

    .line 166
    .line 167
    .line 168
    invoke-static {v11, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    if-eqz v10, :cond_a

    .line 172
    .line 173
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 174
    .line 175
    if-gt v11, v2, :cond_a

    .line 176
    .line 177
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 178
    .line 179
    if-gt v2, v11, :cond_a

    .line 180
    .line 181
    invoke-virtual {v0, v10, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 182
    .line 183
    .line 184
    iget v11, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 185
    .line 186
    if-eqz v11, :cond_6

    .line 187
    .line 188
    if-eq v11, v6, :cond_7

    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_6
    iget-object v11, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 193
    .line 194
    if-eqz v11, :cond_7

    .line 195
    .line 196
    iget v11, v11, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 197
    .line 198
    iput v11, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 199
    .line 200
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-eqz v11, :cond_7

    .line 205
    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v12, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 212
    .line 213
    invoke-static {v11, v12, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 217
    .line 218
    if-ne v11, v15, :cond_8

    .line 219
    .line 220
    if-nez p3, :cond_8

    .line 221
    .line 222
    const-string v0, "additional P(B) : Target Group(local)"

    .line 223
    .line 224
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 228
    .line 229
    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 230
    .line 231
    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 236
    .line 237
    const/4 v1, 0x0

    .line 238
    const/16 v8, 0x1f9

    .line 239
    .line 240
    move-object/from16 v0, p4

    .line 241
    .line 242
    move v3, v4

    .line 243
    move v4, v8

    .line 244
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_8
    if-ne v11, v14, :cond_9

    .line 249
    .line 250
    if-eqz p3, :cond_9

    .line 251
    .line 252
    const-string v0, "additional P(B) : Target Group(url)"

    .line 253
    .line 254
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 258
    .line 259
    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 260
    .line 261
    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 266
    .line 267
    const/4 v1, 0x0

    .line 268
    const/16 v8, 0x1f9

    .line 269
    .line 270
    move-object/from16 v0, p4

    .line 271
    .line 272
    move v3, v4

    .line 273
    move v4, v8

    .line 274
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_9
    if-ne v11, v13, :cond_a

    .line 279
    .line 280
    const-string v0, "additional P(B) :  Target Group"

    .line 281
    .line 282
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 286
    .line 287
    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 288
    .line 289
    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    const/16 v8, 0x1f9

    .line 297
    .line 298
    move-object/from16 v0, p4

    .line 299
    .line 300
    move v3, v4

    .line 301
    move v4, v8

    .line 302
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 303
    .line 304
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

    .line 309
    .line 310
    iget-object v11, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 311
    .line 312
    aget-object v12, v1, v10

    .line 313
    .line 314
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-eqz v11, :cond_f

    .line 319
    .line 320
    iget-object v11, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 321
    .line 322
    aget-object v12, v1, v10

    .line 323
    .line 324
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    check-cast v11, Lcom/android/server/asks/PEMINFO;

    .line 329
    .line 330
    if-eqz v11, :cond_f

    .line 331
    .line 332
    iget v12, v11, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 333
    .line 334
    if-gt v12, v2, :cond_f

    .line 335
    .line 336
    iget v12, v11, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 337
    .line 338
    if-gt v2, v12, :cond_f

    .line 339
    .line 340
    invoke-virtual {v0, v11, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 341
    .line 342
    .line 343
    iget v12, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 344
    .line 345
    if-eqz v12, :cond_b

    .line 346
    .line 347
    if-eq v12, v6, :cond_c

    .line 348
    .line 349
    goto/16 :goto_7

    .line 350
    .line 351
    :cond_b
    iget-object v12, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 352
    .line 353
    if-eqz v12, :cond_c

    .line 354
    .line 355
    iget v12, v12, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 356
    .line 357
    iput v12, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 358
    .line 359
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-eqz v12, :cond_c

    .line 364
    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget v7, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 371
    .line 372
    invoke-static {v12, v7, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_c
    iget v7, v11, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 376
    .line 377
    if-ne v7, v15, :cond_d

    .line 378
    .line 379
    if-nez p3, :cond_d

    .line 380
    .line 381
    const-string v0, "additional P(B) : Target(local)"

    .line 382
    .line 383
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 387
    .line 388
    iget v4, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 389
    .line 390
    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 393
    .line 394
    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 395
    .line 396
    const/4 v1, 0x0

    .line 397
    const/16 v8, 0x1f9

    .line 398
    .line 399
    move-object/from16 v0, p4

    .line 400
    .line 401
    move v3, v4

    .line 402
    move v4, v8

    .line 403
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :cond_d
    if-ne v7, v14, :cond_e

    .line 408
    .line 409
    if-eqz p3, :cond_e

    .line 410
    .line 411
    const-string v0, "additional P(B) : Target(url)"

    .line 412
    .line 413
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 417
    .line 418
    iget v4, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 419
    .line 420
    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 421
    .line 422
    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 423
    .line 424
    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 425
    .line 426
    const/4 v1, 0x0

    .line 427
    const/16 v8, 0x1f9

    .line 428
    .line 429
    move-object/from16 v0, p4

    .line 430
    .line 431
    move v3, v4

    .line 432
    move v4, v8

    .line 433
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 434
    .line 435
    .line 436
    return-void

    .line 437
    :cond_e
    if-ne v7, v13, :cond_f

    .line 438
    .line 439
    const-string v0, "additional P(B) : Target"

    .line 440
    .line 441
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 445
    .line 446
    iget v4, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 447
    .line 448
    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 449
    .line 450
    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 451
    .line 452
    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 453
    .line 454
    const/4 v1, 0x0

    .line 455
    const/16 v8, 0x1f9

    .line 456
    .line 457
    move-object/from16 v0, p4

    .line 458
    .line 459
    move v3, v4

    .line 460
    move v4, v8

    .line 461
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_f
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 466
    .line 467
    goto/16 :goto_6

    .line 468
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

    .line 474
    .line 475
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 476
    .line 477
    .line 478
    move-result v12

    .line 479
    if-ge v7, v12, :cond_15

    .line 480
    .line 481
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    check-cast v9, Ljava/util/HashMap;

    .line 488
    .line 489
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 490
    .line 491
    .line 492
    move-result-object v10

    .line 493
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    move v12, v11

    .line 498
    const/4 v11, 0x0

    .line 499
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v16

    .line 503
    if-eqz v16, :cond_13

    .line 504
    .line 505
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v16

    .line 509
    check-cast v16, Ljava/util/Map$Entry;

    .line 510
    .line 511
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    if-nez v8, :cond_11

    .line 520
    .line 521
    const/4 v8, 0x0

    .line 522
    goto :goto_a

    .line 523
    :cond_11
    if-nez v11, :cond_12

    .line 524
    .line 525
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    move-object v11, v8

    .line 530
    check-cast v11, Ljava/lang/String;

    .line 531
    .line 532
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 533
    .line 534
    .line 535
    move-result v8

    .line 536
    if-eqz v8, :cond_12

    .line 537
    .line 538
    const-string v8, "additional P(Wa) : targetKey="

    .line 539
    .line 540
    invoke-static {v8, v11, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 544
    .line 545
    goto :goto_9

    .line 546
    :cond_13
    const/4 v8, 0x1

    .line 547
    :goto_a
    if-eqz v8, :cond_14

    .line 548
    .line 549
    const-string v5, "additional P(Wa) : target all "

    .line 550
    .line 551
    invoke-static {v12, v5, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    move-object v10, v11

    .line 555
    move-object/from16 v17, v9

    .line 556
    .line 557
    move v9, v8

    .line 558
    move-object/from16 v8, v17

    .line 559
    .line 560
    goto :goto_b

    .line 561
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 562
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

    .line 569
    .line 570
    if-eqz v8, :cond_1b

    .line 571
    .line 572
    if-eqz v9, :cond_1b

    .line 573
    .line 574
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    check-cast v7, Lcom/android/server/asks/PEMINFO;

    .line 579
    .line 580
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 581
    .line 582
    .line 583
    move-result v8

    .line 584
    if-eqz v8, :cond_16

    .line 585
    .line 586
    const-string v8, "all target key: "

    .line 587
    .line 588
    invoke-static {v8, v10, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_16
    if-eqz v7, :cond_1b

    .line 592
    .line 593
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 594
    .line 595
    if-gt v8, v2, :cond_1b

    .line 596
    .line 597
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 598
    .line 599
    if-gt v2, v8, :cond_1b

    .line 600
    .line 601
    invoke-virtual {v0, v7, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 602
    .line 603
    .line 604
    iget v8, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 605
    .line 606
    if-eqz v8, :cond_17

    .line 607
    .line 608
    if-eq v8, v6, :cond_18

    .line 609
    .line 610
    goto/16 :goto_c

    .line 611
    .line 612
    :cond_17
    iget-object v8, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 613
    .line 614
    if-eqz v8, :cond_18

    .line 615
    .line 616
    iget v8, v8, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 617
    .line 618
    iput v8, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 619
    .line 620
    new-instance v8, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    iget v9, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 626
    .line 627
    invoke-static {v8, v9, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 628
    .line 629
    .line 630
    :cond_18
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 631
    .line 632
    if-ne v8, v15, :cond_19

    .line 633
    .line 634
    if-nez p3, :cond_19

    .line 635
    .line 636
    const-string v0, "additional P(Wa) : Target Group(local)"

    .line 637
    .line 638
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 642
    .line 643
    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 644
    .line 645
    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 646
    .line 647
    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 648
    .line 649
    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 650
    .line 651
    const/4 v1, 0x0

    .line 652
    const/16 v8, 0x1f9

    .line 653
    .line 654
    move-object/from16 v0, p4

    .line 655
    .line 656
    move v3, v4

    .line 657
    move v4, v8

    .line 658
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 659
    .line 660
    .line 661
    return-void

    .line 662
    :cond_19
    if-ne v8, v14, :cond_1a

    .line 663
    .line 664
    if-eqz p3, :cond_1a

    .line 665
    .line 666
    const-string v0, "additional P(Wa) : Target Group(url)"

    .line 667
    .line 668
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 672
    .line 673
    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 674
    .line 675
    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 676
    .line 677
    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 678
    .line 679
    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 680
    .line 681
    const/4 v1, 0x0

    .line 682
    const/16 v8, 0x1f9

    .line 683
    .line 684
    move-object/from16 v0, p4

    .line 685
    .line 686
    move v3, v4

    .line 687
    move v4, v8

    .line 688
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 689
    .line 690
    .line 691
    return-void

    .line 692
    :cond_1a
    if-ne v8, v13, :cond_1b

    .line 693
    .line 694
    const-string v0, "additional P(Wa) :  Target Group"

    .line 695
    .line 696
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 700
    .line 701
    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 702
    .line 703
    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 704
    .line 705
    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 706
    .line 707
    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 708
    .line 709
    const/4 v1, 0x0

    .line 710
    const/16 v8, 0x1f9

    .line 711
    .line 712
    move-object/from16 v0, p4

    .line 713
    .line 714
    move v3, v4

    .line 715
    move v4, v8

    .line 716
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 717
    .line 718
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

    .line 723
    .line 724
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 725
    .line 726
    aget-object v9, v1, v7

    .line 727
    .line 728
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    if-eqz v8, :cond_20

    .line 733
    .line 734
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 735
    .line 736
    aget-object v9, v1, v7

    .line 737
    .line 738
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v8

    .line 742
    check-cast v8, Lcom/android/server/asks/PEMINFO;

    .line 743
    .line 744
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 745
    .line 746
    if-gt v9, v2, :cond_20

    .line 747
    .line 748
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 749
    .line 750
    if-gt v2, v9, :cond_20

    .line 751
    .line 752
    invoke-virtual {v0, v8, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    .line 753
    .line 754
    .line 755
    iget v9, v3, Lcom/android/server/asks/RETVALUE;->status:I

    .line 756
    .line 757
    if-eqz v9, :cond_1c

    .line 758
    .line 759
    if-eq v9, v6, :cond_1d

    .line 760
    .line 761
    goto/16 :goto_e

    .line 762
    .line 763
    :cond_1c
    iget-object v9, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 764
    .line 765
    if-eqz v9, :cond_1d

    .line 766
    .line 767
    iget v9, v9, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    .line 768
    .line 769
    iput v9, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 770
    .line 771
    new-instance v9, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    iget v10, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 777
    .line 778
    invoke-static {v9, v10, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 779
    .line 780
    .line 781
    :cond_1d
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 782
    .line 783
    if-ne v9, v15, :cond_1e

    .line 784
    .line 785
    if-nez p3, :cond_1e

    .line 786
    .line 787
    const-string v0, "additional P(Wa) : Target(local)"

    .line 788
    .line 789
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .line 791
    .line 792
    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 793
    .line 794
    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 795
    .line 796
    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 797
    .line 798
    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 799
    .line 800
    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 801
    .line 802
    const/4 v1, 0x0

    .line 803
    const/16 v8, 0x1f9

    .line 804
    .line 805
    move-object/from16 v0, p4

    .line 806
    .line 807
    move v3, v4

    .line 808
    move v4, v8

    .line 809
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 810
    .line 811
    .line 812
    return-void

    .line 813
    :cond_1e
    if-ne v9, v14, :cond_1f

    .line 814
    .line 815
    if-eqz p3, :cond_1f

    .line 816
    .line 817
    const-string v0, "additional P(Wa) : Target(url)"

    .line 818
    .line 819
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 823
    .line 824
    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 825
    .line 826
    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 827
    .line 828
    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 829
    .line 830
    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 831
    .line 832
    const/4 v1, 0x0

    .line 833
    const/16 v8, 0x1f9

    .line 834
    .line 835
    move-object/from16 v0, p4

    .line 836
    .line 837
    move v3, v4

    .line 838
    move v4, v8

    .line 839
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 840
    .line 841
    .line 842
    return-void

    .line 843
    :cond_1f
    if-ne v9, v13, :cond_20

    .line 844
    .line 845
    const-string v0, "additional P(Wa) : Target"

    .line 846
    .line 847
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .line 849
    .line 850
    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 851
    .line 852
    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 853
    .line 854
    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    .line 855
    .line 856
    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    .line 857
    .line 858
    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 859
    .line 860
    const/4 v1, 0x0

    .line 861
    const/16 v8, 0x1f9

    .line 862
    .line 863
    move-object/from16 v0, p4

    .line 864
    .line 865
    move v3, v4

    .line 866
    move v4, v8

    .line 867
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 868
    .line 869
    .line 870
    return-void

    .line 871
    :cond_20
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 872
    .line 873
    goto/16 :goto_d

    .line 874
    .line 875
    :cond_21
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 876
    .line 877
    if-eqz v1, :cond_22

    .line 878
    .line 879
    const-string v1, "additional P : Default"

    .line 880
    .line 881
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .line 883
    .line 884
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    .line 885
    .line 886
    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 887
    .line 888
    iget v4, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 889
    .line 890
    iget v5, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 891
    .line 892
    iget-object v6, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 893
    .line 894
    iget-object v7, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 895
    .line 896
    const/4 v8, 0x0

    .line 897
    const/4 v1, 0x0

    .line 898
    move-object/from16 v0, p4

    .line 899
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

    .line 906
    .line 907
    .line 908
    return-void

    .line 909
    :cond_22
    const/4 v4, 0x0

    .line 910
    const-string v5, ""

    .line 911
    .line 912
    const/4 v1, 0x4

    .line 913
    const/4 v2, 0x0

    .line 914
    const/4 v6, 0x0

    .line 915
    const-string v7, ""

    .line 916
    .line 917
    const/4 v8, 0x0

    .line 918
    move-object/from16 v0, p4

    .line 919
    .line 920
    move v3, v6

    .line 921
    move-object v6, v7

    .line 922
    move-object v7, v8

    .line 923
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 924
    .line 925
    .line 926
    return-void
.end method

.method public final checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "PackageInformationStore"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, " checkRegexTarget() :"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", isDomain : "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_9

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Ljava/util/ArrayList;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Ljava/util/ArrayList;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object p3, v2

    .line 63
    :goto_0
    if-eqz p3, :cond_9

    .line 64
    .line 65
    move v3, v0

    .line 66
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ge v3, v4, :cond_8

    .line 71
    .line 72
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/String;

    .line 77
    .line 78
    const/16 v5, 0x20

    .line 79
    .line 80
    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_3

    .line 99
    .line 100
    const-string p3, " hit :"

    .line 101
    .line 102
    const-string v3, " by "

    .line 103
    .line 104
    invoke-static {p3, p1, v3, v4, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 108
    .line 109
    const/4 p3, 0x1

    .line 110
    const-string v3, "ALL"

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Ljava/util/HashMap;

    .line 127
    .line 128
    if-eqz p0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    move-object v2, p0

    .line 141
    check-cast v2, Lcom/android/server/asks/PKGINFO;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    move-object v2, p0

    .line 155
    check-cast v2, Lcom/android/server/asks/PKGINFO;

    .line 156
    .line 157
    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    .line 158
    .line 159
    const-string/jumbo p0, "checkPolicyWithDetail() : policy Target"

    .line 160
    .line 161
    .line 162
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget v5, v2, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 166
    .line 167
    iget v6, v2, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 168
    .line 169
    iget v7, v2, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 170
    .line 171
    iget-object v8, v2, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v9, v2, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 174
    .line 175
    const/4 v10, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    move-object v3, p2

    .line 178
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    move v0, p3

    .line 182
    goto :goto_4

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Ljava/util/HashMap;

    .line 200
    .line 201
    if-eqz p0, :cond_8

    .line 202
    .line 203
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_8

    .line 208
    .line 209
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Lcom/android/server/asks/PKGINFO;

    .line 214
    .line 215
    if-eqz p0, :cond_8

    .line 216
    .line 217
    const-string/jumbo p1, "checkPolicyWithDetail() : ALL Target"

    .line 218
    .line 219
    .line 220
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 224
    .line 225
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 226
    .line 227
    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 228
    .line 229
    iget-object v7, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    .line 232
    .line 233
    const/4 v9, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    move-object v2, p2

    .line 236
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_8
    :goto_4
    if-nez v0, :cond_9

    .line 245
    .line 246
    const-string p0, "Regex Policy does not match."

    .line 247
    .line 248
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_9
    return v0
.end method
