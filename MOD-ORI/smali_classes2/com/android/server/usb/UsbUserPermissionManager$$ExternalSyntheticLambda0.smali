.class public final synthetic Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbUserPermissionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUserPermissionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbUserPermissionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbUserPermissionManager;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-array v3, v0, [Landroid/hardware/usb/DeviceFilter;

    .line 15
    .line 16
    new-array v4, v0, [[I

    .line 17
    .line 18
    new-array v5, v0, [[Z

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    move v7, v6

    .line 22
    :goto_0
    if-ge v7, v0, :cond_1

    .line 23
    .line 24
    new-instance v8, Landroid/hardware/usb/DeviceFilter;

    .line 25
    .line 26
    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    check-cast v9, Landroid/hardware/usb/DeviceFilter;

    .line 33
    .line 34
    invoke-direct {v8, v9}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    .line 35
    .line 36
    .line 37
    aput-object v8, v3, v7

    .line 38
    .line 39
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 46
    .line 47
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    new-array v10, v9, [I

    .line 52
    .line 53
    aput-object v10, v4, v7

    .line 54
    .line 55
    new-array v10, v9, [Z

    .line 56
    .line 57
    aput-object v10, v5, v7

    .line 58
    .line 59
    move v10, v6

    .line 60
    :goto_1
    if-ge v10, v9, :cond_0

    .line 61
    .line 62
    aget-object v11, v4, v7

    .line 63
    .line 64
    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    aput v12, v11, v10

    .line 69
    .line 70
    aget-object v11, v5, v7

    .line 71
    .line 72
    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    aput-boolean v12, v11, v10

    .line 77
    .line 78
    add-int/lit8 v10, v10, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_b

    .line 83
    .line 84
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    new-array v8, v7, [Landroid/hardware/usb/AccessoryFilter;

    .line 94
    .line 95
    new-array v9, v7, [[I

    .line 96
    .line 97
    new-array v10, v7, [[Z

    .line 98
    .line 99
    move v11, v6

    .line 100
    :goto_2
    if-ge v11, v7, :cond_3

    .line 101
    .line 102
    new-instance v12, Landroid/hardware/usb/AccessoryFilter;

    .line 103
    .line 104
    iget-object v13, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    check-cast v13, Landroid/hardware/usb/AccessoryFilter;

    .line 111
    .line 112
    invoke-direct {v12, v13}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    .line 113
    .line 114
    .line 115
    aput-object v12, v8, v11

    .line 116
    .line 117
    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 124
    .line 125
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    new-array v14, v13, [I

    .line 130
    .line 131
    aput-object v14, v9, v11

    .line 132
    .line 133
    new-array v14, v13, [Z

    .line 134
    .line 135
    aput-object v14, v10, v11

    .line 136
    .line 137
    move v14, v6

    .line 138
    :goto_3
    if-ge v14, v13, :cond_2

    .line 139
    .line 140
    aget-object v15, v9, v11

    .line 141
    .line 142
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 143
    .line 144
    .line 145
    move-result v16

    .line 146
    aput v16, v15, v14

    .line 147
    .line 148
    aget-object v15, v10, v11

    .line 149
    .line 150
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 151
    .line 152
    .line 153
    move-result v16

    .line 154
    aput-boolean v16, v15, v14

    .line 155
    .line 156
    add-int/lit8 v14, v14, 0x1

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    iput-boolean v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 163
    .line 164
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 166
    .line 167
    monitor-enter v10

    .line 168
    const/4 v2, 0x0

    .line 169
    :try_start_1
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 170
    .line 171
    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 172
    .line 173
    .line 174
    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :try_start_2
    invoke-static {v11}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-interface {v12, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    .line 183
    .line 184
    const-string/jumbo v13, "permissions"

    .line 185
    .line 186
    .line 187
    invoke-interface {v12, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    .line 189
    .line 190
    move v13, v6

    .line 191
    :goto_4
    if-ge v13, v0, :cond_5

    .line 192
    .line 193
    aget-object v14, v4, v13

    .line 194
    .line 195
    array-length v14, v14

    .line 196
    move v15, v6

    .line 197
    :goto_5
    if-ge v15, v14, :cond_4

    .line 198
    .line 199
    const-string/jumbo v6, "permission"

    .line 200
    .line 201
    .line 202
    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    .line 204
    .line 205
    const-string/jumbo v6, "uid"

    .line 206
    .line 207
    .line 208
    aget-object v16, v4, v13

    .line 209
    .line 210
    aget v16, v16, v15

    .line 211
    .line 212
    move/from16 v17, v0

    .line 213
    .line 214
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v12, v2, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    .line 220
    .line 221
    const-string v0, "granted"

    .line 222
    .line 223
    aget-object v6, v5, v13

    .line 224
    .line 225
    aget-boolean v6, v6, v15

    .line 226
    .line 227
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-interface {v12, v2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    .line 233
    .line 234
    aget-object v0, v3, v13

    .line 235
    .line 236
    invoke-virtual {v0, v12}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 237
    .line 238
    .line 239
    const-string/jumbo v0, "permission"

    .line 240
    .line 241
    .line 242
    invoke-interface {v12, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    .line 244
    .line 245
    add-int/lit8 v15, v15, 0x1

    .line 246
    .line 247
    move/from16 v0, v17

    .line 248
    .line 249
    const/4 v6, 0x0

    .line 250
    goto :goto_5

    .line 251
    :catchall_1
    move-exception v0

    .line 252
    goto :goto_a

    .line 253
    :catch_0
    move-exception v0

    .line 254
    move-object v2, v11

    .line 255
    goto :goto_8

    .line 256
    :cond_4
    move/from16 v17, v0

    .line 257
    .line 258
    add-int/lit8 v13, v13, 0x1

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    goto :goto_4

    .line 262
    :cond_5
    const/4 v0, 0x0

    .line 263
    :goto_6
    if-ge v0, v7, :cond_7

    .line 264
    .line 265
    aget-object v3, v9, v0

    .line 266
    .line 267
    array-length v3, v3

    .line 268
    const/4 v4, 0x0

    .line 269
    :goto_7
    if-ge v4, v3, :cond_6

    .line 270
    .line 271
    const-string/jumbo v6, "permission"

    .line 272
    .line 273
    .line 274
    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    .line 276
    .line 277
    const-string/jumbo v6, "uid"

    .line 278
    .line 279
    .line 280
    aget-object v13, v9, v0

    .line 281
    .line 282
    aget v13, v13, v4

    .line 283
    .line 284
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    invoke-interface {v12, v2, v6, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    .line 290
    .line 291
    const-string v6, "granted"

    .line 292
    .line 293
    aget-object v13, v5, v0

    .line 294
    .line 295
    aget-boolean v13, v13, v4

    .line 296
    .line 297
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    invoke-interface {v12, v2, v6, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    .line 303
    .line 304
    aget-object v6, v8, v0

    .line 305
    .line 306
    invoke-virtual {v6, v12}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 307
    .line 308
    .line 309
    const-string/jumbo v6, "permission"

    .line 310
    .line 311
    .line 312
    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    .line 314
    .line 315
    add-int/lit8 v4, v4, 0x1

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_7
    const-string/jumbo v0, "permissions"

    .line 322
    .line 323
    .line 324
    invoke-interface {v12, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    .line 326
    .line 327
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 328
    .line 329
    .line 330
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 331
    .line 332
    invoke-virtual {v0, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    .line 334
    .line 335
    goto :goto_9

    .line 336
    :catch_1
    move-exception v0

    .line 337
    :goto_8
    :try_start_3
    const-string v3, "UsbUserPermissionManager"

    .line 338
    .line 339
    const-string v4, "Failed to write permissions"

    .line 340
    .line 341
    invoke-static {v3, v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .line 343
    .line 344
    if-eqz v2, :cond_8

    .line 345
    .line 346
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 349
    .line 350
    .line 351
    :cond_8
    :goto_9
    monitor-exit v10

    .line 352
    return-void

    .line 353
    :goto_a
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    throw v0

    .line 355
    :goto_b
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    throw v0
.end method
