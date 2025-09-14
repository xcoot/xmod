.class public final Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static bRestrictHostAPI:Z = false

.field public static isEMTokenEnabled:Z = false

.field public static isLckScrBlock:Z = false

.field public static isMDMBlock:Z = false

.field public static isSIMBlock:Z = false

.field public static final mConHistFile:Ljava/io/File;

.field public static mCurrentScrLckNodeValue:Ljava/lang/String; = "0"

.field public static mCurrentSysNodeValue:Ljava/lang/String; = "OFF"

.field public static mIsDeviceConnected:Z = false

.field public static mIsHostConnected:Z = false

.field public static mLockStatus:I = 0x0

.field public static mRetryCntGetIsDeviceLock:I = 0x0

.field public static mSecureKeyguardShowing:Z = true

.field public static mSettingBlockUsbLock:I = 0x1

.field public static mStrAllowList:Ljava/lang/String; = ""

.field public static final mUsbRestrictLock:Ljava/lang/Object;

.field public static misRunScreenLockTimer:Z = false

.field public static startTime:J


# instance fields
.field public final emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public final mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

.field public final mHostInterfaceObserver:Lcom/android/server/usb/UsbHostRestrictor$4;

.field public final mSubscriptionIntentReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;

.field public final mUEventDeviceObserver:Lcom/android/server/usb/UsbHostRestrictor$4;

.field public final mUEventHostObserver:Lcom/android/server/usb/UsbHostRestrictor$4;

.field public final mUsbHostRestrictionReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;


