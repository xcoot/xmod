.class public final Lcom/android/server/pdb/PersistentDataBlockService$InternalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pdb/PersistentDataBlockManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clearTestHarnessModeData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/16 v3, 0x270c

    .line 8
    .line 9
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [B

    .line 17
    .line 18
    :cond_0
    array-length v1, v1

    .line 19
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final readInternal(IJ)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 10
    .line 11
    new-instance v1, Ljava/io/FileInputStream;

    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-virtual {v0, p2, p3}, Ljava/io/DataInputStream;->skip(J)J

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    if-le p2, p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-array p1, p2, [B

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 48
    .line 49
    .line 50
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p0

    .line 68
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string/jumbo p2, "persistent partition not readable"

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 77
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string/jumbo p1, "persistent partition not available"

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string p1, "invalid checksum"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final writeDataBuffer(JLjava/nio/ByteBuffer;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 23
    .line 24
    const-string/jumbo v4, "rw"

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    return p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_2
    move-exception p1

    .line 65
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    :goto_1
    :try_start_7
    const-string p1, "PersistentDataBlockService"

    .line 70
    .line 71
    const-string/jumbo p2, "unable to access persistent partition"

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return v3

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 80
    throw p0
.end method

.method public final writeInternal(J[BI)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    array-length v2, p3

    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move v2, v0

    .line 12
    :goto_1
    const-string v3, "data must be null or non-empty"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    if-eqz p3, :cond_3

    .line 18
    .line 19
    array-length v2, p3

    .line 20
    if-gt v2, p4, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v0, v1

    .line 24
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "data must not be longer than "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p4, p4, 0x4

    .line 42
    .line 43
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    if-nez p3, :cond_4

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    array-length v1, p3

    .line 51
    :goto_3
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    if-eqz p3, :cond_5

    .line 55
    .line 56
    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    :cond_5
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
