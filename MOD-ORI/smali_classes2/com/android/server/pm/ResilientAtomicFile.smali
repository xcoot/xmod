.class public final Lcom/android/server/pm/ResilientAtomicFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public mCurrentFile:Ljava/io/File;

.field public mCurrentInStream:Ljava/io/FileInputStream;

.field public final mDebugName:Ljava/lang/String;

.field public final mFile:Ljava/io/File;

.field public final mFileMode:I

.field public mMainInStream:Ljava/io/FileInputStream;

.field public mMainOutStream:Ljava/io/FileOutputStream;

.field public final mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

.field public final mReserveCopy:Ljava/io/File;

.field public mReserveInStream:Ljava/io/FileInputStream;

.field public mReserveOutStream:Ljava/io/FileOutputStream;

.field public final mTemporaryBackup:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 22
    .line 23
    iput p4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    .line 24
    .line 25
    iput-object p5, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p6, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 12
    .line 13
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 17
    .line 18
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 38
    .line 39
    return-void
.end method

.method public final failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 2
    .line 3
    if-ne v0, p1, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "!@Error reading "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", removing "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v2, 0xa

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 v1, 0x6

    .line 54
    invoke-interface {p1, v1, p2}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "Failed to remove "

    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string p1, "Invalid incoming stream."

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final failWrite(Ljava/io/FileOutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Failed to clean up mangled file: "

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "ResilientAtomicFile"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "Invalid incoming stream."

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final finishWrite(Ljava/io/FileOutputStream;)V
    .locals 7

    .line 1
    const-string v0, "ResilientAtomicFile"

    .line 2
    .line 3
    const-string v1, "Failed to verity-protect "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 6
    .line 7
    if-ne v2, p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 39
    .line 40
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    :try_start_4
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 47
    .line 48
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget v6, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    .line 62
    .line 63
    invoke-static {p1, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 64
    .line 65
    .line 66
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    .line 68
    .line 69
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 77
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 82
    .line 83
    .line 84
    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 85
    :try_start_8
    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 89
    .line 90
    .line 91
    if-eqz v4, :cond_0

    .line 92
    .line 93
    :try_start_9
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v4

    .line 98
    goto :goto_2

    .line 99
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 100
    .line 101
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    goto :goto_8

    .line 107
    :catch_0
    move-exception p1

    .line 108
    goto :goto_4

    .line 109
    :catchall_2
    move-exception v5

    .line 110
    if-eqz v4, :cond_1

    .line 111
    .line 112
    :try_start_b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_3
    move-exception v4

    .line 117
    :try_start_c
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    :goto_1
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 121
    :goto_2
    if-eqz p1, :cond_2

    .line 122
    .line 123
    :try_start_d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catchall_4
    move-exception p1

    .line 128
    :try_start_e
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    :goto_3
    throw v4
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 132
    :goto_4
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 150
    .line 151
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :catchall_5
    move-exception p1

    .line 156
    goto :goto_a

    .line 157
    :cond_4
    :goto_6
    if-eqz v2, :cond_8

    .line 158
    .line 159
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_d

    .line 163
    :catch_1
    move-exception p1

    .line 164
    goto :goto_c

    .line 165
    :catchall_6
    move-exception p1

    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :catchall_7
    move-exception v1

    .line 173
    :try_start_13
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    :goto_7
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 177
    :goto_8
    if-eqz v3, :cond_6

    .line 178
    .line 179
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 180
    .line 181
    .line 182
    goto :goto_9

    .line 183
    :catchall_8
    move-exception v1

    .line 184
    :try_start_15
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_9
    throw p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 188
    :goto_a
    if-eqz v2, :cond_7

    .line 189
    .line 190
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 191
    .line 192
    .line 193
    goto :goto_b

    .line 194
    :catchall_9
    move-exception v1

    .line 195
    :try_start_17
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_b
    throw p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    .line 199
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v2, "Failed to write reserve copy "

    .line 202
    .line 203
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, ": "

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 217
    .line 218
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .line 227
    .line 228
    :cond_8
    :goto_d
    return-void

    .line 229
    :catchall_a
    move-exception p0

    .line 230
    if-eqz v2, :cond_9

    .line 231
    .line 232
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 233
    .line 234
    .line 235
    goto :goto_e

    .line 236
    :catchall_b
    move-exception p1

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    :goto_e
    throw p0

    .line 241
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string p1, "Invalid incoming stream."

    .line 244
    .line 245
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0
.end method

.method public final openRead()Ljava/io/FileInputStream;
    .locals 6

    .line 1
    const-string v0, "Cleaning up "

    .line 2
    .line 3
    const-string v1, "Need to read from backup "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, " file"

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 17
    .line 18
    iput-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 19
    .line 20
    new-instance v2, Ljava/io/FileInputStream;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v2, v4, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const-string v1, "ResilientAtomicFile"

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " file "

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 116
    .line 117
    new-instance v0, Ljava/io/FileInputStream;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 138
    .line 139
    new-instance v0, Ljava/io/FileInputStream;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v2, "Need to read from reserve copy "

    .line 155
    .line 156
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-interface {v0, v4, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 175
    .line 176
    if-nez v0, :cond_6

    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    .line 179
    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v2, "No "

    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-interface {v0, v4, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    .line 205
    .line 206
    return-object p0
.end method

.method public final startWrite()Ljava/io/FileOutputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

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
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

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
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

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
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

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
    new-instance v0, Ljava/io/IOException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Unable to backup "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, " file, current changes will be lost at reboot"

    .line 58
    .line 59
    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Preserving older "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, " backup"

    .line 82
    .line 83
    const-string v3, "ResilientAtomicFile"

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 91
    .line 92
    .line 93
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 101
    .line 102
    new-instance v0, Ljava/io/FileInputStream;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    .line 110
    .line 111
    new-instance v0, Ljava/io/FileOutputStream;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 119
    .line 120
    new-instance v0, Ljava/io/FileInputStream;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 140
    .line 141
    return-object p0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v0, "Duplicate startWrite call?"

    .line 150
    .line 151
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

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
