.class public final Lcom/android/server/pm/UserDataPreparer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 9
    .line 10
    return-void
.end method

.method public static enforceSerialNumber(Ljava/io/File;I)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/UserDataPreparer;->getSerialNumber(Ljava/io/File;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Found "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " with serial number "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "UserDataPreparer"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Serial number missing on "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "; assuming current is valid"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string/jumbo v1, "user.serial"

    .line 72
    .line 73
    .line 74
    sget v3, Landroid/system/OsConstants;->XATTR_CREATE:I

    .line 75
    .line 76
    invoke-static {v0, v1, p1, v3}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_0

    .line 82
    :catch_1
    move-exception p1

    .line 83
    goto :goto_1

    .line 84
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "Failed to set serial number on "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_0
    if-ne v0, p1, :cond_1

    .line 108
    .line 109
    :goto_2
    return-void

    .line 110
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 111
    .line 112
    const-string v1, "Found serial number "

    .line 113
    .line 114
    const-string v2, " doesn\'t match expected "

    .line 115
    .line 116
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0
.end method

.method public static getSerialNumber(Ljava/io/File;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Bad serial number: "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v1, "user.serial"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :goto_0
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    .line 37
    .line 38
    sget v1, Landroid/system/OsConstants;->ENODATA:I

    .line 39
    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    const/4 p0, -0x1

    .line 43
    return p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    throw p0
.end method


# virtual methods
.method public final destroyUserDataLI(IILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 14
    .line 15
    .line 16
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 21
    .line 22
    invoke-interface {v1, p3, p1, p2}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_2
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    and-int/lit8 v1, p2, 0x1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserDataPreparer;->getUserSystemDirectory(I)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    and-int/lit8 v1, p2, 0x2

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v0, p3, p1, p2}, Landroid/os/storage/StorageManager;->destroyUserStorage(Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catch_1
    move-exception p0

    .line 70
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :goto_2
    const-string p2, "Failed to destroy user "

    .line 76
    .line 77
    const-string v0, " on volume "

    .line 78
    .line 79
    const-string v1, ": "

    .line 80
    .line 81
    invoke-static {p1, p2, v0, p3, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 p1, 0x5

    .line 93
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_3
    return-void
.end method

.method public getDataMiscCeDirectory(I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDataMiscDeDirectory(I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscDeDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDataSystemCeDirectory(I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDataSystemDeDirectory(I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getUserSystemDirectory(I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final prepareUserData(ILandroid/content/pm/UserInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v2, Landroid/os/storage/StorageManager;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p0, v2, p2, p1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;Landroid/content/pm/UserInfo;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0, v2, p2, p1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;Landroid/content/pm/UserInfo;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    throw p0
.end method

.method public final prepareUserDataLI(Ljava/lang/String;Landroid/content/pm/UserInfo;IZ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v4, p3

    .line 8
    .line 9
    const-string/jumbo v5, "prepareUserData failed for user "

    .line 10
    .line 11
    .line 12
    const-string v0, "Setting property: "

    .line 13
    .line 14
    const-string/jumbo v6, "sys.user."

    .line 15
    .line 16
    .line 17
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    .line 18
    .line 19
    iget v8, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 20
    .line 21
    iget-object v9, v1, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-class v10, Landroid/os/storage/StorageManager;

    .line 24
    .line 25
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    check-cast v9, Landroid/os/storage/StorageManager;

    .line 30
    .line 31
    iget-wide v10, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 32
    .line 33
    const-wide/16 v12, 0x0

    .line 34
    .line 35
    cmp-long v10, v10, v12

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x1

    .line 39
    if-nez v10, :cond_0

    .line 40
    .line 41
    move v10, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v10, v11

    .line 44
    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v15

    .line 56
    filled-new-array {v2, v13, v14, v15}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    const-string v14, "Preparing user data; volumeUuid=%s, userId=%d, flags=0x%x, isNewUser=%s"

    .line 61
    .line 62
    const-string v15, "UserDataPreparer"

    .line 63
    .line 64
    invoke-static {v15, v14, v13}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v9, v2, v7, v4}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    and-int/lit8 v9, v4, 0x1

    .line 71
    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/UserDataPreparer;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-static {v9, v8}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 79
    .line 80
    .line 81
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v9, v8}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    :goto_1
    and-int/lit8 v9, v4, 0x2

    .line 100
    .line 101
    if-eqz v9, :cond_2

    .line 102
    .line 103
    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/UserDataPreparer;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-static {v13, v8}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 108
    .line 109
    .line 110
    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_2

    .line 117
    .line 118
    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-static {v13, v8}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object v13, v1, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 126
    .line 127
    invoke-virtual {v13}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 128
    .line 129
    .line 130
    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    if-nez v14, :cond_3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    :try_start_1
    iget-object v13, v13, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 135
    .line 136
    invoke-interface {v13, v2, v7, v8, v4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    .line 139
    :goto_2
    if-eqz v9, :cond_8

    .line 140
    .line 141
    if-nez v7, :cond_8

    .line 142
    .line 143
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v6, ".ce_available"

    .line 152
    .line 153
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, "=true"

    .line 169
    .line 170
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    const-string/jumbo v0, "true"

    .line 181
    .line 182
    .line 183
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :catch_1
    move-exception v0

    .line 189
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :goto_3
    const-string v6, " on volume "

    .line 195
    .line 196
    const/4 v8, 0x6

    .line 197
    if-eqz v10, :cond_4

    .line 198
    .line 199
    const-string v9, "Destroying user "

    .line 200
    .line 201
    const-string v13, " because we failed to prepare: "

    .line 202
    .line 203
    invoke-static {v7, v9, v6, v2, v13}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v7, v4, v2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_4
    const-string v9, "Failed to prepare user "

    .line 222
    .line 223
    const-string v13, ": "

    .line 224
    .line 225
    invoke-static {v7, v9, v6, v2, v13}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :goto_4
    if-eqz p4, :cond_5

    .line 240
    .line 241
    or-int/lit8 v0, v4, 0x1

    .line 242
    .line 243
    invoke-virtual {v1, v2, v3, v0, v11}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;Landroid/content/pm/UserInfo;IZ)V

    .line 244
    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_5
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .line 261
    .line 262
    if-eqz v10, :cond_6

    .line 263
    .line 264
    if-nez v7, :cond_6

    .line 265
    .line 266
    if-nez v2, :cond_6

    .line 267
    .line 268
    iget-object v0, v1, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    const-string v1, "failed to prepare internal storage for system user"

    .line 271
    .line 272
    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :catch_2
    move-exception v0

    .line 277
    goto :goto_7

    .line 278
    :cond_6
    :goto_5
    if-eqz v10, :cond_8

    .line 279
    .line 280
    const/16 v0, 0x4d

    .line 281
    .line 282
    if-eq v7, v0, :cond_7

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_7
    const-string v0, "Failed to prepare user data of Maintenance mode"

    .line 286
    .line 287
    const-string v1, "MaintenanceMode"

    .line 288
    .line 289
    invoke-static {v0, v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v1, Ljava/lang/RuntimeException;

    .line 293
    .line 294
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v1

    .line 298
    :cond_8
    :goto_6
    return-void

    .line 299
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 300
    .line 301
    const-string v2, "error rebooting into recovery"

    .line 302
    .line 303
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    throw v1
.end method

.method public reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 18
    .line 19
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 20
    .line 21
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_3

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .line 64
    const-string v3, "Destroying user directory "

    .line 65
    .line 66
    const/4 v4, 0x5

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p3, " because no matching user was found"

    .line 78
    .line 79
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    :try_start_1
    iget v2, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 91
    .line 92
    invoke-static {p3, v2}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p3, " because we failed to enforce serial number: "

    .line 106
    .line 107
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    iget-object p3, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 121
    .line 122
    iget-object v2, p3, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    .line 126
    .line 127
    const/4 v2, 0x3

    .line 128
    :try_start_2
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    :try_start_3
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catchall_1
    move-exception p1

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :goto_3
    throw p0

    .line 145
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v2, "Invalid user directory "

    .line 148
    .line 149
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    const-string v0, "UserDataPreparer"

    .line 160
    .line 161
    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_3
    return-void
.end method
