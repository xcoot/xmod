.class public final Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final cLock:Ljava/lang/Object;

.field public static mLogQ:Ljava/util/Queue;

.field public static mSavQ:Ljava/util/Queue;

.field public static mState:I

.field public static final qLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 8
    .line 9
    check-cast v0, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x12c

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    const-string v1, "Log buffer reached the limit! Clearing the buffer..."

    .line 20
    .line 21
    sget-boolean v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 22
    .line 23
    const-string v2, "SDPLogger"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 29
    .line 30
    .line 31
    const-string v1, "ACLog: Unfortunately buffer cleared to prevent overflow!"

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 41
    .line 42
    check-cast v0, Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    sput v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    :goto_0
    const-string p0, "Start accumulating..."

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "SDPLogger"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    const-wide/16 v1, 0xbb8

    .line 13
    .line 14
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    .line 17
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_1
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 21
    .line 22
    sput-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 23
    .line 24
    new-instance v1, Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 30
    .line 31
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 32
    const-string p0, "Start saving..."

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "SDPLogger"

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    const/4 p0, 0x2

    .line 45
    :try_start_2
    sput p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    .line 46
    .line 47
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 48
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    .line 51
    .line 52
    const-string v0, "/data/log/sdp_log"

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Saving logs... [QS : "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, "]"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    const-string v3, "SDPLogFile"

    .line 80
    .line 81
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string v1, "Target path : /data/log/sdp_log"

    .line 85
    .line 86
    sget-boolean v3, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    const-string v3, "SDPLogFile"

    .line 91
    .line 92
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_3
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 96
    .line 97
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 100
    .line 101
    .line 102
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 103
    .line 104
    const-string/jumbo v3, "rwd"

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 108
    .line 109
    .line 110
    :try_start_4
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->checkAndReset(Ljava/io/RandomAccessFile;)V

    .line 111
    .line 112
    .line 113
    const-wide/16 v3, 0x0

    .line 114
    .line 115
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_6

    .line 130
    .line 131
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/lang/String;

    .line 136
    .line 137
    if-nez v7, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    const-string v8, "UTF-8"

    .line 141
    .line 142
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    array-length v8, v7

    .line 151
    int-to-long v8, v8

    .line 152
    add-long/2addr v5, v8

    .line 153
    const-wide/16 v8, 0x1

    .line 154
    .line 155
    add-long/2addr v5, v8

    .line 156
    const-wide/32 v8, 0x200000

    .line 157
    .line 158
    .line 159
    cmp-long v5, v5, v8

    .line 160
    .line 161
    if-lez v5, :cond_5

    .line 162
    .line 163
    const-wide/16 v5, 0x11

    .line 164
    .line 165
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    :goto_2
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 172
    .line 173
    .line 174
    const/16 v5, 0xa

    .line 175
    .line 176
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    goto :goto_1

    .line 184
    :cond_6
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 188
    .line 189
    .line 190
    const/16 p0, 0x3ef

    .line 191
    .line 192
    const/16 v3, 0x1a0

    .line 193
    .line 194
    const/16 v4, 0x3e8

    .line 195
    .line 196
    invoke-static {v0, v3, v4, p0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v3, "Set permission : "

    .line 203
    .line 204
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-eqz p0, :cond_7

    .line 215
    .line 216
    const-string v0, "SDPLogFile"

    .line 217
    .line 218
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_7
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 224
    .line 225
    .line 226
    move-result-wide v3

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v0, "Saving success! [FP : "

    .line 233
    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, ", FS : "

    .line 241
    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    if-eqz p0, :cond_8

    .line 256
    .line 257
    const-string v0, "SDPLogFile"

    .line 258
    .line 259
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    .line 261
    .line 262
    :cond_8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :catch_0
    move-exception p0

    .line 267
    goto :goto_5

    .line 268
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 277
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v1, "Failed to save logs : "

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-eqz v0, :cond_9

    .line 296
    .line 297
    const-string v1, "SDPLogFile"

    .line 298
    .line 299
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .line 304
    .line 305
    :goto_6
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 306
    .line 307
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 308
    .line 309
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    .line 311
    .line 312
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 313
    .line 314
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    .line 315
    .line 316
    .line 317
    const/4 p0, 0x0

    .line 318
    sput-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 319
    .line 320
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    .line 321
    .line 322
    monitor-enter p0

    .line 323
    :try_start_8
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    .line 324
    .line 325
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 326
    :try_start_9
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 327
    .line 328
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_b

    .line 333
    .line 334
    const-string v1, "Back to accumulate!"

    .line 335
    .line 336
    sget-boolean v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 337
    .line 338
    if-eqz v2, :cond_a

    .line 339
    .line 340
    const-string v2, "SDPLogger"

    .line 341
    .line 342
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    :cond_a
    const/4 v1, 0x1

    .line 346
    sput v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    .line 347
    .line 348
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 349
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :catchall_2
    move-exception v0

    .line 353
    goto :goto_8

    .line 354
    :catchall_3
    move-exception v1

    .line 355
    goto :goto_7

    .line 356
    :cond_b
    :try_start_b
    const-string v1, "Finished!"

    .line 357
    .line 358
    sget-boolean v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 359
    .line 360
    if-eqz v2, :cond_c

    .line 361
    .line 362
    const-string v2, "SDPLogger"

    .line 363
    .line 364
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    :cond_c
    const/4 v1, 0x0

    .line 368
    sput v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    .line 369
    .line 370
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 371
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 372
    return-void

    .line 373
    :goto_7
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 374
    :try_start_e
    throw v1

    .line 375
    :goto_8
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 376
    throw v0

    .line 377
    :catchall_4
    move-exception p0

    .line 378
    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 379
    throw p0

    .line 380
    :catchall_5
    move-exception v0

    .line 381
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 382
    throw v0

    .line 383
    :catch_1
    const-string p0, "Logger interrupted!"

    .line 384
    .line 385
    const-string v0, "SDPLogger"

    .line 386
    .line 387
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    return-void
.end method
