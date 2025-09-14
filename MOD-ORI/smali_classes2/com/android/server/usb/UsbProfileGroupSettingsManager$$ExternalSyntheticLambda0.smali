.class public final synthetic Lcom/android/server/usb/UsbProfileGroupSettingsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v5, "settings"

    .line 30
    .line 31
    .line 32
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/hardware/usb/DeviceFilter;

    .line 56
    .line 57
    const-string/jumbo v7, "preference"

    .line 58
    .line 59
    .line 60
    invoke-interface {v4, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v7, "package"

    .line 64
    .line 65
    .line 66
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 73
    .line 74
    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v4, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v7, "user"

    .line 80
    .line 81
    .line 82
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 89
    .line 90
    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 91
    .line 92
    iget-object v9, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 93
    .line 94
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-virtual {v9, v8}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-interface {v4, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v4}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v6, "preference"

    .line 113
    .line 114
    .line 115
    invoke-interface {v4, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :catch_0
    move-exception v2

    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_0
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_1

    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Landroid/hardware/usb/AccessoryFilter;

    .line 146
    .line 147
    const-string/jumbo v7, "preference"

    .line 148
    .line 149
    .line 150
    invoke-interface {v4, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    .line 152
    .line 153
    const-string/jumbo v7, "package"

    .line 154
    .line 155
    .line 156
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 163
    .line 164
    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v4, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    const-string/jumbo v7, "user"

    .line 170
    .line 171
    .line 172
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 179
    .line 180
    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 181
    .line 182
    iget-object v9, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 183
    .line 184
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    invoke-virtual {v9, v8}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-interface {v4, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v4}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 200
    .line 201
    .line 202
    const-string/jumbo v6, "preference"

    .line 203
    .line 204
    .line 205
    invoke-interface {v4, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 210
    .line 211
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    move v6, v1

    .line 216
    :goto_2
    if-ge v6, v5, :cond_3

    .line 217
    .line 218
    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 219
    .line 220
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    check-cast v7, Landroid/hardware/usb/DeviceFilter;

    .line 225
    .line 226
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 227
    .line 228
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    check-cast v8, Landroid/util/ArraySet;

    .line 233
    .line 234
    const-string/jumbo v9, "preference-denied-list"

    .line 235
    .line 236
    .line 237
    invoke-interface {v4, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v4}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    move v9, v1

    .line 248
    :goto_3
    if-ge v9, v7, :cond_2

    .line 249
    .line 250
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    check-cast v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 255
    .line 256
    const-string/jumbo v11, "user-package"

    .line 257
    .line 258
    .line 259
    invoke-interface {v4, v2, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    .line 261
    .line 262
    const-string/jumbo v11, "user"

    .line 263
    .line 264
    .line 265
    iget-object v12, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 266
    .line 267
    iget-object v13, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 268
    .line 269
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    invoke-virtual {v13, v12}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    invoke-interface {v4, v2, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    .line 283
    .line 284
    const-string/jumbo v11, "package"

    .line 285
    .line 286
    .line 287
    iget-object v10, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 288
    .line 289
    invoke-interface {v4, v2, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    .line 291
    .line 292
    const-string/jumbo v10, "user-package"

    .line 293
    .line 294
    .line 295
    invoke-interface {v4, v2, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    .line 297
    .line 298
    add-int/lit8 v9, v9, 0x1

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_2
    const-string/jumbo v7, "preference-denied-list"

    .line 302
    .line 303
    .line 304
    invoke-interface {v4, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    .line 306
    .line 307
    add-int/lit8 v6, v6, 0x1

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_3
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 311
    .line 312
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    move v6, v1

    .line 317
    :goto_4
    if-ge v6, v5, :cond_5

    .line 318
    .line 319
    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 320
    .line 321
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Landroid/hardware/usb/AccessoryFilter;

    .line 326
    .line 327
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 328
    .line 329
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    check-cast v8, Landroid/util/ArraySet;

    .line 334
    .line 335
    const-string/jumbo v9, "preference-denied-list"

    .line 336
    .line 337
    .line 338
    invoke-interface {v4, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v4}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    move v9, v1

    .line 349
    :goto_5
    if-ge v9, v7, :cond_4

    .line 350
    .line 351
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    check-cast v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 356
    .line 357
    const-string/jumbo v11, "user-package"

    .line 358
    .line 359
    .line 360
    invoke-interface {v4, v2, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    .line 362
    .line 363
    const-string/jumbo v11, "user"

    .line 364
    .line 365
    .line 366
    iget-object v12, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 367
    .line 368
    iget-object v13, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 369
    .line 370
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    invoke-virtual {v13, v12}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    invoke-interface {v4, v2, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    .line 384
    .line 385
    const-string/jumbo v11, "package"

    .line 386
    .line 387
    .line 388
    iget-object v10, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 389
    .line 390
    invoke-interface {v4, v2, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    .line 392
    .line 393
    const-string/jumbo v10, "user-package"

    .line 394
    .line 395
    .line 396
    invoke-interface {v4, v2, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    .line 398
    .line 399
    add-int/lit8 v9, v9, 0x1

    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_4
    const-string/jumbo v7, "preference-denied-list"

    .line 403
    .line 404
    .line 405
    invoke-interface {v4, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    .line 407
    .line 408
    add-int/lit8 v6, v6, 0x1

    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_5
    const-string/jumbo v5, "settings"

    .line 412
    .line 413
    .line 414
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    .line 416
    .line 417
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 418
    .line 419
    .line 420
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :catch_1
    move-exception v3

    .line 427
    move-object v14, v3

    .line 428
    move-object v3, v2

    .line 429
    move-object v2, v14

    .line 430
    :goto_6
    :try_start_2
    const-string v4, "UsbProfileGroupSettingsManager"

    .line 431
    .line 432
    const-string v5, "Failed to write settings"

    .line 433
    .line 434
    invoke-static {v4, v5, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .line 436
    .line 437
    if-eqz v3, :cond_6

    .line 438
    .line 439
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 440
    .line 441
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 442
    .line 443
    .line 444
    :cond_6
    :goto_7
    iput-boolean v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 445
    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 448
    :goto_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    throw p0
.end method
