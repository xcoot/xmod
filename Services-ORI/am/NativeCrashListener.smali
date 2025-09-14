.class public final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    return-void
.end method

.method public static unpackInt(I[B)I
    .locals 3

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    add-int/lit8 v2, p0, 0x2

    .line 12
    .line 13
    aget-byte v2, p1, v2

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x3

    .line 18
    .line 19
    aget-byte p0, p1, p0

    .line 20
    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    shl-int/lit8 p1, v0, 0x18

    .line 24
    .line 25
    shl-int/lit8 v0, v1, 0x10

    .line 26
    .line 27
    or-int/2addr p1, v0

    .line 28
    shl-int/lit8 v0, v2, 0x8

    .line 29
    .line 30
    or-int/2addr p1, v0

    .line 31
    or-int/2addr p0, p1

    .line 32
    return p0
.end method


# virtual methods
.method public final consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 12

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v3, 0x2710

    .line 11
    .line 12
    :try_start_0
    invoke-static {v3, v4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 17
    .line 18
    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 19
    .line 20
    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 21
    .line 22
    .line 23
    sget v5, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 24
    .line 25
    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 26
    .line 27
    .line 28
    const/16 v3, 0x9

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v3

    .line 32
    move v6, v4

    .line 33
    :goto_0
    if-lez v5, :cond_1

    .line 34
    .line 35
    invoke-static {p1, v1, v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-gtz v7, :cond_0

    .line 40
    .line 41
    const/4 v6, -0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sub-int/2addr v5, v7

    .line 44
    add-int/2addr v6, v7

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    if-eq v6, v3, :cond_2

    .line 47
    .line 48
    const-string p0, "NativeCrashListener"

    .line 49
    .line 50
    const-string p1, "Unable to read from debuggerd"

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_2
    invoke-static {v4, v1}, Lcom/android/server/am/NativeCrashListener;->unpackInt(I[B)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v5, 0x4

    .line 64
    invoke-static {v5, v1}, Lcom/android/server/am/NativeCrashListener;->unpackInt(I[B)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const/16 v5, 0x8

    .line 69
    .line 70
    aget-byte v5, v1, v5

    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    move v10, v6

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v10, v4

    .line 78
    :goto_2
    if-gez v3, :cond_4

    .line 79
    .line 80
    const-string p0, "NativeCrashListener"

    .line 81
    .line 82
    const-string p1, "Bogus pid!"

    .line 83
    .line 84
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 89
    .line 90
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 91
    .line 92
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 94
    .line 95
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 96
    .line 97
    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 102
    if-nez v8, :cond_5

    .line 103
    .line 104
    :try_start_2
    const-string p0, "NativeCrashListener"

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v0, "Couldn\'t find ProcessRecord for pid "

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    iget-boolean v3, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    const-string/jumbo v3, "com.android.systemui"

    .line 132
    .line 133
    .line 134
    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    invoke-static {p1, v1, v4, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-lez v3, :cond_8

    .line 148
    .line 149
    add-int/lit8 v5, v3, -0x1

    .line 150
    .line 151
    aget-byte v7, v1, v5

    .line 152
    .line 153
    if-nez v7, :cond_7

    .line 154
    .line 155
    invoke-virtual {v2, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 160
    .line 161
    .line 162
    :cond_8
    if-gtz v3, :cond_6

    .line 163
    .line 164
    :goto_3
    if-nez v10, :cond_9

    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 169
    .line 170
    .line 171
    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 175
    .line 176
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 177
    .line 178
    .line 179
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    :try_start_4
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 181
    .line 182
    iput-boolean v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 183
    .line 184
    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 185
    .line 186
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 187
    .line 188
    iput-boolean v6, v1, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 189
    .line 190
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 191
    .line 192
    iput-boolean v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 193
    .line 194
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 196
    .line 197
    .line 198
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    goto :goto_4

    .line 205
    :catchall_1
    move-exception p0

    .line 206
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 207
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :goto_4
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 212
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_9
    :goto_5
    new-instance v11, Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v0, "UTF-8"

    .line 223
    .line 224
    invoke-direct {v11, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    .line 228
    .line 229
    move-object v6, p1

    .line 230
    move-object v7, p0

    .line 231
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;IZLjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :catchall_2
    move-exception p0

    .line 239
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 240
    :try_start_b
    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 241
    :goto_6
    const-string p1, "NativeCrashListener"

    .line 242
    .line 243
    const-string v0, "Exception dealing with report"

    .line 244
    .line 245
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .line 247
    .line 248
    :goto_7
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    const-string v0, "NativeCrashListener"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    const-string v4, "/data/system/ndebugsocket"

    .line 9
    .line 10
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    .line 23
    .line 24
    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 39
    .line 40
    .line 41
    const/16 v5, 0x1ff

    .line 42
    .line 43
    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    .line 45
    .line 46
    :catch_0
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 47
    :try_start_1
    invoke-static {v3, v4}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_4

    .line 59
    :catch_1
    move-exception v5

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    :goto_1
    if-eqz v4, :cond_1

    .line 62
    .line 63
    :try_start_2
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    .line 66
    :catch_2
    :goto_2
    :try_start_3
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_3
    move-exception p0

    .line 71
    goto :goto_5

    .line 72
    :goto_3
    :try_start_4
    const-string v7, "Error handling connection"

    .line 73
    .line 74
    invoke-static {v0, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    :try_start_5
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_4
    if-eqz v4, :cond_3

    .line 84
    .line 85
    :try_start_6
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 86
    .line 87
    .line 88
    :catch_4
    :try_start_7
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 89
    .line 90
    .line 91
    :catch_5
    :cond_3
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 92
    :goto_5
    const-string v1, "Unable to init native debug socket!"

    .line 93
    .line 94
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    return-void
.end method
