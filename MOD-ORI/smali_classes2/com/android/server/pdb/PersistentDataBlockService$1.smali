.class public final Lcom/android/server/pdb/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "FRP secret in "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    .line 11
    .line 12
    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ": "

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-array v1, v1, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Failed to read "

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "PersistentDataBlockService"

    .line 78
    .line 79
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string p2, "FRP secret file "

    .line 84
    .line 85
    const-string v0, " exists, contents omitted."

    .line 86
    .line 87
    invoke-static {p0, p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final deactivateFactoryResetProtection([B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string p1, "Can\'t configure Factory Reset Protection. Requires CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "mIsWritable: "

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 4
    .line 5
    iget-object p3, p3, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v0, "PersistentDataBlockService"

    .line 8
    .line 9
    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "mDataBlockFile: "

    .line 19
    .line 20
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "mIsFileBacked: "

    .line 28
    .line 29
    invoke-static {p2, v0, v1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 34
    .line 35
    iget-boolean v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 36
    .line 37
    const-string v1, "mInitDoneSignal: "

    .line 38
    .line 39
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 46
    .line 47
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "mAllowedUid: "

    .line 60
    .line 61
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 65
    .line 66
    iget v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    .line 67
    .line 68
    const-string v1, "mBlockDeviceSize: "

    .line 69
    .line 70
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 75
    .line 76
    iget-wide v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 77
    .line 78
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 89
    .line 90
    iget-object p3, p3, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter p3

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 99
    .line 100
    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p0
.end method

.method public final enforcePersistentDataBlockAccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.ACCESS_PDB_STATE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final getDataBlockSize()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    new-instance v2, Ljava/io/FileInputStream;

    .line 8
    .line 9
    new-instance v3, Ljava/io/File;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 12
    .line 13
    iget-object v4, v4, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x20

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const v3, 0x19901873

    .line 44
    .line 45
    .line 46
    if-ne p0, v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move p0, v0

    .line 54
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 56
    .line 57
    .line 58
    return p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    :try_start_5
    const-string p0, "PersistentDataBlockService"

    .line 65
    .line 66
    const-string v2, "error reading data block size"

    .line 67
    .line 68
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 72
    .line 73
    .line 74
    return v0

    .line 75
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :catch_1
    const-string p0, "PersistentDataBlockService"

    .line 80
    .line 81
    const-string/jumbo v1, "partition not available"

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v0
.end method

.method public final getFlashLockState()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p0, "ro.boot.flash.locked"

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "0"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "1"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const/4 p0, -0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final getMaximumDataBlockSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public final getOemUnlockEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getPersistentDataPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const v0, 0x1040390

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final hasFrpCredentialHandle()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const/16 v2, 0x3e4

    .line 36
    .line 37
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    :goto_1
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v0, "PersistentDataBlockService"

    .line 49
    .line 50
    const-string v1, "error reading frp handle"

    .line 51
    .line 52
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 56
    .line 57
    const-string v0, "cannot read frp credential"

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final isFactoryResetProtectionActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super/range {p0 .. p6}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Lcom/android/server/pdb/PersistentDataBlockService$1$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService$1;)V

    .line 14
    .line 15
    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    move-object v7, p5

    .line 22
    move-object v8, p6

    .line 23
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final printFrpStatus(Ljava/io/PrintWriter;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 8
    .line 9
    .line 10
    const-string v0, "FRP state"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "========="

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Enforcement enabled: "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 30
    .line 31
    const-string v2, "FRP state: "

    .line 32
    .line 33
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 38
    .line 39
    iget-boolean v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 40
    .line 41
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1, v0, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1, v0, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    sget-object v3, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 65
    .line 66
    array-length v4, v3

    .line 67
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const-string v0, "PersistentDataBlockService"

    .line 74
    .line 75
    const-string v1, "Failed to read FRP magic region."

    .line 76
    .line 77
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_0
    if-eqz v0, :cond_2

    .line 87
    .line 88
    if-eqz p2, :cond_1

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "FRP secret in PDB: "

    .line 93
    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    const/16 v4, 0x20

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    const-string p2, "FRP secret present but omitted."

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const-string p2, "FRP magic not found"

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "OEM unlock state: "

    .line 142
    .line 143
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getOemUnlockEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v0, "Bootloader lock state: "

    .line 163
    .line 164
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getFlashLockState()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v0, "Verified boot state: "

    .line 184
    .line 185
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string/jumbo v0, "ro.boot.verifiedbootstate"

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v0, "Has FRP credential handle: "

    .line 208
    .line 209
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->hasFrpCredentialHandle()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v0, "FRP challenge block size: "

    .line 229
    .line 230
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getDataBlockSize()I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final read()[B
    .locals 7

    .line 1
    const-string v0, "failed to read entire data block. bytes read: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-array p0, v2, [B

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    .line 26
    .line 27
    new-instance v4, Ljava/io/FileInputStream;

    .line 28
    .line 29
    new-instance v5, Ljava/io/File;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 32
    .line 33
    iget-object v6, v6, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/16 p0, 0x20

    .line 55
    .line 56
    invoke-virtual {v3, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const v5, 0x19901873

    .line 64
    .line 65
    .line 66
    if-ne p0, v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move p0, v2

    .line 74
    :goto_0
    if-nez p0, :cond_2

    .line 75
    .line 76
    new-array p0, v2, [B

    .line 77
    .line 78
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    const-string v0, "PersistentDataBlockService"

    .line 84
    .line 85
    const-string v1, "failed to close OutputStream"

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object p0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_4

    .line 93
    :cond_2
    :try_start_4
    new-array v5, p0, [B

    .line 94
    .line 95
    invoke-virtual {v3, v5, v2, p0}, Ljava/io/DataInputStream;->read([BII)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-ge v2, p0, :cond_3

    .line 100
    .line 101
    const-string v5, "PersistentDataBlockService"

    .line 102
    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, "/"

    .line 112
    .line 113
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_1
    const-string p0, "PersistentDataBlockService"

    .line 132
    .line 133
    const-string v0, "failed to close OutputStream"

    .line 134
    .line 135
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :goto_2
    return-object v1

    .line 139
    :cond_3
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_2
    const-string p0, "PersistentDataBlockService"

    .line 145
    .line 146
    const-string v0, "failed to close OutputStream"

    .line 147
    .line 148
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :goto_3
    return-object v5

    .line 152
    :goto_4
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 153
    :try_start_9
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_6

    .line 156
    :catch_3
    move-exception p0

    .line 157
    :try_start_a
    const-string v0, "PersistentDataBlockService"

    .line 158
    .line 159
    const-string v2, "failed to read data"

    .line 160
    .line 161
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 162
    .line 163
    .line 164
    :try_start_b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :catch_4
    const-string p0, "PersistentDataBlockService"

    .line 169
    .line 170
    const-string v0, "failed to close OutputStream"

    .line 171
    .line 172
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :goto_5
    return-object v1

    .line 176
    :goto_6
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 177
    .line 178
    .line 179
    goto :goto_7

    .line 180
    :catch_5
    const-string v0, "PersistentDataBlockService"

    .line 181
    .line 182
    const-string v1, "failed to close OutputStream"

    .line 183
    .line 184
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :goto_7
    throw p0

    .line 188
    :catch_6
    move-exception p0

    .line 189
    const-string v0, "PersistentDataBlockService"

    .line 190
    .line 191
    const-string/jumbo v2, "partition not available?"

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    return-object v1
.end method

.method public final setFactoryResetProtectionSecret([B)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string p1, "Can\'t configure Factory Reset Protection. Requires CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    array-length v0, p1

    .line 39
    const/16 v1, 0x20

    .line 40
    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 55
    .line 56
    new-array v2, v0, [Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x4

    .line 63
    new-array v2, v2, [Ljava/nio/file/OpenOption;

    .line 64
    .line 65
    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 66
    .line 67
    aput-object v3, v2, v0

    .line 68
    .line 69
    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    aput-object v3, v2, v4

    .line 73
    .line 74
    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    aput-object v3, v2, v5

    .line 78
    .line 79
    sget-object v3, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    .line 80
    .line 81
    const/4 v5, 0x3

    .line 82
    aput-object v3, v2, v5

    .line 83
    .line 84
    invoke-static {v1, p1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 96
    .line 97
    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    .line 105
    .line 106
    .line 107
    move v0, v4

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception p0

    .line 110
    const-string p1, "PersistentDataBlockService"

    .line 111
    .line 112
    const-string v1, "Failed to write FRP secret file"

    .line 113
    .line 114
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_1
    return v0

    .line 118
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "Invalid FRP secret: "

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method

.method public final setOemUnlockEnabled(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    .line 13
    .line 14
    const-string v2, "Can\'t modify OEM unlock state"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 43
    .line 44
    const-string/jumbo v1, "no_oem_unlock"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 51
    .line 52
    const-string/jumbo v1, "no_factory_reset"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string p1, "Only the Admin user is allowed to change OEM unlock state"

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final wipe()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    .line 11
    .line 12
    const-string v2, "Can\'t modify OEM unlock state"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 23
    .line 24
    iget-boolean v2, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 30
    .line 31
    new-array v2, v3, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x19000

    .line 38
    .line 39
    .line 40
    new-array v2, v2, [B

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    new-array v4, v4, [Ljava/nio/file/OpenOption;

    .line 44
    .line 45
    sget-object v5, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 46
    .line 47
    aput-object v5, v4, v3

    .line 48
    .line 49
    invoke-static {v1, v2, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :catch_0
    const/4 v1, -0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_0
    if-gez v1, :cond_1

    .line 65
    .line 66
    const-string p0, "PersistentDataBlockService"

    .line 67
    .line 68
    const-string v1, "failed to wipe persistent partition"

    .line 69
    .line 70
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 75
    .line 76
    iput-boolean v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 77
    .line 78
    const-string p0, "PersistentDataBlockService"

    .line 79
    .line 80
    const-string/jumbo v1, "persistent partition now wiped and unwritable"

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :goto_1
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public final write([B)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    array-length v2, p1

    .line 17
    int-to-long v2, v2

    .line 18
    cmp-long v2, v2, v0

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    neg-long p0, v0

    .line 23
    long-to-int p0, p0

    .line 24
    return p0

    .line 25
    :cond_0
    array-length v0, p1

    .line 26
    add-int/lit8 v0, v0, 0x28

    .line 27
    .line 28
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    const v1, 0x19901873

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    array-length v1, p1

    .line 46
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 61
    .line 62
    iget-boolean v3, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 63
    .line 64
    const/4 v4, -0x1

    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    return v4

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 72
    .line 73
    .line 74
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 77
    .line 78
    const-string/jumbo v5, "rw"

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 85
    .line 86
    .line 87
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    .line 94
    .line 95
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    array-length p0, p1

    .line 107
    monitor-exit v1

    .line 108
    return p0

    .line 109
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    return v4

    .line 111
    :catch_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_2
    move-exception p1

    .line 121
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    :goto_1
    :try_start_7
    const-string p1, "PersistentDataBlockService"

    .line 126
    .line 127
    const-string v0, "failed writing to the persistent data block"

    .line 128
    .line 129
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    monitor-exit v1

    .line 133
    return v4

    .line 134
    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    throw p0
.end method
