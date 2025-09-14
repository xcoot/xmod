.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x0

    .line 20
    invoke-virtual {v2, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget-object p0, v2, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v3, "active"

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string/jumbo v3, "restored"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    .line 64
    .line 65
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method public static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "state"

    .line 4
    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 9
    .line 10
    .line 11
    :goto_0
    const-string/jumbo v4, "package-state"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_11

    .line 19
    .line 20
    const-string/jumbo v4, "packageName"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-string v4, "id"

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const-string v8, "hasAutoVerifyDomains"

    .line 39
    .line 40
    invoke-interface {v5, v7, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string/jumbo v5, "signature"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v5}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    :cond_0
    move v13, v3

    .line 64
    move v3, v2

    .line 65
    goto/16 :goto_e

    .line 66
    .line 67
    :cond_1
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    new-instance v9, Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v10, Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v12, Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_f

    .line 94
    .line 95
    iget-object v5, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 98
    .line 99
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string v13, "domain"

    .line 107
    .line 108
    const-string/jumbo v14, "name"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    sparse-switch v15, :sswitch_data_0

    .line 116
    .line 117
    .line 118
    :goto_2
    move v5, v2

    .line 119
    goto :goto_3

    .line 120
    :sswitch_0
    const-string/jumbo v15, "uri-relative-filter-groups"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    const/4 v5, 0x2

    .line 131
    goto :goto_3

    .line 132
    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    const/4 v5, 0x1

    .line 140
    goto :goto_3

    .line 141
    :sswitch_2
    const-string/jumbo v15, "user-states"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_4

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move v5, v3

    .line 152
    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 153
    .line 154
    .line 155
    move v13, v3

    .line 156
    move-object/from16 v18, v4

    .line 157
    .line 158
    move/from16 v17, v8

    .line 159
    .line 160
    move-object/from16 v16, v11

    .line 161
    .line 162
    :goto_4
    move v3, v2

    .line 163
    goto/16 :goto_d

    .line 164
    .line 165
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 166
    .line 167
    .line 168
    :goto_5
    invoke-virtual {v0, v13}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_8

    .line 173
    .line 174
    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 179
    .line 180
    .line 181
    new-instance v15, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    :goto_6
    const-string/jumbo v7, "uri-relative-filter-group"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eqz v7, :cond_7

    .line 194
    .line 195
    new-instance v7, Landroid/content/UriRelativeFilterGroup;

    .line 196
    .line 197
    const-string v3, "action"

    .line 198
    .line 199
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-direct {v7, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 207
    .line 208
    .line 209
    :goto_7
    const-string/jumbo v3, "uri-relative-filter"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_6

    .line 217
    .line 218
    const-string v3, "filter"

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-eqz v3, :cond_5

    .line 225
    .line 226
    new-instance v2, Landroid/content/UriRelativeFilter;

    .line 227
    .line 228
    move-object/from16 v16, v11

    .line 229
    .line 230
    const-string/jumbo v11, "uri-part"

    .line 231
    .line 232
    .line 233
    move/from16 v17, v8

    .line 234
    .line 235
    const/4 v8, -0x1

    .line 236
    invoke-virtual {v0, v8, v11}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    move-object/from16 v18, v4

    .line 241
    .line 242
    const-string/jumbo v4, "pattern-type"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-direct {v2, v11, v4, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v2}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_5
    move-object/from16 v18, v4

    .line 257
    .line 258
    move/from16 v17, v8

    .line 259
    .line 260
    move-object/from16 v16, v11

    .line 261
    .line 262
    :goto_8
    move-object/from16 v11, v16

    .line 263
    .line 264
    move/from16 v8, v17

    .line 265
    .line 266
    move-object/from16 v4, v18

    .line 267
    .line 268
    const/4 v2, -0x1

    .line 269
    goto :goto_7

    .line 270
    :cond_6
    move-object/from16 v18, v4

    .line 271
    .line 272
    move/from16 v17, v8

    .line 273
    .line 274
    move-object/from16 v16, v11

    .line 275
    .line 276
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    const/4 v2, -0x1

    .line 280
    const/4 v3, 0x0

    .line 281
    goto :goto_6

    .line 282
    :cond_7
    move-object/from16 v18, v4

    .line 283
    .line 284
    move/from16 v17, v8

    .line 285
    .line 286
    move-object/from16 v16, v11

    .line 287
    .line 288
    invoke-virtual {v12, v5, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    const/4 v2, -0x1

    .line 292
    const/4 v3, 0x0

    .line 293
    const/4 v7, 0x0

    .line 294
    goto :goto_5

    .line 295
    :cond_8
    move-object/from16 v18, v4

    .line 296
    .line 297
    move/from16 v17, v8

    .line 298
    .line 299
    move-object/from16 v16, v11

    .line 300
    .line 301
    move v13, v3

    .line 302
    goto/16 :goto_4

    .line 303
    .line 304
    :pswitch_1
    move-object/from16 v18, v4

    .line 305
    .line 306
    move/from16 v17, v8

    .line 307
    .line 308
    move-object/from16 v16, v11

    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 311
    .line 312
    .line 313
    :goto_9
    invoke-virtual {v0, v13}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_9

    .line 318
    .line 319
    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const/4 v3, 0x0

    .line 324
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v9, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_9
    const/4 v3, -0x1

    .line 337
    const/4 v7, 0x0

    .line 338
    const/4 v13, 0x0

    .line 339
    goto :goto_d

    .line 340
    :pswitch_2
    move-object/from16 v18, v4

    .line 341
    .line 342
    move/from16 v17, v8

    .line 343
    .line 344
    move-object/from16 v16, v11

    .line 345
    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 347
    .line 348
    .line 349
    :cond_a
    :goto_a
    const-string/jumbo v2, "user-state"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_9

    .line 357
    .line 358
    const-string/jumbo v2, "userId"

    .line 359
    .line 360
    .line 361
    const/4 v3, -0x1

    .line 362
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-ne v2, v3, :cond_b

    .line 367
    .line 368
    const/4 v7, 0x0

    .line 369
    const/4 v8, 0x0

    .line 370
    const/4 v13, 0x0

    .line 371
    goto :goto_c

    .line 372
    :cond_b
    iget-object v4, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v4, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 375
    .line 376
    const-string v5, "allowLinkHandling"

    .line 377
    .line 378
    const/4 v7, 0x0

    .line 379
    const/4 v13, 0x0

    .line 380
    invoke-interface {v4, v7, v5, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    new-instance v5, Landroid/util/ArraySet;

    .line 385
    .line 386
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 390
    .line 391
    .line 392
    :cond_c
    const-string v8, "enabled-hosts"

    .line 393
    .line 394
    invoke-virtual {v0, v8}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-eqz v8, :cond_e

    .line 399
    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 401
    .line 402
    .line 403
    :cond_d
    :goto_b
    const-string v8, "host"

    .line 404
    .line 405
    invoke-virtual {v0, v8}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    if-eqz v8, :cond_c

    .line 410
    .line 411
    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v11

    .line 419
    if-nez v11, :cond_d

    .line 420
    .line 421
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_e
    new-instance v8, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 426
    .line 427
    invoke-direct {v8, v2, v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 428
    .line 429
    .line 430
    :goto_c
    if-eqz v8, :cond_a

    .line 431
    .line 432
    iget v2, v8, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 433
    .line 434
    invoke-virtual {v10, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    goto :goto_a

    .line 438
    :goto_d
    move v2, v3

    .line 439
    move v3, v13

    .line 440
    move-object/from16 v11, v16

    .line 441
    .line 442
    move/from16 v8, v17

    .line 443
    .line 444
    move-object/from16 v4, v18

    .line 445
    .line 446
    goto/16 :goto_1

    .line 447
    .line 448
    :cond_f
    move v13, v3

    .line 449
    move-object/from16 v18, v4

    .line 450
    .line 451
    move/from16 v17, v8

    .line 452
    .line 453
    move-object/from16 v16, v11

    .line 454
    .line 455
    move v3, v2

    .line 456
    new-instance v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 457
    .line 458
    move-object v5, v2

    .line 459
    move-object/from16 v7, v18

    .line 460
    .line 461
    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 462
    .line 463
    .line 464
    move-object v7, v2

    .line 465
    :goto_e
    if-eqz v7, :cond_10

    .line 466
    .line 467
    iget-object v2, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 468
    .line 469
    move-object/from16 v4, p1

    .line 470
    .line 471
    invoke-virtual {v4, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    goto :goto_f

    .line 475
    :cond_10
    move-object/from16 v4, p1

    .line 476
    .line 477
    :goto_f
    move v2, v3

    .line 478
    move v3, v13

    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :cond_11
    return-void

    .line 482
    nop

    .line 483
    :sswitch_data_0
    .sparse-switch
        -0x5df07dbc -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x614c8a09 -> :sswitch_0
    .end sparse-switch

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    move-object v3, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    :goto_1
    if-nez v3, :cond_2

    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    .line 40
    .line 41
    :cond_2
    const-string/jumbo v4, "package-state"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v4, "packageName"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v4, "id"

    .line 60
    .line 61
    invoke-virtual {p0, v4, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Lcom/android/modules/utils/TypedXmlSerializer;

    .line 71
    .line 72
    const-string v5, "hasAutoVerifyDomains"

    .line 73
    .line 74
    invoke-interface {v4, v2, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    .line 76
    .line 77
    :cond_3
    const-string/jumbo v1, "signature"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const-string/jumbo v3, "user-states"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    .line 102
    .line 103
    const/4 v3, -0x1

    .line 104
    if-ne p2, v3, :cond_5

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    :goto_2
    if-ge v3, v2, :cond_6

    .line 108
    .line 109
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 114
    .line 115
    invoke-static {p0, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 135
    .line 136
    .line 137
    :goto_3
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUriRelativeFilterGroupMap:Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :catchall_1
    move-exception p1

    .line 148
    goto :goto_6

    .line 149
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :catchall_2
    move-exception p2

    .line 154
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_5
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :goto_6
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 159
    .line 160
    .line 161
    goto :goto_7

    .line 162
    :catchall_3
    move-exception p0

    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_7
    throw p1

    .line 167
    :cond_7
    return-void
.end method

.method public static writeStateMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "state"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    const-string v3, "domain"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "name"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {p0, v3, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    throw p1
.end method

.method public static writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "domain-verifications"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, v2, :cond_0

    .line 25
    .line 26
    iget-object v5, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_5

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_1
    if-ge v3, p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string p1, "active"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    invoke-static {v0, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo p1, "restored"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    :try_start_4
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0, p1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    .line 83
    .line 84
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    .line 86
    .line 87
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    :goto_2
    iget-object p1, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    goto :goto_7

    .line 112
    :catchall_2
    move-exception p1

    .line 113
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_3
    move-exception p2

    .line 118
    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :goto_3
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 122
    :catchall_4
    move-exception p1

    .line 123
    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :catchall_5
    move-exception p2

    .line 128
    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 132
    :goto_5
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catchall_6
    move-exception p2

    .line 137
    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_6
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 141
    :goto_7
    :try_start_d
    iget-object p2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 142
    .line 143
    if-eqz p2, :cond_3

    .line 144
    .line 145
    :goto_8
    iget-object p2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_3

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 154
    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 158
    .line 159
    .line 160
    goto :goto_9

    .line 161
    :catchall_7
    move-exception p0

    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :goto_9
    throw p1
.end method

.method public static writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/content/UriRelativeFilterGroup;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "uri-relative-filter-group"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "action"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/UriRelativeFilter;

    .line 35
    .line 36
    const-string/jumbo v1, "uri-relative-filter"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "uri-part"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getUriPart()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "pattern-type"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getPatternType()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "filter"

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getFilter()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    throw p1
.end method

.method public static writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "uri-relative-filter-groups"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const-string v4, "domain"

    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "name"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    .line 51
    .line 52
    move v2, v0

    .line 53
    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v2, v4, :cond_2

    .line 58
    .line 59
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/content/UriRelativeFilterGroup;

    .line 64
    .line 65
    invoke-static {p0, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/content/UriRelativeFilterGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    .line 75
    .line 76
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 88
    :catchall_2
    move-exception p1

    .line 89
    goto :goto_5

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 95
    .line 96
    .line 97
    goto :goto_6

    .line 98
    :catchall_3
    move-exception p0

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_6
    throw p1
.end method

.method public static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "user-state"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 8
    .line 9
    const-string/jumbo v1, "userId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lcom/android/modules/utils/TypedXmlSerializer;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const-string v3, "allowLinkHandling"

    .line 25
    .line 26
    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string v0, "enabled-hosts"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    .line 49
    const-string v2, "host"

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "name"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    goto :goto_4

    .line 80
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :catchall_3
    move-exception p0

    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_5
    throw p1
.end method
