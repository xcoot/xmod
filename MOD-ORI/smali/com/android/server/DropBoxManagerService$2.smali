.class public final Lcom/android/server/DropBoxManagerService$2;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addData(Ljava/lang/String;[BI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    array-length p0, p2

    .line 12
    int-to-long v3, p0

    .line 13
    move-object v1, p1

    .line 14
    move v5, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget v1, p0, Landroid/system/StructStat;->st_mode:I

    .line 15
    .line 16
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 23
    .line 24
    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 25
    .line 26
    .line 27
    iget-wide v3, p0, Landroid/system/StructStat;->st_size:J

    .line 28
    .line 29
    move-object v1, p1

    .line 30
    move v5, p3

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " entry must be real file"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 8
    .line 9
    const-string v4, "Can\'t initialize: "

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v5, "DropBoxManagerService"

    .line 17
    .line 18
    invoke-static {v0, v5, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    monitor-exit v3

    .line 25
    goto/16 :goto_18

    .line 26
    .line 27
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/DropBoxManagerService;->init$1()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_0
    const/4 v10, 0x1

    .line 45
    if-eqz v2, :cond_9

    .line 46
    .line 47
    array-length v11, v2

    .line 48
    if-ge v0, v11, :cond_9

    .line 49
    .line 50
    aget-object v11, v2, v0

    .line 51
    .line 52
    const-string v12, "-p"

    .line 53
    .line 54
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_8

    .line 59
    .line 60
    aget-object v11, v2, v0

    .line 61
    .line 62
    const-string v12, "--print"

    .line 63
    .line 64
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-eqz v11, :cond_1

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_1
    aget-object v11, v2, v0

    .line 73
    .line 74
    const-string v12, "-f"

    .line 75
    .line 76
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    if-nez v11, :cond_7

    .line 81
    .line 82
    aget-object v11, v2, v0

    .line 83
    .line 84
    const-string v12, "--file"

    .line 85
    .line 86
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    aget-object v11, v2, v0

    .line 94
    .line 95
    const-string v12, "--proto"

    .line 96
    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_3

    .line 102
    .line 103
    move v7, v10

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    aget-object v10, v2, v0

    .line 106
    .line 107
    const-string v11, "-h"

    .line 108
    .line 109
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-nez v10, :cond_6

    .line 114
    .line 115
    aget-object v10, v2, v0

    .line 116
    .line 117
    const-string v11, "--help"

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    aget-object v10, v2, v0

    .line 127
    .line 128
    const-string v11, "-"

    .line 129
    .line 130
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-eqz v10, :cond_5

    .line 135
    .line 136
    const-string v10, "Unknown argument: "

    .line 137
    .line 138
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    aget-object v10, v2, v0

    .line 142
    .line 143
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v10, "\n"

    .line 147
    .line 148
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto/16 :goto_19

    .line 154
    .line 155
    :cond_5
    aget-object v10, v2, v0

    .line 156
    .line 157
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    :goto_1
    const-string v0, "Dropbox (dropbox) dump options:"

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "    -h|--help: print this help"

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "    -p|--print: print full contents of each entry"

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v0, "    -f|--file: print path of each entry\'s file"

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "    --proto: dump data to proto"

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v0, "  [timestamp] optionally filters to only those entries."

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .line 195
    .line 196
    monitor-exit v3

    .line 197
    goto/16 :goto_18

    .line 198
    .line 199
    :cond_7
    :goto_2
    move v9, v10

    .line 200
    goto :goto_4

    .line 201
    :cond_8
    :goto_3
    move v8, v10

    .line 202
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_9
    if-eqz v7, :cond_a

    .line 207
    .line 208
    move-object/from16 v0, p1

    .line 209
    .line 210
    :try_start_3
    invoke-virtual {v3, v0, v5}, Lcom/android/server/DropBoxManagerService;->dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    .line 212
    .line 213
    monitor-exit v3

    .line 214
    goto/16 :goto_18

    .line 215
    .line 216
    :cond_a
    :try_start_4
    const-string v0, "Drop box contents: "

    .line 217
    .line 218
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v0, v3, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v0, " entries\n"

    .line 233
    .line 234
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v0, "Max entries: "

    .line 238
    .line 239
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v0, v3, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 243
    .line 244
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v0, "\n"

    .line 248
    .line 249
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v0, "Low priority rate limit period: "

    .line 253
    .line 254
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-wide v11, v3, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 258
    .line 259
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v0, " ms\n"

    .line 263
    .line 264
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v0, "Low priority tags: "

    .line 268
    .line 269
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v0, v3, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 273
    .line 274
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v0, "\n"

    .line 278
    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_c

    .line 287
    .line 288
    const-string v0, "Searching for:"

    .line 289
    .line 290
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_b

    .line 302
    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    check-cast v7, Ljava/lang/String;

    .line 308
    .line 309
    const-string v11, " "

    .line 310
    .line 311
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_b
    const-string v0, "\n"

    .line 319
    .line 320
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    :cond_c
    const-string v0, "\n"

    .line 324
    .line 325
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v0, v3, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 329
    .line 330
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    const/4 v0, 0x0

    .line 337
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    if-eqz v11, :cond_26

    .line 342
    .line 343
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 348
    .line 349
    invoke-static {v11, v5}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    if-nez v12, :cond_d

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_d
    add-int/lit8 v12, v0, 0x1

    .line 357
    .line 358
    if-eqz v8, :cond_e

    .line 359
    .line 360
    const-string v0, "========================================\n"

    .line 361
    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    :cond_e
    iget-wide v13, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 366
    .line 367
    invoke-static {v13, v14}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v0, " "

    .line 375
    .line 376
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 380
    .line 381
    if-nez v0, :cond_f

    .line 382
    .line 383
    const-string v0, "(no tag)"

    .line 384
    .line 385
    :cond_f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget-object v0, v3, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 389
    .line 390
    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    .line 391
    .line 392
    .line 393
    move-result-object v15

    .line 394
    if-nez v15, :cond_10

    .line 395
    .line 396
    const-string v0, " (no file)\n"

    .line 397
    .line 398
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    :goto_7
    move-object/from16 p1, v7

    .line 402
    .line 403
    const/4 v13, 0x0

    .line 404
    goto/16 :goto_17

    .line 405
    .line 406
    :cond_10
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 407
    .line 408
    and-int/2addr v0, v10

    .line 409
    if-eqz v0, :cond_11

    .line 410
    .line 411
    const-string v0, " (contents lost)\n"

    .line 412
    .line 413
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_11
    const-string v0, " ("

    .line 418
    .line 419
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 423
    .line 424
    and-int/lit8 v0, v0, 0x4

    .line 425
    .line 426
    if-eqz v0, :cond_12

    .line 427
    .line 428
    const-string/jumbo v0, "compressed "

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    :cond_12
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 435
    .line 436
    and-int/lit8 v0, v0, 0x2

    .line 437
    .line 438
    if-eqz v0, :cond_13

    .line 439
    .line 440
    const-string/jumbo v0, "text"

    .line 441
    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_13
    const-string/jumbo v0, "data"

    .line 445
    .line 446
    .line 447
    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v0, ", "

    .line 451
    .line 452
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v15}, Ljava/io/File;->length()J

    .line 456
    .line 457
    .line 458
    move-result-wide v13

    .line 459
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v0, " bytes)\n"

    .line 463
    .line 464
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    if-nez v9, :cond_14

    .line 468
    .line 469
    if-eqz v8, :cond_16

    .line 470
    .line 471
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 472
    .line 473
    and-int/lit8 v0, v0, 0x2

    .line 474
    .line 475
    if-nez v0, :cond_16

    .line 476
    .line 477
    :cond_14
    if-nez v8, :cond_15

    .line 478
    .line 479
    const-string v0, "    "

    .line 480
    .line 481
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    :cond_15
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v0, "\n"

    .line 492
    .line 493
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    :cond_16
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 497
    .line 498
    and-int/lit8 v0, v0, 0x2

    .line 499
    .line 500
    if-eqz v0, :cond_17

    .line 501
    .line 502
    if-nez v8, :cond_18

    .line 503
    .line 504
    if-nez v9, :cond_17

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :cond_17
    move-object/from16 p1, v7

    .line 508
    .line 509
    const/4 v13, 0x0

    .line 510
    goto/16 :goto_16

    .line 511
    .line 512
    :cond_18
    :goto_9
    const/16 v19, 0x0

    .line 513
    .line 514
    :try_start_5
    new-instance v14, Landroid/os/DropBoxManager$Entry;

    .line 515
    .line 516
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 517
    .line 518
    move-object/from16 p1, v7

    .line 519
    .line 520
    :try_start_6
    iget-wide v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 521
    .line 522
    iget v11, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 523
    .line 524
    move-object v13, v14

    .line 525
    move-object/from16 v20, v14

    .line 526
    .line 527
    move-object v14, v0

    .line 528
    move-object/from16 v21, v15

    .line 529
    .line 530
    move-wide v15, v6

    .line 531
    move-object/from16 v17, v21

    .line 532
    .line 533
    move/from16 v18, v11

    .line 534
    .line 535
    :try_start_7
    invoke-direct/range {v13 .. v18}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 536
    .line 537
    .line 538
    const/16 v0, 0xa

    .line 539
    .line 540
    if-eqz v8, :cond_1d

    .line 541
    .line 542
    :try_start_8
    new-instance v6, Ljava/io/InputStreamReader;

    .line 543
    .line 544
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    .line 545
    .line 546
    .line 547
    move-result-object v7

    .line 548
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 549
    .line 550
    .line 551
    const/16 v7, 0x1000

    .line 552
    .line 553
    :try_start_9
    new-array v7, v7, [C

    .line 554
    .line 555
    const/4 v11, 0x0

    .line 556
    :goto_a
    invoke-virtual {v6, v7}, Ljava/io/InputStreamReader;->read([C)I

    .line 557
    .line 558
    .line 559
    move-result v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 560
    if-gtz v13, :cond_1a

    .line 561
    .line 562
    if-nez v11, :cond_19

    .line 563
    .line 564
    :try_start_a
    const-string v0, "\n"

    .line 565
    .line 566
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 567
    .line 568
    .line 569
    goto :goto_c

    .line 570
    :catchall_1
    move-exception v0

    .line 571
    :goto_b
    move-object/from16 v19, v20

    .line 572
    .line 573
    goto/16 :goto_15

    .line 574
    .line 575
    :catch_0
    move-exception v0

    .line 576
    move-object/from16 v19, v20

    .line 577
    .line 578
    const/4 v13, 0x0

    .line 579
    goto/16 :goto_14

    .line 580
    .line 581
    :cond_19
    :goto_c
    move-object/from16 v19, v6

    .line 582
    .line 583
    move-object/from16 v7, v20

    .line 584
    .line 585
    const/4 v13, 0x0

    .line 586
    goto/16 :goto_11

    .line 587
    .line 588
    :cond_1a
    const/4 v11, 0x0

    .line 589
    :try_start_b
    invoke-virtual {v4, v7, v11, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 590
    .line 591
    .line 592
    add-int/lit8 v13, v13, -0x1

    .line 593
    .line 594
    :try_start_c
    aget-char v11, v7, v13

    .line 595
    .line 596
    if-ne v11, v0, :cond_1b

    .line 597
    .line 598
    move v11, v10

    .line 599
    goto :goto_d

    .line 600
    :cond_1b
    const/4 v11, 0x0

    .line 601
    :goto_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 602
    .line 603
    .line 604
    move-result v13

    .line 605
    const/high16 v14, 0x10000

    .line 606
    .line 607
    if-le v13, v14, :cond_1c

    .line 608
    .line 609
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v13

    .line 613
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 614
    .line 615
    .line 616
    const/4 v13, 0x0

    .line 617
    :try_start_d
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 618
    .line 619
    .line 620
    goto :goto_a

    .line 621
    :catch_1
    move-exception v0

    .line 622
    :goto_e
    move-object/from16 v19, v20

    .line 623
    .line 624
    goto/16 :goto_14

    .line 625
    .line 626
    :catch_2
    move-exception v0

    .line 627
    const/4 v13, 0x0

    .line 628
    goto :goto_e

    .line 629
    :cond_1c
    const/4 v13, 0x0

    .line 630
    goto :goto_a

    .line 631
    :catch_3
    move-exception v0

    .line 632
    move v13, v11

    .line 633
    goto :goto_e

    .line 634
    :catchall_2
    move-exception v0

    .line 635
    move-object/from16 v6, v19

    .line 636
    .line 637
    goto :goto_b

    .line 638
    :catch_4
    move-exception v0

    .line 639
    const/4 v13, 0x0

    .line 640
    move-object/from16 v6, v19

    .line 641
    .line 642
    goto :goto_e

    .line 643
    :cond_1d
    const/4 v13, 0x0

    .line 644
    const/16 v6, 0x46

    .line 645
    .line 646
    move-object/from16 v7, v20

    .line 647
    .line 648
    :try_start_e
    invoke-virtual {v7, v6}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    const-string v14, "    "

    .line 653
    .line 654
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    if-nez v11, :cond_1e

    .line 658
    .line 659
    const-string v0, "[null]"

    .line 660
    .line 661
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    goto :goto_10

    .line 665
    :catchall_3
    move-exception v0

    .line 666
    move-object/from16 v6, v19

    .line 667
    .line 668
    move-object/from16 v19, v7

    .line 669
    .line 670
    goto/16 :goto_15

    .line 671
    .line 672
    :catch_5
    move-exception v0

    .line 673
    move-object/from16 v6, v19

    .line 674
    .line 675
    move-object/from16 v19, v7

    .line 676
    .line 677
    goto :goto_14

    .line 678
    :cond_1e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 679
    .line 680
    .line 681
    move-result v14

    .line 682
    if-ne v14, v6, :cond_1f

    .line 683
    .line 684
    move v6, v10

    .line 685
    goto :goto_f

    .line 686
    :cond_1f
    move v6, v13

    .line 687
    :goto_f
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v11

    .line 691
    const/16 v14, 0x2f

    .line 692
    .line 693
    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    if-eqz v6, :cond_20

    .line 701
    .line 702
    const-string v0, " ..."

    .line 703
    .line 704
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    :cond_20
    :goto_10
    const-string v0, "\n"

    .line 708
    .line 709
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 710
    .line 711
    .line 712
    :goto_11
    :try_start_f
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 713
    .line 714
    .line 715
    if-eqz v19, :cond_24

    .line 716
    .line 717
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 718
    .line 719
    .line 720
    goto :goto_16

    .line 721
    :catchall_4
    move-exception v0

    .line 722
    move-object/from16 v6, v19

    .line 723
    .line 724
    goto :goto_15

    .line 725
    :catch_6
    move-exception v0

    .line 726
    :goto_12
    const/4 v13, 0x0

    .line 727
    move-object/from16 v6, v19

    .line 728
    .line 729
    goto :goto_14

    .line 730
    :catch_7
    move-exception v0

    .line 731
    :goto_13
    move-object/from16 v21, v15

    .line 732
    .line 733
    goto :goto_12

    .line 734
    :catch_8
    move-exception v0

    .line 735
    move-object/from16 p1, v7

    .line 736
    .line 737
    goto :goto_13

    .line 738
    :goto_14
    :try_start_11
    const-string v7, "*** "

    .line 739
    .line 740
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v7, "\n"

    .line 751
    .line 752
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    const-string v7, "DropBoxManagerService"

    .line 756
    .line 757
    new-instance v11, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .line 761
    .line 762
    const-string v14, "Can\'t read: "

    .line 763
    .line 764
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    move-object/from16 v14, v21

    .line 768
    .line 769
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v11

    .line 776
    invoke-static {v7, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 777
    .line 778
    .line 779
    if-eqz v19, :cond_21

    .line 780
    .line 781
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 782
    .line 783
    .line 784
    :cond_21
    if-eqz v6, :cond_24

    .line 785
    .line 786
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 787
    .line 788
    .line 789
    goto :goto_16

    .line 790
    :catchall_5
    move-exception v0

    .line 791
    :goto_15
    if-eqz v19, :cond_22

    .line 792
    .line 793
    :try_start_14
    invoke-virtual/range {v19 .. v19}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 794
    .line 795
    .line 796
    :cond_22
    if-eqz v6, :cond_23

    .line 797
    .line 798
    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 799
    .line 800
    .line 801
    :catch_9
    :cond_23
    :try_start_16
    throw v0

    .line 802
    :catch_a
    :cond_24
    :goto_16
    if-eqz v8, :cond_25

    .line 803
    .line 804
    const-string v0, "\n"

    .line 805
    .line 806
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    :cond_25
    :goto_17
    move-object/from16 v7, p1

    .line 810
    .line 811
    move v0, v12

    .line 812
    goto/16 :goto_6

    .line 813
    .line 814
    :cond_26
    if-nez v0, :cond_27

    .line 815
    .line 816
    const-string v0, "(No entries found.)\n"

    .line 817
    .line 818
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    :cond_27
    if-eqz v2, :cond_28

    .line 822
    .line 823
    array-length v0, v2

    .line 824
    if-nez v0, :cond_2a

    .line 825
    .line 826
    :cond_28
    if-nez v8, :cond_29

    .line 827
    .line 828
    const-string v0, "\n"

    .line 829
    .line 830
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    :cond_29
    const-string v0, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    .line 834
    .line 835
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 843
    .line 844
    .line 845
    monitor-exit v3

    .line 846
    goto :goto_18

    .line 847
    :catch_b
    move-exception v0

    .line 848
    move-object v2, v0

    .line 849
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    const-string v0, "DropBoxManagerService"

    .line 865
    .line 866
    const-string v1, "Can\'t init"

    .line 867
    .line 868
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 869
    .line 870
    .line 871
    monitor-exit v3

    .line 872
    :goto_18
    return-void

    .line 873
    :goto_19
    monitor-exit v3

    .line 874
    throw v0
.end method

.method public final getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-object v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService$2;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p5, 0x0

    .line 13
    if-nez p4, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->init$1()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    :try_start_2
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    iget-object p4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    :goto_0
    if-nez p1, :cond_2

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_2
    :try_start_3
    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 43
    .line 44
    new-instance p4, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 45
    .line 46
    const-wide/16 v0, 0x1

    .line 47
    .line 48
    add-long/2addr p2, v0

    .line 49
    invoke-direct {p4, p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 71
    .line 72
    iget-object p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 73
    .line 74
    if-nez p3, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 78
    .line 79
    and-int/lit8 p3, p3, 0x1

    .line 80
    .line 81
    if-eqz p3, :cond_4

    .line 82
    .line 83
    new-instance p5, Landroid/os/DropBoxManager$Entry;

    .line 84
    .line 85
    iget-object p1, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 86
    .line 87
    iget-wide p2, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 88
    .line 89
    invoke-direct {p5, p1, p2, p3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :try_start_4
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    :try_start_5
    new-instance p4, Landroid/os/DropBoxManager$Entry;

    .line 101
    .line 102
    iget-object v1, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 103
    .line 104
    iget-wide v2, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 105
    .line 106
    iget v5, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 107
    .line 108
    move-object v0, p4

    .line 109
    move-object v4, p3

    .line 110
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    .line 112
    .line 113
    monitor-exit p0

    .line 114
    move-object p5, p4

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception p2

    .line 117
    :try_start_6
    const-string p4, "DropBoxManagerService"

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v1, "Can\'t read: "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-static {p4, p3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    monitor-exit p0

    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception p1

    .line 143
    :try_start_7
    const-string p2, "DropBoxManagerService"

    .line 144
    .line 145
    const-string p3, "Can\'t init"

    .line 146
    .line 147
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 148
    .line 149
    .line 150
    monitor-exit p0

    .line 151
    :goto_2
    return-object p5

    .line 152
    :goto_3
    monitor-exit p0

    .line 153
    throw p1
.end method

.method public final isTagEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/DropBoxManagerService$ShellCmd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$ShellCmd;-><init>(Lcom/android/server/DropBoxManagerService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
