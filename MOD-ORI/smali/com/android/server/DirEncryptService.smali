.class public final Lcom/android/server/DirEncryptService;
.super Lcom/samsung/android/security/IDirEncryptService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final RECOVERY_DIR:Ljava/io/File;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/DirEncryptService$2;

.field public final mContext:Landroid/content/Context;

.field public final mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field public mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field public final mListener:Lcom/android/server/DirEncryptService$1;

.field public mPm:Landroid/content/pm/PackageManager;

.field public final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/cache/recovery"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/DirEncryptService$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mListener:Lcom/android/server/DirEncryptService$1;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/DirEncryptService$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Lcom/android/server/DirEncryptService$2;

    .line 33
    .line 34
    const-string v0, "DirEncryptService"

    .line 35
    .line 36
    const-string/jumbo v1, "ctor DirEncryptService....."

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 57
    .line 58
    return-void
.end method

.method public static moveDumpstate()Z
    .locals 17

    .line 1
    const-string/jumbo v0, "vold.decrypt"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "trigger_restart_min_framework"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_e

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const-string v3, "DirEncryptService"

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string/jumbo v0, "moveDumpstate - RECOVERY_DIR was not exist!!"

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_a

    .line 42
    .line 43
    array-length v0, v1

    .line 44
    if-gtz v0, :cond_2

    .line 45
    .line 46
    goto/16 :goto_f

    .line 47
    .line 48
    :cond_2
    :goto_0
    array-length v0, v1

    .line 49
    if-ge v2, v0, :cond_9

    .line 50
    .line 51
    aget-object v0, v1, v2

    .line 52
    .line 53
    if-eqz v0, :cond_8

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_8

    .line 60
    .line 61
    aget-object v0, v1, v2

    .line 62
    .line 63
    const-string/jumbo v4, "last_ode_dumpstate"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    new-instance v4, Ljava/io/File;

    .line 73
    .line 74
    sget-object v0, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    .line 75
    .line 76
    aget-object v5, v1, v2

    .line 77
    .line 78
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Ljava/io/File;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "/data/log/"

    .line 86
    .line 87
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    aget-object v6, v1, v2

    .line 91
    .line 92
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v6, "Error close FileChannel : "

    .line 103
    .line 104
    const-string v7, "Error copy ode logs : "

    .line 105
    .line 106
    const-string v8, "Error chmod ode logs : "

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 110
    .line 111
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 115
    .line 116
    .line 117
    move-result-object v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 119
    .line 120
    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->size()J

    .line 128
    .line 129
    .line 130
    move-result-wide v14

    .line 131
    const-wide/16 v12, 0x0

    .line 132
    .line 133
    move-object v10, v9

    .line 134
    move-object/from16 v11, v16

    .line 135
    .line 136
    invoke-virtual/range {v10 .. v15}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/16 v10, 0x1a0

    .line 144
    .line 145
    invoke-static {v0, v10}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .line 153
    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :catchall_0
    move-exception v0

    .line 179
    move-object v1, v0

    .line 180
    move-object v7, v9

    .line 181
    move-object/from16 v9, v16

    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :catch_1
    move-exception v0

    .line 186
    move-object v7, v9

    .line 187
    move-object/from16 v9, v16

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catch_2
    move-exception v0

    .line 191
    move-object v8, v9

    .line 192
    move-object/from16 v9, v16

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    move-object v1, v0

    .line 197
    move-object v7, v9

    .line 198
    goto/16 :goto_9

    .line 199
    .line 200
    :catch_3
    move-exception v0

    .line 201
    move-object v7, v9

    .line 202
    goto :goto_2

    .line 203
    :catch_4
    move-exception v0

    .line 204
    move-object v8, v9

    .line 205
    goto :goto_5

    .line 206
    :goto_2
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    .line 224
    .line 225
    if-eqz v9, :cond_3

    .line 226
    .line 227
    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :catch_5
    move-exception v0

    .line 232
    goto :goto_4

    .line 233
    :cond_3
    :goto_3
    if-eqz v7, :cond_5

    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 236
    .line 237
    .line 238
    goto :goto_8

    .line 239
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catchall_2
    move-exception v0

    .line 246
    move-object v1, v0

    .line 247
    goto :goto_9

    .line 248
    :goto_5
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 265
    .line 266
    .line 267
    if-eqz v9, :cond_4

    .line 268
    .line 269
    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catch_6
    move-exception v0

    .line 274
    goto :goto_7

    .line 275
    :cond_4
    :goto_6
    if-eqz v8, :cond_5

    .line 276
    .line 277
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 278
    .line 279
    .line 280
    goto :goto_8

    .line 281
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_5
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string/jumbo v6, "copyFile : "

    .line 290
    .line 291
    .line 292
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v6, " -> "

    .line 299
    .line 300
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    :try_start_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 314
    .line 315
    .line 316
    goto :goto_d

    .line 317
    :catch_7
    move-exception v0

    .line 318
    move-object v4, v0

    .line 319
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .line 321
    .line 322
    goto :goto_d

    .line 323
    :catchall_3
    move-exception v0

    .line 324
    move-object v1, v0

    .line 325
    move-object v7, v8

    .line 326
    :goto_9
    if-eqz v9, :cond_6

    .line 327
    .line 328
    :try_start_8
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 329
    .line 330
    .line 331
    goto :goto_a

    .line 332
    :catch_8
    move-exception v0

    .line 333
    goto :goto_b

    .line 334
    :cond_6
    :goto_a
    if-eqz v7, :cond_7

    .line 335
    .line 336
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 337
    .line 338
    .line 339
    goto :goto_c

    .line 340
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    :cond_7
    :goto_c
    throw v1

    .line 360
    :cond_8
    :goto_d
    add-int/lit8 v2, v2, 0x1

    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :cond_9
    :goto_e
    const/4 v0, 0x1

    .line 365
    return v0

    .line 366
    :cond_a
    :goto_f
    const-string/jumbo v0, "moveDumpstate - fileList is null!!"

    .line 367
    .line 368
    .line 369
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    return v2
.end method


