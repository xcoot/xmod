.class public final Lcom/android/server/backup/KeyValueAdbRestoreEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mDataDir:Ljava/io/File;

.field public final mInFD:Landroid/os/ParcelFileDescriptor;

.field public final mInfo:Lcom/android/server/backup/FileMetadata;

.field public final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    .line 15
    .line 16
    return-void
.end method

.method public static copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-array v3, v2, [B

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, [B

    .line 69
    .line 70
    array-length v3, v2

    .line 71
    invoke-virtual {p1, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    array-length v1, v2

    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public final invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    .locals 10

    .line 1
    const-string v0, "KeyValueAdbRestoreEngine"

    .line 2
    .line 3
    iget-object v1, p2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 8
    .line 9
    const-string v4, ".new"

    .line 10
    .line 11
    invoke-static {v1, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/high16 v1, 0x10000000

    .line 19
    .line 20
    :try_start_0
    invoke-static {p3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/high16 p3, 0x3c000000    # 0.0078125f

    .line 25
    .line 26
    invoke-static {v2, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->version:J

    .line 31
    .line 32
    iget v8, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 35
    .line 36
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 37
    .line 38
    move-object v3, p1

    .line 39
    invoke-interface/range {v3 .. v9}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :goto_0
    const-string p1, "Exception calling doRestore on agent: "

    .line 48
    .line 49
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    const-string p1, "Exception opening file. "

    .line 54
    .line 55
    invoke-static {p1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method

.method public final prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v10, Ljava/io/File;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 6
    .line 7
    const-string v2, ".restore"

    .line 8
    .line 9
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v11, Ljava/io/File;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 19
    .line 20
    const-string v1, ".sorted"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v11, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 30
    .line 31
    iget v4, p1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 34
    .line 35
    iget-wide v7, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 36
    .line 37
    move-object v1, p2

    .line 38
    move-object v9, v10

    .line 39
    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 44
    .line 45
    invoke-direct {p1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    .line 47
    .line 48
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 49
    .line 50
    invoke-direct {p2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    :try_start_2
    new-instance p0, Landroid/app/backup/BackupDataInput;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    .line 79
    .line 80
    return-object v11

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception p2

    .line 84
    move-object v12, p2

    .line 85
    move-object p2, p0

    .line 86
    move-object p0, v12

    .line 87
    goto :goto_0

    .line 88
    :catchall_2
    move-exception p1

    .line 89
    move-object p2, p0

    .line 90
    move-object p0, p1

    .line 91
    move-object p1, p2

    .line 92
    :goto_0
    if-eqz p1, :cond_0

    .line 93
    .line 94
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    .line 99
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    throw p0
.end method

.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
