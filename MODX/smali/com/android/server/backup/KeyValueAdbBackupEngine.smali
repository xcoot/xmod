.class public final Lcom/android/server/backup/KeyValueAdbBackupEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public final mBackupDataName:Ljava/io/File;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBlankStateName:Ljava/io/File;

.field public final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public final mDataDir:Ljava/io/File;

.field public final mManifestFile:Ljava/io/File;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public final mNewStateName:Ljava/io/File;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mSavedState:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 8
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    iput-object p6, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    .line 14
    new-instance p1, Ljava/io/File;

    .line 16
    const-string/jumbo p4, "key_value_dir"

    .line 19
    invoke-direct {p1, p5, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 25
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 27
    new-instance p4, Ljava/io/File;

    .line 29
    const-string/jumbo p5, "blank_state"

    .line 32
    invoke-direct {p4, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 37
    new-instance p4, Ljava/io/File;

    .line 39
    const-string p5, ".data"

    .line 41
    invoke-static {p2, p5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p5

    .line 45
    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 50
    new-instance p4, Ljava/io/File;

    .line 52
    const-string p5, ".new"

    .line 54
    invoke-static {p2, p5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 63
    new-instance p1, Ljava/io/File;

    .line 65
    const-string p2, "_manifest"

    .line 67
    invoke-direct {p1, p6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    .line 72
    iget-object p1, p3, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 74
    const-string p2, "Timeout parameters cannot be null"

    .line 76
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 81
    return-void
.end method


# virtual methods
.method public final backupOnePackage()V
    .locals 5

    .line 1
    const-string v0, "KeyValueAdbBackupEngine"

    .line 3
    const-string v1, "Failed creating files for package "

    .line 5
    const-string v2, "Backup Failed for package "

    .line 7
    const-string v3, "Failed binding to BackupAgent for package "

    .line 9
    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 11
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->prepareBackupFiles()V

    .line 16
    invoke-virtual {p0, v4}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;

    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 29
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception v2

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 51
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z

    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 66
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 81
    return-void

    .line 82
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->writeBackupData()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 88
    goto :goto_2

    .line 89
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 96
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " will ignore package. "

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    goto :goto_0

    .line 117
    :goto_2
    return-void

    .line 118
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 121
    throw v0
.end method

.method public final bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "error in binding to agent for package "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ". "

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string p1, "KeyValueAdbBackupEngine"

    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final cleanup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 20
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 25
    return-void
.end method

.method public final invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "KeyValueAdbBackupEngine"

    .line 7
    const-string v3, "Key-value backup failed on package "

    .line 9
    iget-object v4, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 14
    move-result v11

    .line 15
    iget-object v5, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 17
    invoke-virtual {v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    .line 20
    move-result-wide v7

    .line 21
    const/4 v12, 0x0

    .line 22
    :try_start_0
    iget-object v5, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    move v6, v11

    .line 27
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 30
    new-instance v5, Lcom/android/server/backup/remote/ServiceBackupCallback;

    .line 32
    iget-object v6, v4, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 34
    invoke-direct {v5, v6, v11}, Lcom/android/server/backup/remote/ServiceBackupCallback;-><init>(Landroid/app/backup/IBackupManager;I)V

    .line 37
    iget-object v14, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 39
    iget-object v15, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 41
    iget-object v0, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 43
    const-wide v17, 0x7fffffffffffffffL

    .line 48
    const/16 v20, 0x0

    .line 50
    move-object/from16 v13, p2

    .line 52
    move-object/from16 v16, v0

    .line 54
    move-object/from16 v19, v5

    .line 56
    invoke-interface/range {v13 .. v20}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 59
    invoke-virtual {v4, v11}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return v12

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x1

    .line 84
    return v0

    .line 85
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    const-string v4, "Error invoking agent for backup on "

    .line 89
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ". "

    .line 97
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v12
.end method

.method public final prepareBackupFiles()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 3
    const/high16 v1, 0x18000000

    .line 5
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 11
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 13
    const/high16 v1, 0x3c000000    # 0.0078125f

    .line 15
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 21
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 23
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "SELinux restorecon failed on "

    .line 33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v2, "KeyValueAdbBackupEngine"

    .line 47
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 52
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 58
    return-void
.end method

.method public final writeBackupData()V
    .locals 15

    .line 1
    const-string v0, "KeyValueAdbBackupEngine"

    .line 3
    const-string v1, "Error backing up "

    .line 5
    const-string v2, "Full backup failed on package "

    .line 7
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 12
    move-result v10

    .line 13
    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 15
    invoke-virtual {v4}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    .line 18
    move-result-wide v6

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x1

    .line 21
    const/4 v13, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 25
    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    move v5, v10

    .line 31
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 34
    new-instance v4, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;

    .line 36
    iget-object v5, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 38
    aget-object v6, v14, v12

    .line 40
    invoke-direct {v4, p0, v5, v6, v10}, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;-><init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V

    .line 43
    aget-object v5, v14, v12

    .line 45
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 48
    aput-object v13, v14, v12

    .line 50
    new-instance v5, Ljava/lang/Thread;

    .line 52
    const-string/jumbo v6, "key-value-app-data-runner"

    .line 55
    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 61
    aget-object v4, v14, v11

    .line 63
    iget-object v5, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 65
    invoke-static {v4, v5}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {v3, v10}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 81
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object v13, v14

    .line 96
    goto :goto_4

    .line 97
    :catch_0
    move-exception v2

    .line 98
    move-object v13, v14

    .line 99
    goto :goto_2

    .line 100
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 102
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 105
    aget-object p0, v14, v11

    .line 107
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 110
    aget-object p0, v14, v12

    .line 112
    :goto_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    goto :goto_4

    .line 118
    :catch_1
    move-exception v2

    .line 119
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 126
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ": "

    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 148
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 151
    if-eqz v13, :cond_1

    .line 153
    aget-object p0, v13, v11

    .line 155
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    aget-object p0, v13, v12

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    :goto_3
    return-void

    .line 162
    :goto_4
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 164
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 167
    if-eqz v13, :cond_2

    .line 169
    aget-object p0, v13, v11

    .line 171
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    aget-object p0, v13, v12

    .line 176
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 179
    :cond_2
    throw v0
.end method