# virtual methods
.method public final authByUid(I)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p1, "Permission Denial: can\'t dump DirEncryptService from from pid="

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", uid="

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " without permission android.permission.DUMP"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DirEncryptService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string/jumbo v2, "status"

    .line 11
    .line 12
    .line 13
    iget v1, v1, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "isSdCardEncryped"

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "lasterror"

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 34
    .line 35
    iget v2, v2, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "spacerequired"

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 44
    .line 45
    iget v2, v2, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "isAdminApplied"

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "EncryptTimestamp"

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v1, "DecryptTimestamp"

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo v1, "dump ex ="

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_2
    const-string p1, "DirEncryptService"

    .line 113
    .line 114
    const-string/jumbo v0, "dump formatting failure"

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :goto_3
    return-void
.end method

.method public final encryptStorage(Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Check the state of external SD card mount path = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "DirEncryptService"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/16 p0, 0xc8

    .line 27
    .line 28
    return p0

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    const/16 v1, 0x3e8

    .line 40
    .line 41
    if-eq p1, v1, :cond_1

    .line 42
    .line 43
    const-string p0, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    new-instance p1, Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct {p1, v3}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string/jumbo v3, "mounted"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/16 v4, 0xd

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    const-string p1, "SD card mounted, need unmount..."

    .line 77
    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 82
    .line 83
    invoke-virtual {p1, v5}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 87
    .line 88
    const/4 p1, 0x2

    .line 89
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-string v3, "HiddenMount"

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    const-string p1, "SD card ready, need encrypt cycle..."

    .line 106
    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 111
    .line 112
    invoke-virtual {p1, v5}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 116
    .line 117
    const/4 p1, 0x4

    .line 118
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const-string p0, "SD card not mounted, so not applying policies this time"

    .line 127
    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    const/16 v4, 0xca

    .line 132
    .line 133
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    return v4

    .line 137
    :cond_4
    :goto_1
    const-string p0, "Invalid requester"

    .line 138
    .line 139
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const/16 p0, 0xcc

    .line 143
    .line 144
    return p0
.end method

.method public final findRequester(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Package name uidApp = "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, " uid = "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v4, "DirEncryptService"

    .line 40
    .line 41
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v5, "Package name myUID  = "

    .line 47
    .line 48
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const-string v2, "REQUESTER_APP..."

    .line 74
    .line 75
    if-eqz v1, :cond_7

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-gtz v3, :cond_0

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    const-string v3, ""

    .line 92
    .line 93
    if-eqz p0, :cond_1

    .line 94
    .line 95
    const-string p0, "REQUESTER_UNKNOWN..."

    .line 96
    .line 97
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-object v3

    .line 101
    :cond_1
    if-eq v0, p1, :cond_2

    .line 102
    .line 103
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    const-string p1, "activity"

    .line 112
    .line 113
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 143
    .line 144
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 145
    .line 146
    if-ne v2, p0, :cond_3

    .line 147
    .line 148
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v1, "calling pid = "

    .line 154
    .line 155
    .line 156
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string/jumbo p1, "calling pid package = "

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    if-nez v0, :cond_5

    .line 188
    .line 189
    const-string p0, "Calling package name is null..."

    .line 190
    .line 191
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    return-object v3

    .line 195
    :cond_5
    const-string/jumbo p0, "com.android.settings"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_6

    .line 203
    .line 204
    const-string p0, "REQUESTER_USER..."

    .line 205
    .line 206
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    const-string/jumbo p0, "user"

    .line 210
    .line 211
    .line 212
    return-object p0

    .line 213
    :cond_6
    const-string p0, "REQUESTER_DM..."

    .line 214
    .line 215
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    const-string/jumbo p0, "dm"

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :cond_7
    :goto_1
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    return-object v1
.end method

.method public final getAdditionalSpaceRequired()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 4
    .line 5
    return p0
.end method

.method public final getCurrentStatus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 4
    .line 5
    return p0
.end method

.method public final getLastError()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 4
    .line 5
    return p0
.end method

.method public final getListener()Landroid/os/IVoldTaskListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mListener:Lcom/android/server/DirEncryptService$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isSdCardEncryped()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isStorageCardEncryptionPoliciesApplied()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-string v2, "DirEncryptService"

    .line 14
    .line 15
    const-string/jumbo v3, "isStorageCardEncryptionPoliciesApplied....."

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p0
.end method

.method public final registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMountSDcardToHelper(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p0, "DirEncryptService"

    .line 31
    .line 32
    const-string/jumbo p1, "setMountSDcardToHelper error: invalid uid"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setNeedToCreateKey(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "DirEncryptService"

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x3e8

    .line 25
    .line 26
    if-eq p1, v2, :cond_1

    .line 27
    .line 28
    const-string p0, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    .line 29
    .line 30
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const-string/jumbo p0, "setNeedToCreateKey error: invalid uid"

    .line 41
    .line 42
    .line 43
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0xc8

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/16 v4, 0x3e8

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v7, "DirEncryptService"

    .line 29
    .line 30
    if-eq v0, v4, :cond_1

    .line 31
    .line 32
    const-string v4, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    .line 33
    .line 34
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move v4, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v4, v5

    .line 40
    :goto_0
    if-nez v4, :cond_2

    .line 41
    .line 42
    const-string v4, ".*android.uid.systemui.*"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v6, v5

    .line 52
    :goto_1
    const-string/jumbo v3, "setPassword....."

    .line 53
    .line 54
    .line 55
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 67
    .line 68
    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const-string/jumbo p0, "setPassword error: invalid uid"

    .line 77
    .line 78
    .line 79
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    const/16 p0, 0xd

    .line 86
    .line 87
    return p0
.end method

.method public final setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .locals 9

    .line 1
    const-string v0, "Called by: "

    .line 2
    .line 3
    const-string/jumbo v1, "setSdCardEncryptionPolicy : "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0xc8

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    const-string v2, "DirEncryptService"

    .line 16
    .line 17
    const-string/jumbo v4, "setSdCardEncryptionPolicy: ["

    .line 18
    .line 19
    .line 20
    const-string v5, "]["

    .line 21
    .line 22
    const-string v6, "]["

    .line 23
    .line 24
    invoke-static {p1, v4, v5, p3, v6}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, "]"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0, v4}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    if-nez p3, :cond_1

    .line 63
    .line 64
    iget-object p3, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-nez p3, :cond_1

    .line 71
    .line 72
    const-string p3, "FFFF-FFFF"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_4

    .line 77
    :cond_1
    :goto_0
    const-string v8, "DirEncryptService"

    .line 78
    .line 79
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-static {v8, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 87
    .line 88
    iget p3, p3, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 89
    .line 90
    if-eqz p3, :cond_2

    .line 91
    .line 92
    const-string p0, "DirEncryptService"

    .line 93
    .line 94
    const-string p1, "Cannot save the policy if SD card is being encrypted/decrypted"

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    monitor-exit v2

    .line 103
    const/16 p0, 0xf

    .line 104
    .line 105
    return p0

    .line 106
    :cond_2
    const-string p3, "DirEncryptService"

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v5}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    const/16 p3, 0x9

    .line 128
    .line 129
    if-eqz p0, :cond_7

    .line 130
    .line 131
    const-string/jumbo p0, "user"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    const/16 v0, 0x8

    .line 139
    .line 140
    if-eqz p0, :cond_4

    .line 141
    .line 142
    :cond_3
    :goto_1
    move v3, v0

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    if-eqz p2, :cond_3

    .line 145
    .line 146
    const/4 p0, 0x1

    .line 147
    if-eq p2, p0, :cond_3

    .line 148
    .line 149
    if-ne p1, p0, :cond_5

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    if-nez p1, :cond_6

    .line 153
    .line 154
    :goto_2
    move v3, p3

    .line 155
    goto :goto_3

    .line 156
    :cond_6
    const-string p0, "DirEncryptService"

    .line 157
    .line 158
    const-string p1, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    .line 159
    .line 160
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    const-string p0, "DirEncryptService"

    .line 165
    .line 166
    const-string/jumbo p1, "setSdCardEncryptionPolicy error: invalid uid"

    .line 167
    .line 168
    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :goto_3
    invoke-static {}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 174
    .line 175
    .line 176
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    .line 178
    .line 179
    monitor-exit v2

    .line 180
    return v3

    .line 181
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p0
.end method

.method public final setStorageCardEncryptionPolicy(III)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "Called by: "

    .line 10
    .line 11
    const-string/jumbo v5, "setStorageCardEncryptionPolicy : "

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x2

    .line 19
    const/16 v8, 0xc8

    .line 20
    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    if-ne v1, v7, :cond_0

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    const-string v13, "DirEncryptService"

    .line 30
    .line 31
    const-string v14, "Encrypting storage card failed"

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v9, 0x1

    .line 36
    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v4, "DirEncryptService"

    .line 45
    .line 46
    const-string v5, "Decrypting storage card failed"

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return v8

    .line 55
    :cond_1
    const-string v6, "DirEncryptService"

    .line 56
    .line 57
    const-string/jumbo v9, "setStorageCardEncryption: ["

    .line 58
    .line 59
    .line 60
    const-string v10, "]["

    .line 61
    .line 62
    const-string v11, "]["

    .line 63
    .line 64
    invoke-static {v1, v2, v9, v10, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v10, "]"

    .line 72
    .line 73
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    if-eq v1, v7, :cond_2

    .line 84
    .line 85
    const/4 v6, 0x3

    .line 86
    if-eq v1, v6, :cond_2

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const-string v13, "DirEncryptService"

    .line 93
    .line 94
    const-string v14, "Decrypting storage card failed"

    .line 95
    .line 96
    const/4 v10, 0x1

    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v9, 0x1

    .line 99
    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return v8

    .line 103
    :cond_2
    const/4 v6, 0x4

    .line 104
    if-eq v2, v6, :cond_4

    .line 105
    .line 106
    const/4 v9, 0x5

    .line 107
    if-eq v2, v9, :cond_4

    .line 108
    .line 109
    if-ne v1, v7, :cond_3

    .line 110
    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    const-string v14, "DirEncryptService"

    .line 116
    .line 117
    const-string v15, "Encrypting storage card failed"

    .line 118
    .line 119
    const/4 v11, 0x1

    .line 120
    const/4 v12, 0x0

    .line 121
    const/4 v10, 0x1

    .line 122
    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const-string v4, "DirEncryptService"

    .line 131
    .line 132
    const-string v5, "Decrypting storage card failed"

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    const/4 v2, 0x0

    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return v8

    .line 141
    :cond_4
    if-ne v2, v6, :cond_5

    .line 142
    .line 143
    if-eq v1, v7, :cond_5

    .line 144
    .line 145
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    const-string v13, "DirEncryptService"

    .line 150
    .line 151
    const-string v14, "Decrypting storage card failed"

    .line 152
    .line 153
    const/4 v10, 0x1

    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v9, 0x1

    .line 156
    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v8

    .line 160
    :cond_5
    const/4 v2, 0x6

    .line 161
    if-eq v3, v2, :cond_7

    .line 162
    .line 163
    const/4 v2, 0x7

    .line 164
    if-eq v3, v2, :cond_7

    .line 165
    .line 166
    if-ne v1, v7, :cond_6

    .line 167
    .line 168
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    const-string v13, "DirEncryptService"

    .line 173
    .line 174
    const-string v14, "Encrypting storage card failed"

    .line 175
    .line 176
    const/4 v10, 0x1

    .line 177
    const/4 v11, 0x0

    .line 178
    const/4 v9, 0x1

    .line 179
    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const-string v4, "DirEncryptService"

    .line 188
    .line 189
    const-string v5, "Decrypting storage card failed"

    .line 190
    .line 191
    const/4 v1, 0x1

    .line 192
    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x1

    .line 194
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    return v8

    .line 198
    :cond_7
    iget-object v1, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 199
    .line 200
    monitor-enter v1

    .line 201
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-virtual {v0, v2}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 214
    .line 215
    .line 216
    move-result-wide v6

    .line 217
    iget-object v9, v0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    const-string/jumbo v10, "device_policy"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 227
    .line 228
    const/4 v10, 0x0

    .line 229
    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    const-string v10, "DirEncryptService"

    .line 234
    .line 235
    new-instance v11, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v5, v0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 241
    .line 242
    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iget-object v5, v0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 257
    .line 258
    iget v5, v5, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 259
    .line 260
    if-eqz v5, :cond_8

    .line 261
    .line 262
    const-string v0, "DirEncryptService"

    .line 263
    .line 264
    const-string v2, "Cannot save the policy if SD card is being encrypted/decrypted"

    .line 265
    .line 266
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    .line 271
    .line 272
    monitor-exit v1

    .line 273
    const/16 v0, 0xf

    .line 274
    .line 275
    return v0

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    goto :goto_5

    .line 278
    :cond_8
    const-string v5, "DirEncryptService"

    .line 279
    .line 280
    new-instance v10, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v3}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_b

    .line 300
    .line 301
    const-string/jumbo v0, "user"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    const/16 v2, 0x8

    .line 309
    .line 310
    if-eqz v0, :cond_9

    .line 311
    .line 312
    :goto_3
    move v8, v2

    .line 313
    goto :goto_4

    .line 314
    :cond_9
    const/4 v0, 0x1

    .line 315
    if-ne v9, v0, :cond_a

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    const-string v0, "DirEncryptService"

    .line 319
    .line 320
    const-string v2, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    .line 321
    .line 322
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_b
    const-string v0, "DirEncryptService"

    .line 327
    .line 328
    const-string/jumbo v2, "setStorageCardEncryptionPolicy error: invalid uid"

    .line 329
    .line 330
    .line 331
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    const/16 v8, 0x9

    .line 335
    .line 336
    :goto_4
    invoke-static {}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 337
    .line 338
    .line 339
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    .line 341
    .line 342
    monitor-exit v1

    .line 343
    return v8

    .line 344
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    throw v0
.end method

.method public final systemReady()V
    .locals 5

    .line 1
    const-string v0, "DirEncryptService"

    .line 2
    .line 3
    const-string v1, "Calling systemReady"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Lcom/android/server/DirEncryptService$2;

    .line 26
    .line 27
    new-instance v3, Landroid/content/IntentFilter;

    .line 28
    .line 29
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 30
    .line 31
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 62
    .line 63
    iput-object v1, v2, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "HandlerThread exception = "

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :goto_0
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    const-string v0, "DirEncryptServiceHelper"

    .line 99
    .line 100
    if-nez p0, :cond_1

    .line 101
    .line 102
    const-string p0, "RegisterStorageEventListner fail"

    .line 103
    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const-string p0, "RegisterStorageEventListner success"

    .line 109
    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method public final unmountSDCardByAdmin()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "SD card  : State = "

    .line 12
    .line 13
    const-string v2, " / Admin policy : "

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " / Encrypted : "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "DirEncryptServiceHelper"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v1, v3, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    const-string/jumbo v1, "mounted"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const-string v0, "Unmount SD Card By Admin"

    .line 70
    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 75
    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
