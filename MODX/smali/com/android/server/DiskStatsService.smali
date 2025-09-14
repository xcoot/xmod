.class public final Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 6
    sget-object p0, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    .line 8
    const-string/jumbo p0, "jobscheduler"

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 17
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    .line 19
    const v0, 0x4449534b

    .line 22
    sget-object v1, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    .line 24
    invoke-direct {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 38
    const-wide/16 v1, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 55
    return-void
.end method

.method public static reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .locals 15

    .line 1
    move-object/from16 v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 7
    const-string v0, "Invalid stat: bsize="

    .line 9
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v5

    .line 15
    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 21
    move-result v5

    .line 22
    int-to-long v5, v5

    .line 23
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 26
    move-result v7

    .line 27
    int-to-long v7, v7

    .line 28
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    .line 31
    move-result v4

    .line 32
    int-to-long v9, v4

    .line 33
    const-wide/16 v11, 0x0

    .line 35
    cmp-long v4, v5, v11

    .line 37
    if-lez v4, :cond_1

    .line 39
    cmp-long v4, v9, v11

    .line 41
    if-lez v4, :cond_1

    .line 43
    if-eqz v3, :cond_0

    .line 45
    const-wide v13, 0x20b00000004L

    .line 50
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 53
    move-result-wide v13

    .line 54
    const-wide v11, 0x10e00000001L

    .line 59
    move/from16 v0, p4

    .line 61
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 64
    mul-long/2addr v7, v5

    .line 65
    const-wide/16 v11, 0x400

    .line 67
    div-long/2addr v7, v11

    .line 68
    const-wide v11, 0x10300000002L

    .line 73
    invoke-virtual {v3, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 76
    mul-long/2addr v9, v5

    .line 77
    const-wide/16 v4, 0x400

    .line 79
    div-long/2addr v9, v4

    .line 80
    const-wide v4, 0x10300000003L

    .line 85
    invoke-virtual {v3, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 88
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    const-string v0, "-Free: "

    .line 99
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    mul-long v11, v7, v5

    .line 104
    const-wide/16 v13, 0x400

    .line 106
    div-long/2addr v11, v13

    .line 107
    invoke-virtual {v2, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 110
    const-string v0, "K / "

    .line 112
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    mul-long/2addr v5, v9

    .line 116
    div-long/2addr v5, v13

    .line 117
    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 120
    const-string v0, "K total = "

    .line 122
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    const-wide/16 v4, 0x64

    .line 127
    mul-long/2addr v7, v4

    .line 128
    div-long/2addr v7, v9

    .line 129
    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 132
    const-string v0, "% free"

    .line 134
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const-string v0, " avail="

    .line 150
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, " total="

    .line 158
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    if-eqz v3, :cond_2

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    const-string v1, "-Error: "

    .line 180
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    :goto_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v1, p2

    .line 3
    move-object/from16 v0, p0

    .line 5
    move-object/from16 v2, p3

    .line 7
    iget-object v0, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 9
    const-string v3, "DiskStatsService"

    .line 11
    invoke-static {v0, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v0, 0x200

    .line 20
    new-array v4, v0, [B

    .line 22
    const/4 v5, 0x0

    .line 23
    move v6, v5

    .line 24
    :goto_0
    if-ge v6, v0, :cond_1

    .line 26
    int-to-byte v7, v6

    .line 27
    aput-byte v7, v4, v6

    .line 29
    add-int/lit8 v6, v6, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 34
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v7, "system/perftest.tmp"

    .line 41
    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 47
    move-result-wide v7

    .line 48
    const/4 v9, 0x0

    .line 49
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    .line 51
    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    invoke-virtual {v10, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :catch_0
    move-object v0, v9

    .line 61
    goto :goto_3

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object v9, v10

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :catch_2
    move-exception v0

    .line 70
    move-object v10, v9

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    if-eqz v9, :cond_2

    .line 74
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    :catch_3
    :cond_2
    throw v0

    .line 78
    :goto_2
    if-eqz v10, :cond_3

    .line 80
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 83
    :catch_4
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    move-result-wide v10

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 93
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 96
    :cond_4
    array-length v4, v2

    .line 97
    move v6, v5

    .line 98
    :goto_4
    const/4 v12, 0x1

    .line 99
    if-ge v6, v4, :cond_6

    .line 101
    aget-object v13, v2, v6

    .line 103
    const-string v14, "--proto"

    .line 105
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v13

    .line 109
    if-eqz v13, :cond_5

    .line 111
    move v2, v12

    .line 112
    goto :goto_5

    .line 113
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move v2, v5

    .line 117
    :goto_5
    if-eqz v2, :cond_9

    .line 119
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 121
    move-object/from16 v4, p1

    .line 123
    invoke-direct {v1, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 126
    if-eqz v0, :cond_7

    .line 128
    move v4, v12

    .line 129
    goto :goto_6

    .line 130
    :cond_7
    move v4, v5

    .line 131
    :goto_6
    const-wide v13, 0x10800000001L

    .line 136
    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 139
    if-eqz v0, :cond_8

    .line 141
    const-wide v6, 0x10900000002L

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 153
    goto :goto_7

    .line 154
    :cond_8
    const-wide v13, 0x10500000003L

    .line 159
    sub-long/2addr v10, v7

    .line 160
    invoke-virtual {v1, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 163
    :goto_7
    move-object/from16 v23, v9

    .line 165
    move-object v9, v1

    .line 166
    move-object/from16 v1, v23

    .line 168
    goto :goto_8

    .line 169
    :cond_9
    if-eqz v0, :cond_a

    .line 171
    const-string v4, "Test-Error: "

    .line 173
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    goto :goto_8

    .line 184
    :cond_a
    const-string v0, "Latency: "

    .line 186
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    sub-long/2addr v10, v7

    .line 190
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 193
    const-string/jumbo v0, "ms [512B Data Write]"

    .line 196
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    :goto_8
    const-string/jumbo v0, "storaged not found"

    .line 202
    const-string/jumbo v4, "storaged"

    .line 205
    const-string v6, "Recent Disk Write Speed data unavailable!"

    .line 207
    const-wide/16 v7, 0x0

    .line 209
    if-eqz v2, :cond_d

    .line 211
    :try_start_5
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_c

    .line 217
    invoke-static {v4}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    .line 220
    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    .line 224
    move-result v0

    .line 225
    int-to-long v10, v0

    .line 226
    cmp-long v0, v10, v7

    .line 228
    if-eqz v0, :cond_b

    .line 230
    const-wide v6, 0x10500000007L

    .line 235
    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 238
    goto :goto_b

    .line 239
    :catch_5
    move-exception v0

    .line 240
    goto :goto_9

    .line 241
    :cond_b
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto :goto_b

    .line 245
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 247
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 251
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    goto :goto_b

    .line 259
    :cond_d
    :try_start_6
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 262
    move-result-object v4

    .line 263
    if-eqz v4, :cond_f

    .line 265
    invoke-static {v4}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    .line 272
    move-result v0

    .line 273
    int-to-long v10, v0

    .line 274
    cmp-long v0, v10, v7

    .line 276
    if-eqz v0, :cond_e

    .line 278
    const-string v0, "Recent Disk Write Speed (kB/s) = "

    .line 280
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 286
    goto :goto_b

    .line 287
    :catch_6
    move-exception v0

    .line 288
    goto :goto_a

    .line 289
    :cond_e
    const-string v0, "Recent Disk Write Speed data unavailable"

    .line 291
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    goto :goto_b

    .line 298
    :cond_f
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 300
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 303
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    .line 304
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 315
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 321
    move-result-object v0

    .line 322
    const-string v4, "Data"

    .line 324
    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 327
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    .line 330
    move-result-object v0

    .line 331
    const-string v4, "Cache"

    .line 333
    invoke-static {v0, v4, v1, v9, v12}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 336
    new-instance v0, Ljava/io/File;

    .line 338
    const-string v4, "/system"

    .line 340
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v4, "System"

    .line 345
    const/4 v6, 0x2

    .line 346
    invoke-static {v0, v4, v1, v9, v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 349
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    .line 352
    move-result-object v0

    .line 353
    const-string v4, "Metadata"

    .line 355
    const/4 v6, 0x3

    .line 356
    invoke-static {v0, v4, v1, v9, v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 359
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 362
    move-result v0

    .line 363
    if-eqz v2, :cond_11

    .line 365
    const-wide v7, 0x10e00000005L

    .line 370
    if-eqz v0, :cond_10

    .line 372
    invoke-virtual {v9, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 375
    goto :goto_c

    .line 376
    :cond_10
    invoke-virtual {v9, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 379
    goto :goto_c

    .line 380
    :cond_11
    if-eqz v0, :cond_12

    .line 382
    const-string v0, "File-based Encryption: true"

    .line 384
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    :cond_12
    :goto_c
    const-string/jumbo v4, "exception reading diskstats cache file"

    .line 390
    const-string/jumbo v0, "cacheSizes"

    .line 393
    const-string v6, "appDataSizes"

    .line 395
    const-string v7, "appSizes"

    .line 397
    const-string/jumbo v8, "packageNames"

    .line 400
    const-string/jumbo v10, "otherSize"

    .line 403
    const-string/jumbo v11, "systemSize"

    .line 406
    const-string/jumbo v12, "downloadsSize"

    .line 409
    const-string v13, "audioSize"

    .line 411
    const-string/jumbo v14, "videosSize"

    .line 414
    const-string/jumbo v15, "photosSize"

    .line 417
    const-string/jumbo v5, "cacheSize"

    .line 420
    move-object/from16 p1, v1

    .line 422
    const-string v1, "appDataSize"

    .line 424
    move-object/from16 p2, v4

    .line 426
    const-string v4, "appSize"

    .line 428
    const-string v16, "/data/system/diskstats_cache.json"

    .line 430
    if-eqz v2, :cond_15

    .line 432
    move/from16 p3, v2

    .line 434
    :try_start_7
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8

    .line 438
    move-object/from16 v17, v3

    .line 440
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    .line 442
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 445
    move-object v2, v6

    .line 446
    move-object/from16 v18, v7

    .line 448
    const-wide v6, 0x10b00000006L

    .line 453
    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 456
    move-result-wide v6

    .line 457
    move-wide/from16 v19, v6

    .line 459
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 462
    move-result-wide v6

    .line 463
    move-object/from16 v21, v10

    .line 465
    move-object/from16 v22, v11

    .line 467
    const-wide v10, 0x10300000001L

    .line 472
    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 475
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 478
    move-result-wide v6

    .line 479
    const-wide v10, 0x1030000000aL

    .line 484
    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 487
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 490
    move-result-wide v4

    .line 491
    const-wide v6, 0x10300000002L

    .line 496
    invoke-virtual {v9, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 499
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 502
    move-result-wide v4

    .line 503
    const-wide v10, 0x10300000003L

    .line 508
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 511
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 514
    move-result-wide v4

    .line 515
    const-wide v14, 0x10300000004L

    .line 520
    invoke-virtual {v9, v14, v15, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 523
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 526
    move-result-wide v4

    .line 527
    const-wide v10, 0x10300000005L

    .line 532
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 535
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 538
    move-result-wide v4

    .line 539
    const-wide v10, 0x10300000006L

    .line 544
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 547
    move-object/from16 v10, v22

    .line 549
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 552
    move-result-wide v4

    .line 553
    const-wide v10, 0x10300000007L

    .line 558
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 561
    move-object/from16 v11, v21

    .line 563
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 566
    move-result-wide v4

    .line 567
    const-wide v10, 0x10300000008L

    .line 572
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 575
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 578
    move-result-object v1

    .line 579
    move-object/from16 v4, v18

    .line 581
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 596
    move-result v3

    .line 597
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 600
    move-result v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    .line 601
    if-ne v3, v5, :cond_14

    .line 603
    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 606
    move-result v5

    .line 607
    if-ne v3, v5, :cond_14

    .line 609
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 612
    move-result v5

    .line 613
    if-ne v3, v5, :cond_14

    .line 615
    const/4 v5, 0x0

    .line 616
    :goto_d
    if-ge v5, v3, :cond_13

    .line 618
    const-wide v10, 0x20b00000009L

    .line 623
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 626
    move-result-wide v10

    .line 627
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 630
    move-result-object v8

    .line 631
    const-wide v12, 0x10900000001L

    .line 636
    invoke-virtual {v9, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 639
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getLong(I)J

    .line 642
    move-result-wide v12

    .line 643
    invoke-virtual {v9, v6, v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 646
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getLong(I)J

    .line 649
    move-result-wide v12

    .line 650
    invoke-virtual {v9, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 653
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    .line 656
    move-result-wide v12

    .line 657
    const-wide v6, 0x10300000003L

    .line 662
    invoke-virtual {v9, v6, v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 665
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    .line 668
    add-int/lit8 v5, v5, 0x1

    .line 670
    const-wide v6, 0x10300000002L

    .line 675
    goto :goto_d

    .line 676
    :catch_7
    move-exception v0

    .line 677
    move-object/from16 v6, p2

    .line 679
    move-object/from16 v3, v17

    .line 681
    goto :goto_11

    .line 682
    :cond_13
    move-object/from16 v3, v17

    .line 684
    :goto_e
    move-wide/from16 v0, v19

    .line 686
    goto :goto_f

    .line 687
    :cond_14
    :try_start_a
    const-string v0, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    .line 689
    move-object/from16 v3, v17

    .line 691
    :try_start_b
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    goto :goto_e

    .line 695
    :goto_f
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 698
    goto :goto_12

    .line 699
    :catch_8
    move-exception v0

    .line 700
    :goto_10
    move-object/from16 v6, p2

    .line 702
    goto :goto_11

    .line 703
    :catch_9
    move-exception v0

    .line 704
    move-object/from16 v3, v17

    .line 706
    goto :goto_10

    .line 707
    :goto_11
    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    :goto_12
    move-object/from16 v17, v9

    .line 712
    goto/16 :goto_16

    .line 714
    :cond_15
    move/from16 p3, v2

    .line 716
    move-object v2, v6

    .line 717
    move-object/from16 v17, v9

    .line 719
    move-object/from16 v6, p2

    .line 721
    move-object/from16 v23, v11

    .line 723
    move-object v11, v10

    .line 724
    move-object/from16 v10, v23

    .line 726
    :try_start_c
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 729
    move-result-object v9
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    .line 730
    move-object/from16 v16, v3

    .line 732
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    .line 734
    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 737
    const-string v9, "App Size: "
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b

    .line 739
    move-object/from16 p2, v6

    .line 741
    move-object/from16 v6, p1

    .line 743
    :try_start_e
    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    move-object/from16 v18, v7

    .line 748
    move-object/from16 p0, v8

    .line 750
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 753
    move-result-wide v7

    .line 754
    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 757
    const-string v4, "App Data Size: "

    .line 759
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 765
    move-result-wide v7

    .line 766
    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 769
    const-string v1, "App Cache Size: "

    .line 771
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 777
    move-result-wide v4

    .line 778
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 781
    const-string v1, "Photos Size: "

    .line 783
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 789
    move-result-wide v4

    .line 790
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 793
    const-string v1, "Videos Size: "

    .line 795
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 801
    move-result-wide v4

    .line 802
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 805
    const-string v1, "Audio Size: "

    .line 807
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 813
    move-result-wide v4

    .line 814
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 817
    const-string v1, "Downloads Size: "

    .line 819
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 825
    move-result-wide v4

    .line 826
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 829
    const-string v1, "System Size: "

    .line 831
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 837
    move-result-wide v4

    .line 838
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 841
    const-string v1, "Other Size: "

    .line 843
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 849
    move-result-wide v4

    .line 850
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 853
    const-string v1, "Package Names: "

    .line 855
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    move-object/from16 v1, p0

    .line 860
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 863
    move-result-object v1

    .line 864
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 867
    const-string v1, "App Sizes: "

    .line 869
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    move-object/from16 v1, v18

    .line 874
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 881
    const-string v1, "App Data Sizes: "

    .line 883
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 889
    move-result-object v1

    .line 890
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 893
    const-string v1, "Cache Sizes: "

    .line 895
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    .line 905
    goto :goto_16

    .line 906
    :catch_a
    move-exception v0

    .line 907
    :goto_13
    move-object/from16 v2, p2

    .line 909
    move-object/from16 v1, v16

    .line 911
    goto :goto_15

    .line 912
    :catch_b
    move-exception v0

    .line 913
    :goto_14
    move-object/from16 p2, v6

    .line 915
    goto :goto_13

    .line 916
    :catch_c
    move-exception v0

    .line 917
    move-object/from16 v16, v3

    .line 919
    goto :goto_14

    .line 920
    :goto_15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    :goto_16
    if-eqz p3, :cond_16

    .line 925
    invoke-virtual/range {v17 .. v17}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 928
    :cond_16
    return-void
.end method