# direct methods
.method public static -$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "com.android.settings"

    .line 10
    .line 11
    const-string v2, "com.samsung.android.settings.SettingsReceiverActivity"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "cmcc_block_usb"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x10000000

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Unable to start activity to show the USB BLOCK Dialog : "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "UsbHostRestrictor"

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateVidPidList(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "-?[0-9a-fA-F]+"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v4, "UsbHostRestrictor"

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v3, "%04x"

    .line 39
    .line 40
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string/jumbo v2, "updateVidPidList wrong vid pid"

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mConHistFile:Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const-string v6, "/efs/usb_con_hist"

    .line 74
    .line 75
    const-string v7, ":"

    .line 76
    .line 77
    const-string v8, "Caught an exception writing /efs/usb_con_hist: "

    .line 78
    .line 79
    const-string v9, "VPID:"

    .line 80
    .line 81
    if-eqz v3, :cond_c

    .line 82
    .line 83
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    .line 93
    :try_start_2
    new-instance v10, Ljava/io/BufferedReader;

    .line 94
    .line 95
    new-instance v11, Ljava/io/FileReader;

    .line 96
    .line 97
    invoke-direct {v11, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 101
    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    if-eqz v14, :cond_7

    .line 110
    .line 111
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    if-eqz v15, :cond_1

    .line 119
    .line 120
    invoke-virtual {v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    const/4 v15, 0x1

    .line 125
    :goto_2
    array-length v5, v14

    .line 126
    if-ge v15, v5, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    if-eqz v16, :cond_3

    .line 137
    .line 138
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    move-object/from16 v11, v16

    .line 143
    .line 144
    check-cast v11, Landroid/util/Pair;

    .line 145
    .line 146
    move-object/from16 p2, v5

    .line 147
    .line 148
    iget-object v5, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v5, Ljava/lang/String;

    .line 151
    .line 152
    move/from16 v16, v13

    .line 153
    .line 154
    aget-object v13, v14, v15

    .line 155
    .line 156
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_2

    .line 161
    .line 162
    iget-object v5, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    .line 166
    add-int/lit8 v11, v15, 0x1

    .line 167
    .line 168
    aget-object v11, v14, v11

    .line 169
    .line 170
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_2

    .line 175
    .line 176
    const/4 v13, 0x1

    .line 177
    goto :goto_4

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    move-object v1, v0

    .line 180
    goto/16 :goto_a

    .line 181
    .line 182
    :cond_2
    move-object/from16 v5, p2

    .line 183
    .line 184
    move/from16 v13, v16

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_3
    move/from16 v16, v13

    .line 188
    .line 189
    :goto_4
    if-nez v13, :cond_4

    .line 190
    .line 191
    aget-object v5, v14, v15

    .line 192
    .line 193
    add-int/lit8 v11, v15, 0x1

    .line 194
    .line 195
    aget-object v11, v14, v11

    .line 196
    .line 197
    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_4
    add-int/lit8 v15, v15, 0x2

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    move/from16 v16, v13

    .line 208
    .line 209
    array-length v5, v14

    .line 210
    const/16 v11, 0xc8

    .line 211
    .line 212
    if-lt v5, v11, :cond_6

    .line 213
    .line 214
    const-string v5, "Lock screen block allow list full"

    .line 215
    .line 216
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    .line 218
    .line 219
    const/4 v12, 0x1

    .line 220
    :cond_6
    move/from16 v13, v16

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_7
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 224
    .line 225
    .line 226
    :try_start_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_9

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Landroid/util/Pair;

    .line 241
    .line 242
    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v10, Ljava/lang/String;

    .line 245
    .line 246
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v5, Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-eqz v10, :cond_8

    .line 255
    .line 256
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_8

    .line 261
    .line 262
    const-string v0, "Skip update vid:pid - duplicate"

    .line 263
    .line 264
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    goto/16 :goto_10

    .line 268
    .line 269
    :catch_0
    move-exception v0

    .line 270
    goto/16 :goto_f

    .line 271
    .line 272
    :cond_9
    if-eqz v12, :cond_b

    .line 273
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    if-eqz v3, :cond_a

    .line 284
    .line 285
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_a

    .line 290
    .line 291
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    const/4 v5, 0x3

    .line 296
    :goto_5
    array-length v10, v3

    .line 297
    if-ge v5, v10, :cond_a

    .line 298
    .line 299
    aget-object v10, v3, v5

    .line 300
    .line 301
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const/16 v10, 0x3a

    .line 305
    .line 306
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 307
    .line 308
    .line 309
    add-int/lit8 v5, v5, 0x1

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_a
    :try_start_6
    new-instance v3, Ljava/io/BufferedWriter;

    .line 313
    .line 314
    new-instance v5, Ljava/io/FileWriter;

    .line 315
    .line 316
    const/4 v10, 0x0

    .line 317
    invoke-direct {v5, v6, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 321
    .line 322
    .line 323
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 352
    .line 353
    .line 354
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 355
    .line 356
    .line 357
    goto/16 :goto_10

    .line 358
    .line 359
    :catch_1
    move-exception v0

    .line 360
    goto :goto_7

    .line 361
    :catchall_1
    move-exception v0

    .line 362
    move-object v1, v0

    .line 363
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :catchall_2
    move-exception v0

    .line 368
    move-object v2, v0

    .line 369
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    :goto_6
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 373
    :goto_7
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 389
    .line 390
    .line 391
    goto/16 :goto_10

    .line 392
    .line 393
    :cond_b
    :try_start_c
    new-instance v2, Ljava/io/BufferedWriter;

    .line 394
    .line 395
    new-instance v3, Ljava/io/FileWriter;

    .line 396
    .line 397
    const/4 v5, 0x1

    .line 398
    invoke-direct {v3, v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 399
    .line 400
    .line 401
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 402
    .line 403
    .line 404
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 426
    .line 427
    .line 428
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 429
    .line 430
    .line 431
    goto/16 :goto_10

    .line 432
    .line 433
    :catch_2
    move-exception v0

    .line 434
    goto :goto_9

    .line 435
    :catchall_3
    move-exception v0

    .line 436
    move-object v1, v0

    .line 437
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 438
    .line 439
    .line 440
    goto :goto_8

    .line 441
    :catchall_4
    move-exception v0

    .line 442
    move-object v2, v0

    .line 443
    :try_start_10
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 444
    .line 445
    .line 446
    :goto_8
    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 447
    :goto_9
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 463
    .line 464
    .line 465
    goto/16 :goto_10

    .line 466
    .line 467
    :catch_3
    move-exception v0

    .line 468
    goto :goto_c

    .line 469
    :goto_a
    :try_start_12
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 470
    .line 471
    .line 472
    goto :goto_b

    .line 473
    :catchall_5
    move-exception v0

    .line 474
    move-object v2, v0

    .line 475
    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 476
    .line 477
    .line 478
    :goto_b
    throw v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    .line 479
    :goto_c
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    const-string v2, "Caught an exception reading /efs/usb_con_hist: "

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    goto :goto_10

    .line 500
    :cond_c
    const-string v3, "Make new file"

    .line 501
    .line 502
    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    .line 506
    .line 507
    .line 508
    :try_start_15
    new-instance v2, Ljava/io/BufferedWriter;

    .line 509
    .line 510
    new-instance v3, Ljava/io/FileWriter;

    .line 511
    .line 512
    const/4 v5, 0x1

    .line 513
    invoke-direct {v3, v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 514
    .line 515
    .line 516
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    .line 517
    .line 518
    .line 519
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 538
    .line 539
    .line 540
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4

    .line 541
    .line 542
    .line 543
    goto :goto_10

    .line 544
    :catch_4
    move-exception v0

    .line 545
    goto :goto_e

    .line 546
    :catchall_6
    move-exception v0

    .line 547
    move-object v1, v0

    .line 548
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 549
    .line 550
    .line 551
    goto :goto_d

    .line 552
    :catchall_7
    move-exception v0

    .line 553
    move-object v2, v0

    .line 554
    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    :goto_d
    throw v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4

    .line 558
    :goto_e
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 571
    .line 572
    .line 573
    goto :goto_10

    .line 574
    :goto_f
    const-string v1, "Failed to write vid:pid history"

    .line 575
    .line 576
    invoke-static {v4, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .line 578
    .line 579
    :goto_10
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/efs/usb_con_hist"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mConHistFile:Ljava/io/File;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/server/usb/UsbHostRestrictor$2;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/android/server/usb/UsbHostRestrictor$4;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/android/server/usb/UsbHostRestrictor$4;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/android/server/usb/UsbHostRestrictor$4;

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-direct {v5, p0, v6}, Lcom/android/server/usb/UsbHostRestrictor$7;-><init>(Lcom/android/server/usb/UsbHostRestrictor;Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 48
    .line 49
    const-string p2, "DEVPATH=/devices/virtual/host_notify"

    .line 50
    .line 51
    invoke-virtual {v2, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v2, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    .line 57
    .line 58
    invoke-direct {p2, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    new-instance p2, Landroid/content/IntentFilter;

    .line 65
    .line 66
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 67
    .line 68
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    new-instance p2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 80
    .line 81
    const-string p2, "DEVPATH=/devices/virtual/android_usb/android0"

    .line 82
    .line 83
    invoke-virtual {v3, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p2, "DEVTYPE=usb_interface"

    .line 87
    .line 88
    invoke-virtual {v4, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    sput-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    .line 93
    .line 94
    new-instance v0, Ljava/lang/Thread;

    .line 95
    .line 96
    new-instance v1, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "block_usb_lock"

    .line 112
    .line 113
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lcom/android/server/usb/UsbHostRestrictor$1;

    .line 118
    .line 119
    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public static checkUsbBlockingCondition(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "null"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "UsbHostRestrictor"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string v0, "checkUsbBlockingCondition : salesCode is null"

    .line 19
    .line 20
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v0, "OXA"

    .line 24
    .line 25
    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v1, :cond_9

    .line 31
    .line 32
    const-string v1, "CHM"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v4, 0x1

    .line 39
    const-string v5, "ON_ALL_SCREEN"

    .line 40
    .line 41
    const-string v6, "ON_HOST_MDM"

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    const-string v1, "CBK"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string p0, "NOT DISABLE USB 3"

    .line 68
    .line 69
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return v3

    .line 73
    :cond_4
    :goto_0
    const-string p0, "DISABLE USB for MDM block or ON_ALL_SCREEN"

    .line 74
    .line 75
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return v4

    .line 79
    :cond_5
    :goto_1
    const-string v0, "ON_ALL_SIM"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_8

    .line 92
    .line 93
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_8

    .line 98
    .line 99
    const-string v0, "ON_ALL_BOTH"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    const-string v0, "OFF"

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_7

    .line 115
    .line 116
    const-string p0, "NOT DISABLE USB 1"

    .line 117
    .line 118
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :cond_7
    const-string p0, "NOT DISABLE USB 2"

    .line 123
    .line 124
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    return v3

    .line 128
    :cond_8
    :goto_2
    const-string p0, "DISABLE USB for USER BINARY and CMCC MODEL or MDM block or ON_ALL_SCREEN"

    .line 129
    .line 130
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v4

    .line 134
    :cond_9
    const-string p0, "NOT DISABLE USB 4"

    .line 135
    .line 136
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return v3
.end method

.method public static checkWriteValue()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkWriteValue : isLckScrBlock= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isSIMBlock="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isMDMBlock="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "UsbHostRestrictor"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 48
    .line 49
    if-ne v2, v1, :cond_0

    .line 50
    .line 51
    const-string v0, "ON_ALL_BOTH"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-ne v0, v1, :cond_1

    .line 55
    .line 56
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const-string v0, "ON_ALL_SCREEN"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-nez v0, :cond_2

    .line 64
    .line 65
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 66
    .line 67
    if-ne v2, v1, :cond_2

    .line 68
    .line 69
    const-string v0, "ON_ALL_SIM"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-nez v0, :cond_3

    .line 73
    .line 74
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 79
    .line 80
    if-ne v2, v1, :cond_3

    .line 81
    .line 82
    const-string v0, "ON_HOST_MDM"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const-string v1, "OFF"

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 94
    .line 95
    :cond_4
    move-object v0, v1

    .line 96
    :goto_0
    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "/system/csc/sales_code.dat"

    .line 2
    .line 3
    const-string v1, "/efs/imei/mps_code.dat"

    .line 4
    .line 5
    const-string v2, "IOException(iex): "

    .line 6
    .line 7
    const-string v3, "UsbHostRestrictor"

    .line 8
    .line 9
    const-string v4, "File not Found exception: "

    .line 10
    .line 11
    const-string v5, "IOException: "

    .line 12
    .line 13
    const-string v6, "IllegalArgumentException: "

    .line 14
    .line 15
    const-string/jumbo v7, "null"

    .line 16
    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    :try_start_0
    new-instance v9, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v10, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-eqz v9, :cond_0

    .line 34
    .line 35
    const-string/jumbo v0, "mps exists"

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/io/FileReader;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    .line 45
    .line 46
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    move-object v8, v0

    .line 56
    move-object v0, v1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :catchall_0
    move-exception v4

    .line 60
    move-object v8, v0

    .line 61
    move-object v0, v1

    .line 62
    goto/16 :goto_12

    .line 63
    .line 64
    :catch_0
    move-exception v4

    .line 65
    move-object v8, v0

    .line 66
    move-object v0, v1

    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :catch_1
    move-exception v4

    .line 70
    move-object v8, v0

    .line 71
    move-object v0, v1

    .line 72
    goto/16 :goto_b

    .line 73
    .line 74
    :catch_2
    move-exception v5

    .line 75
    move-object v8, v0

    .line 76
    move-object v0, v1

    .line 77
    goto/16 :goto_e

    .line 78
    .line 79
    :catchall_1
    move-exception v4

    .line 80
    move-object v11, v8

    .line 81
    move-object v8, v0

    .line 82
    move-object v0, v11

    .line 83
    goto/16 :goto_12

    .line 84
    .line 85
    :catch_3
    move-exception v4

    .line 86
    move-object v11, v8

    .line 87
    move-object v8, v0

    .line 88
    move-object v0, v11

    .line 89
    goto/16 :goto_8

    .line 90
    .line 91
    :catch_4
    move-exception v4

    .line 92
    move-object v11, v8

    .line 93
    move-object v8, v0

    .line 94
    move-object v0, v11

    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :catch_5
    move-exception v5

    .line 98
    move-object v11, v8

    .line 99
    move-object v8, v0

    .line 100
    move-object v0, v11

    .line 101
    goto/16 :goto_e

    .line 102
    .line 103
    :catchall_2
    move-exception v4

    .line 104
    move-object v0, v8

    .line 105
    goto/16 :goto_12

    .line 106
    .line 107
    :catch_6
    move-exception v4

    .line 108
    move-object v0, v8

    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :catch_7
    move-exception v4

    .line 112
    move-object v0, v8

    .line 113
    goto/16 :goto_b

    .line 114
    .line 115
    :catch_8
    move-exception v5

    .line 116
    move-object v0, v8

    .line 117
    goto/16 :goto_e

    .line 118
    .line 119
    :cond_0
    :try_start_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    const-string/jumbo v1, "sales_code exists"

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    new-instance v1, Ljava/io/FileReader;

    .line 132
    .line 133
    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 134
    .line 135
    .line 136
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 139
    .line 140
    .line 141
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 145
    move-object v8, v1

    .line 146
    goto :goto_4

    .line 147
    :catchall_3
    move-exception v4

    .line 148
    :goto_0
    move-object v8, v1

    .line 149
    goto/16 :goto_12

    .line 150
    .line 151
    :catch_9
    move-exception v4

    .line 152
    :goto_1
    move-object v8, v1

    .line 153
    goto :goto_8

    .line 154
    :catch_a
    move-exception v4

    .line 155
    :goto_2
    move-object v8, v1

    .line 156
    goto/16 :goto_b

    .line 157
    .line 158
    :catch_b
    move-exception v5

    .line 159
    :goto_3
    move-object v8, v1

    .line 160
    goto/16 :goto_e

    .line 161
    .line 162
    :catchall_4
    move-exception v4

    .line 163
    move-object v0, v8

    .line 164
    goto :goto_0

    .line 165
    :catch_c
    move-exception v4

    .line 166
    move-object v0, v8

    .line 167
    goto :goto_1

    .line 168
    :catch_d
    move-exception v4

    .line 169
    move-object v0, v8

    .line 170
    goto :goto_2

    .line 171
    :catch_e
    move-exception v5

    .line 172
    move-object v0, v8

    .line 173
    goto :goto_3

    .line 174
    :cond_1
    :try_start_6
    const-string v0, "Both dat does not exist"

    .line 175
    .line 176
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 177
    .line 178
    .line 179
    move-object v0, v8

    .line 180
    :goto_4
    if-eqz v8, :cond_2

    .line 181
    .line 182
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :catch_f
    move-exception v0

    .line 187
    goto :goto_6

    .line 188
    :cond_2
    :goto_5
    if-eqz v0, :cond_6

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 191
    .line 192
    .line 193
    goto/16 :goto_11

    .line 194
    .line 195
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto/16 :goto_11

    .line 215
    .line 216
    :goto_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 233
    .line 234
    .line 235
    if-eqz v8, :cond_3

    .line 236
    .line 237
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :catch_10
    move-exception v0

    .line 242
    goto :goto_a

    .line 243
    :cond_3
    :goto_9
    if-eqz v0, :cond_6

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    .line 246
    .line 247
    .line 248
    goto :goto_11

    .line 249
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :catchall_5
    move-exception v4

    .line 256
    goto :goto_12

    .line 257
    :goto_b
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 274
    .line 275
    .line 276
    if-eqz v8, :cond_4

    .line 277
    .line 278
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 279
    .line 280
    .line 281
    goto :goto_c

    .line 282
    :catch_11
    move-exception v0

    .line 283
    goto :goto_d

    .line 284
    :cond_4
    :goto_c
    if-eqz v0, :cond_6

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    .line 287
    .line 288
    .line 289
    goto :goto_11

    .line 290
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :goto_e
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 313
    .line 314
    .line 315
    if-eqz v8, :cond_5

    .line 316
    .line 317
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 318
    .line 319
    .line 320
    goto :goto_f

    .line 321
    :catch_12
    move-exception v0

    .line 322
    goto :goto_10

    .line 323
    :cond_5
    :goto_f
    if-eqz v0, :cond_6

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    .line 326
    .line 327
    .line 328
    goto :goto_11

    .line 329
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_7

    .line 335
    .line 336
    :cond_6
    :goto_11
    return-object v7

    .line 337
    :goto_12
    if-eqz v8, :cond_7

    .line 338
    .line 339
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 340
    .line 341
    .line 342
    goto :goto_13

    .line 343
    :catch_13
    move-exception v0

    .line 344
    goto :goto_14

    .line 345
    :cond_7
    :goto_13
    if-eqz v0, :cond_8

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13

    .line 348
    .line 349
    .line 350
    goto :goto_15

    .line 351
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    :cond_8
    :goto_15
    throw v4
.end method

.method public static getUsbHostDisableSysNodeWritable()Z
    .locals 1

    .line 1
    const-string v0, "/sys/class/usb_notify/usb_control/disable"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static isAdbOnlyMode()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.usb.config"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "none"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "adb"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static isSupportDexRestrict()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "isSupportDexRestrict ["

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "]"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "UsbHostRestrictor"

    .line 54
    .line 55
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    return v0
.end method

.method public static readFileToString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "/efs/usb_con_hist"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 9
    .line 10
    new-instance v3, Ljava/io/FileReader;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_1
    move-exception v2

    .line 44
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    const-string v0, "UsbHostRestrictor"

    .line 49
    .line 50
    const-string v2, "Failed to read from ScrLck Block FILE"

    .line 51
    .line 52
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public static startLockTimer()V
    .locals 2

    .line 1
    const-string v0, "UsbHostRestrictor"

    .line 2
    .line 3
    const-string/jumbo v1, "startLockTimer++"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lcom/android/server/usb/UsbHostRestrictor;->startTime:J

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    .line 20
    .line 21
    return-void
.end method

.method public static stopLockTimer()V
    .locals 2

    .line 1
    const-string v0, "UsbHostRestrictor"

    .line 2
    .line 3
    const-string/jumbo v1, "stopLockTimer--"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    .line 11
    .line 12
    return-void
.end method

.method public static writeVpidHistorytoFile(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Failed to close the file writer"

    .line 2
    .line 3
    const-string v1, "UsbHostRestrictor"

    .line 4
    .line 5
    const-string/jumbo v2, "writeVpidHistorytoFile"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 13
    .line 14
    const-string v4, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/io/FileWriter;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v4, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    move-object v2, v4

    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-object v2, v4

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_2
    :goto_0
    :try_start_3
    const-string p0, "Failed to write to USB RESTRICT File Path"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_1
    return-void

    .line 54
    :goto_2
    if-eqz v2, :cond_1

    .line 55
    .line 56
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catch_3
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_3
    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "USB Host Restrictor State:"

    .line 2
    .line 3
    const-string v1, "  All SIM Count:"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "  Disable Sys Node Value :"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "  Disable Sys Node Writable :"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "  mCurrentSysNodeValue :"

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "  SIM BLOCK ON/OFF :"

    .line 89
    .line 90
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 95
    .line 96
    const-string v1, "  MDM BLOCK ON/OFF :"

    .line 97
    .line 98
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 103
    .line 104
    const-string v1, "  LckScr BLOCK ON/OFF :"

    .line 105
    .line 106
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    .line 111
    .line 112
    const-string v1, "  CurrentScrLckStateValue :"

    .line 113
    .line 114
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentScrLckNodeValue:Ljava/lang/String;

    .line 119
    .line 120
    const-string v1, "  ScreenLockStateValue :"

    .line 121
    .line 122
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    sget v0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 127
    .line 128
    const-string v1, "  IsHostConnected :"

    .line 129
    .line 130
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 135
    .line 136
    const-string v1, "  IsDeviceConnected :"

    .line 137
    .line 138
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 143
    .line 144
    const-string v1, "  SettingBlockUsbLock :"

    .line 145
    .line 146
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    sget v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 151
    .line 152
    const-string v1, "  IsTKInstalled :"

    .line 153
    .line 154
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 159
    .line 160
    const-string v1, "  MDM bRestrictHostAPI :"

    .line 161
    .line 162
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    .line 167
    .line 168
    const-string v1, "  MDM mStrAllowList :"

    .line 169
    .line 170
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mStrAllowList:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {p0, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final isFinishLockTimer()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    const-string v0, "UsbHostRestrictor"

    .line 7
    .line 8
    const-string v2, "isFinishLockTimer"

    .line 9
    .line 10
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sget-wide v4, Lcom/android/server/usb/UsbHostRestrictor;->startTime:J

    .line 18
    .line 19
    sub-long/2addr v2, v4

    .line 20
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    invoke-virtual {v4, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v4, v5, :cond_0

    .line 37
    .line 38
    const-string v4, "TK ENABLED"

    .line 39
    .line 40
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    sput-boolean v5, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v4, "TK NOT ENABLED"

    .line 47
    .line 48
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 52
    .line 53
    :cond_1
    :goto_0
    const-wide/32 v6, 0x36ee80

    .line 54
    .line 55
    .line 56
    cmp-long v2, v2, v6

    .line 57
    .line 58
    if-ltz v2, :cond_7

    .line 59
    .line 60
    sget v2, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 61
    .line 62
    if-ne v2, v5, :cond_7

    .line 63
    .line 64
    const-string/jumbo v2, "persist.sys.auto_confirm"

    .line 65
    .line 66
    .line 67
    const-string v3, "0"

    .line 68
    .line 69
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "1"

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_7

    .line 80
    .line 81
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 82
    .line 83
    if-nez v2, :cond_7

    .line 84
    .line 85
    const-string v1, "finishLockTimer--"

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    sput-boolean v5, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    .line 91
    .line 92
    const/4 v1, 0x2

    .line 93
    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 94
    .line 95
    const-string v1, "2"

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v3, "ON_ALL"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const-string v4, "UsbHostRestrictor set SCR LCK BLCK"

    .line 121
    .line 122
    const-string v6, "ON_ALL_SCREEN"

    .line 123
    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    const-string v3, "ON_ALL_BOTH"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_4

    .line 133
    .line 134
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    const-string v6, "ON_ALL_SIM"

    .line 142
    .line 143
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_3

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    const-string p0, "UsbHostRestrictor USB ALL is already BLOCKED by "

    .line 163
    .line 164
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    :goto_1
    const-string p0, "UsbHostRestrictor USB ALL is already BLOCKED by SCR LCK BLCK"

    .line 173
    .line 174
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_2
    return v5

    .line 191
    :cond_7
    return v1
.end method

.method public final onAwakeStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Landroid/app/KeyguardManager;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/KeyguardManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move p1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v1

    .line 28
    :goto_0
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    .line 32
    .line 33
    if-eq v3, p1, :cond_1

    .line 34
    .line 35
    sput-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 42
    .line 43
    const-string v4, "/sys/class/usb_notify/usb_control/usb_sl"

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {v3, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    :try_start_2
    const-string v3, "UsbHostRestrictor"

    .line 58
    .line 59
    const-string v4, "Failed to read from ScrLck Block FILE"

    .line 60
    .line 61
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_2
    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    .line 65
    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 76
    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    :cond_2
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 80
    .line 81
    if-eq v3, v4, :cond_3

    .line 82
    .line 83
    const-string p1, "1"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sput v4, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 91
    .line 92
    .line 93
    const-string p0, "UsbHostRestrictor"

    .line 94
    .line 95
    const-string/jumbo p1, "onKeyguardStateChanged: LOCK_SCREEN_BLOCK : ON -> OFF"

    .line 96
    .line 97
    .line 98
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 110
    .line 111
    if-ne v3, v2, :cond_4

    .line 112
    .line 113
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 114
    .line 115
    if-ne v3, v4, :cond_4

    .line 116
    .line 117
    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 118
    .line 119
    const-string v3, "UsbHostRestrictor"

    .line 120
    .line 121
    const-string/jumbo v4, "onKeyguardStateChanged: LOCK_SCREEN_BLOCK : OFF -> ON"

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 129
    .line 130
    if-ne v3, v4, :cond_5

    .line 131
    .line 132
    const-string p0, "UsbHostRestrictor"

    .line 133
    .line 134
    const-string/jumbo p1, "onKeyguardStateChanged: LOCK_SCREEN_BLOCK : OFF"

    .line 135
    .line 136
    .line 137
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 143
    .line 144
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 145
    .line 146
    if-nez v3, :cond_6

    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    .line 152
    .line 153
    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 156
    .line 157
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    if-nez p1, :cond_7

    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    .line 167
    .line 168
    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 171
    .line 172
    const/4 p1, 0x2

    .line 173
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_4
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    throw p0
.end method

.method public final readDisableSysNodefromFile()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string v0, "UsbHostRestrictor"

    .line 20
    .line 21
    const-string v1, "Failed to read from DISABLE FILE"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v1, "ON"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string v1, "OFF"

    .line 49
    .line 50
    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sput-object v1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 56
    .line 57
    :goto_1
    return-object v0
.end method

.method public final writeDisableSysNodetoFile(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "OFF"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Write Disable Sys Node with ["

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "]"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "UsbHostRestrictor"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    :try_start_1
    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sput-object p1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 48
    .line 49
    const/16 v1, 0x65

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v3, 0x1

    .line 59
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v3, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_0
    const-string v1, "Failed to write to DISABLE FILE"

    .line 79
    .line 80
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "IOException : "

    .line 86
    .line 87
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 106
    .line 107
    :goto_1
    return-void
.end method

.method public final writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "UsbHostRestrictor"

    .line 2
    .line 3
    const-string v1, "Write ScrLck Block FILE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "2"

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-virtual {v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ne v1, v4, :cond_0

    .line 34
    .line 35
    const-string v1, "TK ENABLED 2"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    sput-boolean v4, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "TK NOT ENABLED 2"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 49
    .line 50
    :cond_1
    :goto_0
    const-string/jumbo v1, "persist.sys.auto_confirm"

    .line 51
    .line 52
    .line 53
    const-string v4, "0"

    .line 54
    .line 55
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v5, "1"

    .line 60
    .line 61
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    const-string/jumbo p1, "usb debug mode on"

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "ON_ALL_SCREEN"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "ON_ALL_BOTH"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    move-object p1, v5

    .line 123
    :cond_5
    :try_start_0
    const-string p0, "/sys/class/usb_notify/usb_control/usb_sl"

    .line 124
    .line 125
    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentScrLckNodeValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p0

    .line 132
    const-string p1, "Failed to write to ScrLck Block FILE"

    .line 133
    .line 134
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v1, "IOException : "

    .line 140
    .line 141
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    sput-object v4, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentScrLckNodeValue:Ljava/lang/String;

    .line 155
    .line 156
    :goto_1
    return-void
.end method
