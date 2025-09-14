.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/permission/access/MutableSystemState;

    .line 8
    .line 9
    iget v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p2, v0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v3, "Unexpected event type "

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    if-ne v1, v4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 46
    .line 47
    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v5, 0x3

    .line 60
    const/4 v6, 0x1

    .line 61
    if-eq v1, v6, :cond_3

    .line 62
    .line 63
    if-eq v1, v4, :cond_3

    .line 64
    .line 65
    if-eq v1, v5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const-string v7, " when parsing permissions"

    .line 73
    .line 74
    const-string v8, "AppIdPermissionPersistence"

    .line 75
    .line 76
    if-eq v1, v6, :cond_e

    .line 77
    .line 78
    if-eq v1, v4, :cond_5

    .line 79
    .line 80
    if-ne v1, v5, :cond_4

    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 85
    .line 86
    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    const-string/jumbo v10, "permission"

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_8

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    const-string/jumbo v9, "name"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v7, v9}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {p0, v9}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const-string v10, "intern(...)"

    .line 128
    .line 129
    invoke-static {v10, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance v11, Landroid/content/pm/PermissionInfo;

    .line 133
    .line 134
    invoke-direct {v11}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v9, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 138
    .line 139
    const-string/jumbo v12, "packageName"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v7, v12}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-virtual {p0, v12}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    invoke-static {v10, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iput-object v12, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 158
    .line 159
    const-string/jumbo v10, "protectionLevel"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v7, v10}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    iput v10, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 167
    .line 168
    const-string/jumbo v10, "type"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v7, v10}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_7

    .line 176
    .line 177
    if-eq v10, v4, :cond_6

    .line 178
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v11, "Ignoring permission "

    .line 182
    .line 183
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v9, " with unknown type "

    .line 190
    .line 191
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    const-string v8, "icon"

    .line 206
    .line 207
    invoke-virtual {p0, v7, v8, v2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    iput v8, v11, Landroid/content/pm/PermissionInfo;->icon:I

    .line 212
    .line 213
    const-string v8, "label"

    .line 214
    .line 215
    invoke-virtual {p0, v7, v8}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    iput-object v7, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 220
    .line 221
    :cond_7
    new-instance v7, Lcom/android/server/permission/access/permission/Permission;

    .line 222
    .line 223
    invoke-direct {v7, v11, v2, v10, v2}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v9, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_8
    const-string v10, "Ignoring unknown tag "

    .line 231
    .line 232
    invoke-static {v10, v9, v7, v8}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-ne v7, v1, :cond_d

    .line 240
    .line 241
    :cond_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eq v7, v4, :cond_c

    .line 246
    .line 247
    if-ne v7, v5, :cond_b

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-le v7, v1, :cond_a

    .line 254
    .line 255
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eq v7, v6, :cond_9

    .line 260
    .line 261
    if-eq v7, v4, :cond_9

    .line 262
    .line 263
    if-eq v7, v5, :cond_9

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eq v1, v6, :cond_3

    .line 271
    .line 272
    if-eq v1, v4, :cond_3

    .line 273
    .line 274
    if-eq v1, v5, :cond_3

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 278
    .line 279
    invoke-static {v7, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p0

    .line 287
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eq v7, v6, :cond_9

    .line 292
    .line 293
    if-eq v7, v4, :cond_9

    .line 294
    .line 295
    if-eq v7, v5, :cond_9

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 299
    .line 300
    const-string p1, "Unexpected post-block depth "

    .line 301
    .line 302
    const-string p2, ", expected "

    .line 303
    .line 304
    invoke-static {v7, v1, p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p0

    .line 312
    :cond_e
    :goto_6
    iget-object p0, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    sub-int/2addr p0, v6

    .line 319
    :goto_7
    const/4 v1, -0x1

    .line 320
    if-ge v1, p0, :cond_10

    .line 321
    .line 322
    iget-object v1, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 323
    .line 324
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 329
    .line 330
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    .line 335
    .line 336
    check-cast v1, Ljava/lang/String;

    .line 337
    .line 338
    iget-object v1, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 339
    .line 340
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    iget-object v4, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 347
    .line 348
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-nez v4, :cond_f

    .line 353
    .line 354
    iget-object v3, v3, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 355
    .line 356
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-nez v3, :cond_f

    .line 361
    .line 362
    iget-object v2, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 363
    .line 364
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 365
    .line 366
    const-string v3, "Dropping permission "

    .line 367
    .line 368
    const-string v4, " from unknown package "

    .line 369
    .line 370
    invoke-static {v3, v2, v4, v1, v7}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    iget-object v1, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 378
    .line 379
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    iget v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 383
    .line 384
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    iput v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 389
    .line 390
    :cond_f
    add-int/lit8 p0, p0, -0x1

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_10
    return-void
.end method

.method public static serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    .line 4
    .line 5
    iget-object v1, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    iget-object v3, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v3, "permission"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 37
    .line 38
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v6, "name"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 47
    .line 48
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v6, "packageName"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 57
    .line 58
    iget v5, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 59
    .line 60
    const-string/jumbo v6, "protectionLevel"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v5, "type"

    .line 67
    .line 68
    .line 69
    iget v6, v4, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 70
    .line 71
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    if-ne v6, v5, :cond_1

    .line 76
    .line 77
    iget-object v4, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 78
    .line 79
    iget v5, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 80
    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    const-string v6, "icon"

    .line 84
    .line 85
    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_1

    .line 97
    .line 98
    const-string v5, "label"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v5, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    .line 111
    .line 112
    return-void
.end method
