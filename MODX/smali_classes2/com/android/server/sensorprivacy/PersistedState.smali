.class public final Lcom/android/server/sensorprivacy/PersistedState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 13
    .line 14
    new-instance v3, Landroid/util/AtomicFile;

    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string/jumbo v5, "sensor_privacy_impl.xml"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    iput-object v3, v1, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 32
    .line 33
    const-string v4, "Unknown persistence version: "

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v5, "Caught an exception reading the state from storage: "

    .line 40
    .line 41
    const-string/jumbo v6, "sensor-privacy"

    .line 42
    .line 43
    .line 44
    const-string v7, "PersistedState"

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v8, Landroid/util/AtomicFile;

    .line 49
    .line 50
    new-instance v0, Ljava/io/File;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string/jumbo v10, "sensor_privacy.xml"

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v8, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Landroid/util/AtomicFile;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 75
    :try_start_1
    invoke-static {v9}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    if-eqz v9, :cond_0

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    move-object v3, v8

    .line 90
    goto :goto_2

    .line 91
    :catch_1
    :cond_0
    :goto_0
    move-object v3, v8

    .line 92
    goto :goto_3

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object v10, v0

    .line 95
    if-eqz v9, :cond_1

    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object v9, v0

    .line 103
    :try_start_4
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_2
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    :goto_1
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    .line 110
    :goto_2
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 114
    .line 115
    .line 116
    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v9, 0x2

    .line 122
    const/4 v10, 0x0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    :try_start_5
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 126
    .line 127
    .line 128
    move-result-object v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 129
    :try_start_6
    invoke-static {v11}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v6, "persistence-version"

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v10, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_3

    .line 144
    .line 145
    new-instance v4, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v6, Landroid/util/SparseArray;

    .line 151
    .line 152
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v6, v4, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-static {v0, v4}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :catchall_2
    move-exception v0

    .line 162
    move-object v4, v0

    .line 163
    goto :goto_7

    .line 164
    :cond_3
    const-string/jumbo v12, "version"

    .line 165
    .line 166
    .line 167
    if-ne v6, v2, :cond_4

    .line 168
    .line 169
    :try_start_7
    invoke-interface {v0, v10, v12, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    new-instance v6, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    .line 174
    .line 175
    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v6}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    .line 179
    .line 180
    .line 181
    :goto_4
    move-object v4, v6

    .line 182
    goto :goto_5

    .line 183
    :cond_4
    if-ne v6, v9, :cond_5

    .line 184
    .line 185
    invoke-interface {v0, v10, v12, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    new-instance v6, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 190
    .line 191
    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v6}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v4, ". Deleting."

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v4, Ljava/lang/RuntimeException;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 224
    .line 225
    .line 226
    move-object v4, v10

    .line 227
    :goto_5
    if-eqz v11, :cond_6

    .line 228
    .line 229
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catch_4
    move-exception v0

    .line 234
    goto :goto_9

    .line 235
    :cond_6
    :goto_6
    move-object v10, v4

    .line 236
    goto :goto_a

    .line 237
    :goto_7
    if-eqz v11, :cond_7

    .line 238
    .line 239
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :catchall_3
    move-exception v0

    .line 244
    move-object v6, v0

    .line 245
    :try_start_a
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    :goto_8
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 249
    :goto_9
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 253
    .line 254
    .line 255
    :cond_8
    :goto_a
    if-nez v10, :cond_9

    .line 256
    .line 257
    new-instance v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 258
    .line 259
    invoke-direct {v10, v9}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    .line 260
    .line 261
    .line 262
    :cond_9
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    .line 263
    .line 264
    if-eqz v0, :cond_c

    .line 265
    .line 266
    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    .line 267
    .line 268
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    .line 269
    .line 270
    invoke-direct {v3, v2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    .line 271
    .line 272
    .line 273
    new-array v4, v2, [I

    .line 274
    .line 275
    aput v8, v4, v8

    .line 276
    .line 277
    :try_start_b
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 286
    .line 287
    .line 288
    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 289
    goto :goto_b

    .line 290
    :catch_5
    move-exception v0

    .line 291
    const-string v5, "Unable to get users."

    .line 292
    .line 293
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .line 295
    .line 296
    :goto_b
    move v0, v8

    .line 297
    :goto_c
    array-length v5, v4

    .line 298
    if-ge v0, v5, :cond_b

    .line 299
    .line 300
    aget v5, v4, v0

    .line 301
    .line 302
    move v6, v8

    .line 303
    :goto_d
    iget-object v11, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 304
    .line 305
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 306
    .line 307
    .line 308
    move-result v11

    .line 309
    if-ge v6, v11, :cond_a

    .line 310
    .line 311
    iget-object v11, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 312
    .line 313
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    iget-object v12, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 318
    .line 319
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    check-cast v12, Lcom/android/server/sensorprivacy/SensorState;

    .line 324
    .line 325
    invoke-virtual {v12}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    iget-object v13, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 330
    .line 331
    new-instance v14, Landroid/util/SparseArray;

    .line 332
    .line 333
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v13, v5, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    check-cast v13, Landroid/util/SparseArray;

    .line 341
    .line 342
    iget-object v14, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 343
    .line 344
    invoke-virtual {v14, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    new-instance v14, Lcom/android/server/sensorprivacy/SensorState;

    .line 348
    .line 349
    invoke-direct {v14, v12}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    add-int/2addr v6, v2

    .line 356
    goto :goto_d

    .line 357
    :cond_a
    add-int/2addr v0, v2

    .line 358
    goto :goto_c

    .line 359
    :cond_b
    move-object v10, v3

    .line 360
    :cond_c
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    .line 361
    .line 362
    if-eqz v0, :cond_f

    .line 363
    .line 364
    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    .line 365
    .line 366
    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 367
    .line 368
    invoke-direct {v0, v9}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    .line 369
    .line 370
    .line 371
    iget-object v3, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 372
    .line 373
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    move v5, v8

    .line 378
    :goto_e
    if-ge v5, v4, :cond_e

    .line 379
    .line 380
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    check-cast v9, Landroid/util/SparseArray;

    .line 389
    .line 390
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    move v11, v8

    .line 395
    :goto_f
    if-ge v11, v10, :cond_d

    .line 396
    .line 397
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 398
    .line 399
    .line 400
    move-result v12

    .line 401
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    check-cast v13, Lcom/android/server/sensorprivacy/SensorState;

    .line 406
    .line 407
    iget v14, v13, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 408
    .line 409
    move-object/from16 v16, v9

    .line 410
    .line 411
    iget-wide v8, v13, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 412
    .line 413
    iget-object v13, v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    .line 414
    .line 415
    new-instance v15, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 416
    .line 417
    invoke-direct {v15, v2, v6, v12}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    .line 418
    .line 419
    .line 420
    new-instance v12, Lcom/android/server/sensorprivacy/SensorState;

    .line 421
    .line 422
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 423
    .line 424
    .line 425
    iput v14, v12, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 426
    .line 427
    sget-object v14, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 428
    .line 429
    move-object/from16 v17, v3

    .line 430
    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 432
    .line 433
    .line 434
    move-result-wide v2

    .line 435
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 436
    .line 437
    .line 438
    move-result-wide v2

    .line 439
    iput-wide v2, v12, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 440
    .line 441
    invoke-virtual {v13, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    const/4 v2, 0x1

    .line 445
    add-int/2addr v11, v2

    .line 446
    move-object/from16 v9, v16

    .line 447
    .line 448
    move-object/from16 v3, v17

    .line 449
    .line 450
    const/4 v8, 0x0

    .line 451
    goto :goto_f

    .line 452
    :cond_d
    move-object/from16 v17, v3

    .line 453
    .line 454
    add-int/2addr v5, v2

    .line 455
    const/4 v8, 0x0

    .line 456
    goto :goto_e

    .line 457
    :cond_e
    move-object v10, v0

    .line 458
    :cond_f
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 459
    .line 460
    if-eqz v0, :cond_10

    .line 461
    .line 462
    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 463
    .line 464
    iget-object v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    .line 465
    .line 466
    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 467
    .line 468
    goto :goto_10

    .line 469
    :cond_10
    const-string v0, "State not successfully upgraded."

    .line 470
    .line 471
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    new-instance v0, Landroid/util/ArrayMap;

    .line 475
    .line 476
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 477
    .line 478
    .line 479
    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 480
    .line 481
    :goto_10
    return-void
.end method

.method public static readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const-string v0, "individual-sensor-privacy"

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string/jumbo v0, "sensor"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "enabled"

    .line 31
    .line 32
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 37
    .line 38
    new-instance v3, Lcom/android/server/sensorprivacy/SensorState;

    .line 39
    .line 40
    invoke-direct {v3, v1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public static readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V
    .locals 7

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "user"

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const-string v1, "id"

    .line 26
    .line 27
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_1
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const-string v3, "individual-sensor-privacy"

    .line 42
    .line 43
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    const-string/jumbo v3, "sensor"

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const-string v4, "enabled"

    .line 61
    .line 62
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget-object v5, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 67
    .line 68
    new-instance v6, Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/util/SparseArray;

    .line 78
    .line 79
    iget-object v6, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v6, Lcom/android/server/sensorprivacy/SensorState;

    .line 85
    .line 86
    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method public static readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V
    .locals 8

    .line 1
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "sensor-state"

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const-string/jumbo v1, "toggle-type"

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string/jumbo v2, "user-id"

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string/jumbo v3, "sensor"

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const-string/jumbo v4, "state-type"

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const-string v5, "last-change"

    .line 54
    .line 55
    invoke-interface {p0, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    iget-object v0, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    .line 60
    .line 61
    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 62
    .line 63
    invoke-direct {v7, v1, v2, v3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/android/server/sensorprivacy/SensorState;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput v4, v1, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 72
    .line 73
    sget-object v2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    iput-wide v2, v1, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 84
    .line 85
    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method
