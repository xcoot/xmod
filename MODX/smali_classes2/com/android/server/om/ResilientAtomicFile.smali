.class public final Lcom/android/server/om/ResilientAtomicFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public mCurrentFile:Ljava/io/File;

.field public mCurrentInStream:Ljava/io/FileInputStream;

.field public final mFile:Ljava/io/File;

.field public mMainInStream:Ljava/io/FileInputStream;

.field public mMainOutStream:Ljava/io/FileOutputStream;

.field public final mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

.field public final mReserveCopy:Ljava/io/File;

.field public mReserveInStream:Ljava/io/FileInputStream;

.field public mReserveOutStream:Ljava/io/FileOutputStream;

.field public final mTemporaryBackup:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/om/OverlayManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 12
    .line 13
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 17
    .line 18
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 38
    .line 39
    return-void
.end method

.method public final failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 2
    .line 3
    if-ne v0, p1, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "!@Error reading overlay manager settings, removing "

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "ResilientAtomicFile"

    .line 44
    .line 45
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Failed to remove "

    .line 64
    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 69
    .line 70
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string p1, "Invalid incoming stream."

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final finishWrite(Ljava/io/FileOutputStream;)V
    .locals 6

    .line 1
    const-string v0, "ResilientAtomicFile"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 4
    .line 5
    if-ne v1, p1, :cond_a

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, -0x1

    .line 21
    const/16 v4, 0x1b0

    .line 22
    .line 23
    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    :try_start_2
    iget-object v2, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 37
    .line 38
    :try_start_3
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    :try_start_4
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 45
    .line 46
    invoke-static {v1, v5}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 60
    .line 61
    .line 62
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .line 64
    .line 65
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 73
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 81
    :try_start_8
    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 85
    .line 86
    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    :try_start_9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v3

    .line 94
    goto :goto_2

    .line 95
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 96
    .line 97
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :catchall_1
    move-exception p1

    .line 102
    goto :goto_8

    .line 103
    :catch_0
    move-exception p1

    .line 104
    goto :goto_4

    .line 105
    :catchall_2
    move-exception v4

    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    :try_start_b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_3
    move-exception v3

    .line 113
    :try_start_c
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_1
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 117
    :goto_2
    if-eqz p1, :cond_2

    .line 118
    .line 119
    :try_start_d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catchall_4
    move-exception p1

    .line 124
    :try_start_e
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_3
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 128
    :goto_4
    :try_start_f
    const-string v3, "Failed to verity-protect overlay manager settings"

    .line 129
    .line 130
    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 134
    .line 135
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :catchall_5
    move-exception p1

    .line 140
    goto :goto_a

    .line 141
    :cond_4
    :goto_6
    if-eqz v1, :cond_8

    .line 142
    .line 143
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 144
    .line 145
    .line 146
    goto :goto_d

    .line 147
    :catch_1
    move-exception p1

    .line 148
    goto :goto_c

    .line 149
    :catchall_6
    move-exception p1

    .line 150
    if-eqz v5, :cond_5

    .line 151
    .line 152
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :catchall_7
    move-exception v3

    .line 157
    :try_start_13
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    :goto_7
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 161
    :goto_8
    if-eqz v2, :cond_6

    .line 162
    .line 163
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 164
    .line 165
    .line 166
    goto :goto_9

    .line 167
    :catchall_8
    move-exception v2

    .line 168
    :try_start_15
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    :goto_9
    throw p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 172
    :goto_a
    if-eqz v1, :cond_7

    .line 173
    .line 174
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 175
    .line 176
    .line 177
    goto :goto_b

    .line 178
    :catchall_9
    move-exception v1

    .line 179
    :try_start_17
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_b
    throw p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    .line 183
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v2, "Failed to write reserve copy overlay manager settings: "

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 191
    .line 192
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_d
    return-void

    .line 203
    :catchall_a
    move-exception p0

    .line 204
    if-eqz v1, :cond_9

    .line 205
    .line 206
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 207
    .line 208
    .line 209
    goto :goto_e

    .line 210
    :catchall_b
    move-exception p1

    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    :goto_e
    throw p0

    .line 215
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    const-string p1, "Invalid incoming stream."

    .line 218
    .line 219
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p0
.end method

.method public final openRead()Ljava/io/FileInputStream;
    .locals 4

    .line 1
    const-string v0, "Cleaning up overlay manager settings file "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ResilientAtomicFile"

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 16
    .line 17
    new-instance v1, Ljava/io/FileInputStream;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v1, "Need to read from backup overlay manager settings file"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 81
    .line 82
    new-instance v0, Ljava/io/FileInputStream;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 103
    .line 104
    new-instance v0, Ljava/io/FileInputStream;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    const-string v0, "Need to read from reserve copy overlay manager settings file"

    .line 118
    .line 119
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 123
    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    const-string v0, "No overlay manager settings file"

    .line 131
    .line 132
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 136
    .line 137
    return-object p0
.end method

.method public final startWrite()Ljava/io/FileOutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 47
    .line 48
    const-string v0, "Unable to backup overlay manager settings file, current changes will be lost at reboot"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    .line 58
    .line 59
    const-string v0, "Preserving older overlay manager settings backup"

    .line 60
    .line 61
    const-string v1, "ResilientAtomicFile"

    .line 62
    .line 63
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 69
    .line 70
    .line 71
    new-instance v0, Ljava/io/FileOutputStream;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 79
    .line 80
    new-instance v0, Ljava/io/FileInputStream;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 88
    .line 89
    new-instance v0, Ljava/io/FileOutputStream;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 97
    .line 98
    new-instance v0, Ljava/io/FileInputStream;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v0, "Duplicate startWrite call?"

    .line 123
    .line 124
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
