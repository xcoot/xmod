.class public final Lcom/android/server/os/NativeTombstoneManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TOMBSTONE_DIR:Ljava/io/File;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mTombstones:Landroid/util/SparseArray;

.field public final mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/tombstones"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const-string v2, "NativeTombstoneManager:tombstoneWatcher"

    .line 33
    .line 34
    invoke-direct {p1, v0, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance p1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final collectTombstones(Ljava/util/ArrayList;III)V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-instance p2, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    move-object v0, p2

    .line 24
    move-object v1, p0

    .line 25
    move v4, p3

    .line 26
    move-object v5, p1

    .line 27
    move v6, p4

    .line 28
    move-object v7, v8

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final handleTombstone(Ljava/io/File;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v3, ".tmp"

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object v2, v0

    .line 33
    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v2

    .line 39
    :cond_0
    const-string/jumbo v3, "tombstone_"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const-string v3, "UNKNOWN"

    .line 50
    .line 51
    const-string v4, ".pb"

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    move-object v5, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, ".pb"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v5, v0

    .line 88
    :goto_0
    const-string/jumbo v0, "unexpected tombstone name: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string v7, ".pb"

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_3

    .line 102
    .line 103
    const-string v0, "NativeTombstoneManager"

    .line 104
    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string/jumbo v7, "unexpected tombstone name: "

    .line 108
    .line 109
    .line 110
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v15, v3

    .line 128
    goto/16 :goto_b

    .line 129
    .line 130
    :cond_3
    const/16 v7, 0xa

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const/4 v7, 0x3

    .line 137
    const/4 v8, 0x0

    .line 138
    invoke-static {v7, v8, v6}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 146
    if-ltz v6, :cond_4

    .line 147
    .line 148
    const/16 v7, 0x63

    .line 149
    .line 150
    if-le v6, v7, :cond_5

    .line 151
    .line 152
    :cond_4
    move-object v15, v3

    .line 153
    goto/16 :goto_a

    .line 154
    .line 155
    :cond_5
    const/high16 v0, 0x30000000

    .line 156
    .line 157
    :try_start_2
    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 158
    .line 159
    .line 160
    move-result-object v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    const-string v7, "NativeTombstoneManager"

    .line 162
    .line 163
    new-instance v0, Ljava/io/FileInputStream;

    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 170
    .line 171
    .line 172
    new-instance v9, Landroid/util/proto/ProtoInputStream;

    .line 173
    .line 174
    invoke-direct {v9, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 175
    .line 176
    .line 177
    const-string v10, ""

    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    move v11, v8

    .line 181
    move v12, v11

    .line 182
    move-object v13, v10

    .line 183
    move-object v14, v13

    .line 184
    move-object v8, v0

    .line 185
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const/4 v15, -0x1

    .line 190
    if-eq v0, v15, :cond_f

    .line 191
    .line 192
    invoke-virtual {v9}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 193
    .line 194
    .line 195
    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/util/proto/ProtoParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    const/4 v15, 0x5

    .line 197
    if-eq v0, v15, :cond_e

    .line 198
    .line 199
    const/16 v15, 0xf

    .line 200
    .line 201
    if-eq v0, v15, :cond_a

    .line 202
    .line 203
    const/4 v15, 0x7

    .line 204
    if-eq v0, v15, :cond_9

    .line 205
    .line 206
    const/16 v15, 0x8

    .line 207
    .line 208
    if-eq v0, v15, :cond_8

    .line 209
    .line 210
    const/16 v15, 0x9

    .line 211
    .line 212
    if-eq v0, v15, :cond_7

    .line 213
    .line 214
    :cond_6
    move-object v15, v3

    .line 215
    goto :goto_3

    .line 216
    :cond_7
    if-nez v8, :cond_6

    .line 217
    .line 218
    move-object v15, v3

    .line 219
    const-wide v2, 0x20900000009L

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    :try_start_4
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    :goto_2
    move-object/from16 v2, p1

    .line 229
    .line 230
    move-object v3, v15

    .line 231
    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    goto/16 :goto_8

    .line 234
    .line 235
    :cond_8
    move-object v15, v3

    .line 236
    const-wide v2, 0x10900000008L

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    goto :goto_2

    .line 246
    :cond_9
    move-object v15, v3

    .line 247
    const-wide v2, 0x10d00000007L

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    goto :goto_2

    .line 257
    :cond_a
    move-object v15, v3

    .line 258
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_b

    .line 263
    .line 264
    :goto_3
    goto :goto_2

    .line 265
    :cond_b
    const-wide v2, 0x20b0000000fL

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    :goto_4
    invoke-virtual {v9}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    move-object/from16 v16, v10

    .line 279
    .line 280
    const/4 v10, -0x1

    .line 281
    if-eq v0, v10, :cond_d

    .line 282
    .line 283
    invoke-virtual {v9}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const/4 v10, 0x1

    .line 288
    if-eq v0, v10, :cond_c

    .line 289
    .line 290
    move-object/from16 v10, v16

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_c
    const-wide v0, 0x10900000001L

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    move-object v13, v0

    .line 303
    :cond_d
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 304
    .line 305
    .line 306
    :goto_5
    move-object/from16 v1, p0

    .line 307
    .line 308
    move-object/from16 v2, p1

    .line 309
    .line 310
    move-object v3, v15

    .line 311
    move-object/from16 v10, v16

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_e
    move-object v15, v3

    .line 316
    move-object/from16 v16, v10

    .line 317
    .line 318
    const-wide v0, 0x10d00000005L

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 324
    .line 325
    .line 326
    move-result v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/proto/ProtoParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 327
    goto :goto_5

    .line 328
    :catch_1
    move-exception v0

    .line 329
    move-object v15, v3

    .line 330
    goto/16 :goto_8

    .line 331
    .line 332
    :cond_f
    move-object v15, v3

    .line 333
    move-object/from16 v16, v10

    .line 334
    .line 335
    invoke-static {v11}, Landroid/os/UserHandle;->isApp(I)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-nez v0, :cond_10

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v1, "Tombstone\'s UID ("

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v1, ") not an app, ignoring"

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    goto/16 :goto_9

    .line 368
    .line 369
    :cond_10
    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iget-object v0, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    .line 378
    .line 379
    iget-wide v1, v0, Landroid/system/StructTimespec;->tv_sec:J

    .line 380
    .line 381
    const-wide/16 v9, 0x3e8

    .line 382
    .line 383
    mul-long/2addr v1, v9

    .line 384
    iget-wide v9, v0, Landroid/system/StructTimespec;->tv_nsec:J

    .line 385
    .line 386
    const-wide/32 v17, 0xf4240

    .line 387
    .line 388
    .line 389
    div-long v9, v9, v17
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2

    .line 390
    .line 391
    add-long/2addr v1, v9

    .line 392
    goto :goto_6

    .line 393
    :catch_2
    move-exception v0

    .line 394
    const-string v1, "Failed to get timestamp of tombstone"

    .line 395
    .line 396
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .line 398
    .line 399
    const-wide/16 v1, 0x0

    .line 400
    .line 401
    :goto_6
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    const-string/jumbo v9, "u:r:untrusted_app"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    if-nez v9, :cond_11

    .line 417
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    const-string v1, "Tombstone has invalid selinux label ("

    .line 421
    .line 422
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v1, "), ignoring"

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    goto :goto_9

    .line 445
    :cond_11
    new-instance v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 446
    .line 447
    invoke-direct {v7, v5}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 448
    .line 449
    .line 450
    iput v0, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    .line 451
    .line 452
    iput v3, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    .line 453
    .line 454
    iput v12, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 455
    .line 456
    iput v11, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 457
    .line 458
    if-nez v8, :cond_12

    .line 459
    .line 460
    move-object/from16 v10, v16

    .line 461
    .line 462
    goto :goto_7

    .line 463
    :cond_12
    move-object v10, v8

    .line 464
    :goto_7
    iput-object v10, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    .line 465
    .line 466
    iput-wide v1, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    .line 467
    .line 468
    iput-object v13, v7, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    .line 469
    .line 470
    invoke-static {v7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    goto :goto_9

    .line 475
    :goto_8
    const-string v1, "Failed to parse tombstone"

    .line 476
    .line 477
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .line 479
    .line 480
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    :goto_9
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_13

    .line 489
    .line 490
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    move-object/from16 v1, p0

    .line 498
    .line 499
    goto/16 :goto_b

    .line 500
    .line 501
    :cond_13
    move-object/from16 v1, p0

    .line 502
    .line 503
    if-eqz v4, :cond_15

    .line 504
    .line 505
    iget-object v2, v1, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 506
    .line 507
    monitor-enter v2

    .line 508
    :try_start_6
    iget-object v3, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 509
    .line 510
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    check-cast v3, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 515
    .line 516
    if-eqz v3, :cond_14

    .line 517
    .line 518
    iget-object v3, v3, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 519
    .line 520
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    .line 522
    .line 523
    :cond_14
    iget-object v3, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 530
    .line 531
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    monitor-exit v2

    .line 535
    goto :goto_b

    .line 536
    :catchall_1
    move-exception v0

    .line 537
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 538
    throw v0

    .line 539
    :catch_3
    move-exception v0

    .line 540
    move-object v15, v3

    .line 541
    move-object v2, v0

    .line 542
    const-string v0, "NativeTombstoneManager"

    .line 543
    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    const-string v6, "failed to open "

    .line 547
    .line 548
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .line 560
    .line 561
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    goto :goto_b

    .line 566
    :goto_a
    :try_start_7
    const-string v2, "NativeTombstoneManager"

    .line 567
    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 584
    .line 585
    .line 586
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    .line 587
    goto :goto_b

    .line 588
    :catch_4
    move-object v15, v3

    .line 589
    :catch_5
    const-string v0, "NativeTombstoneManager"

    .line 590
    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    const-string/jumbo v3, "unexpected tombstone name: "

    .line 594
    .line 595
    .line 596
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    :cond_15
    :goto_b
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-eqz v2, :cond_16

    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    check-cast v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 624
    .line 625
    iget-object v3, v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    .line 626
    .line 627
    goto :goto_c

    .line 628
    :cond_16
    move-object v3, v15

    .line 629
    :goto_c
    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 630
    .line 631
    iget-object v2, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 632
    .line 633
    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 634
    .line 635
    const-class v5, Landroid/os/DropBoxManager;

    .line 636
    .line 637
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    move-object v5, v0

    .line 642
    check-cast v5, Landroid/os/DropBoxManager;

    .line 643
    .line 644
    const-string v12, "BootReceiver"

    .line 645
    .line 646
    if-nez v5, :cond_17

    .line 647
    .line 648
    const-string v0, "Can\'t log tombstone: DropBoxManager not available"

    .line 649
    .line 650
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    goto/16 :goto_10

    .line 654
    .line 655
    :cond_17
    sget-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 656
    .line 657
    if-eqz v4, :cond_18

    .line 658
    .line 659
    const-string v6, "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS"

    .line 660
    .line 661
    goto :goto_d

    .line 662
    :cond_18
    const-string v6, "SYSTEM_TOMBSTONE"

    .line 663
    .line 664
    :goto_d
    invoke-virtual {v0, v6, v3}, Lcom/android/server/am/DropboxRateLimiter;->shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    iget-boolean v3, v0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mShouldRateLimit:Z

    .line 669
    .line 670
    if-eqz v3, :cond_19

    .line 671
    .line 672
    goto :goto_10

    .line 673
    :cond_19
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    if-eqz v4, :cond_1a

    .line 678
    .line 679
    move-object/from16 v4, p1

    .line 680
    .line 681
    :try_start_8
    invoke-static {v4, v3}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    if-eqz v6, :cond_1b

    .line 686
    .line 687
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 688
    .line 689
    .line 690
    :try_start_9
    invoke-static {v4, v5, v0}, Lcom/android/server/BootReceiver;->addAugmentedProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 691
    .line 692
    .line 693
    :try_start_a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 694
    .line 695
    .line 696
    goto :goto_f

    .line 697
    :catch_6
    move-exception v0

    .line 698
    goto :goto_e

    .line 699
    :catchall_2
    move-exception v0

    .line 700
    move-object v4, v0

    .line 701
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 702
    .line 703
    .line 704
    throw v4

    .line 705
    :cond_1a
    move-object/from16 v4, p1

    .line 706
    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v6

    .line 716
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    const-string v7, "Dropped-Count: "

    .line 722
    .line 723
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    iget v0, v0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    .line 727
    .line 728
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v0, "\n"

    .line 732
    .line 733
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v9

    .line 751
    sget v10, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 752
    .line 753
    const-string v11, "SYSTEM_TOMBSTONE"

    .line 754
    .line 755
    const-string v8, ""

    .line 756
    .line 757
    move-object v6, v3

    .line 758
    invoke-static/range {v5 .. v11}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 759
    .line 760
    .line 761
    goto :goto_f

    .line 762
    :goto_e
    const-string v2, "Can\'t log tombstone"

    .line 763
    .line 764
    invoke-static {v12, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .line 766
    .line 767
    :cond_1b
    :goto_f
    invoke-static {v3}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    .line 768
    .line 769
    .line 770
    :goto_10
    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 771
    .line 772
    invoke-static {v0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    return-void
.end method
