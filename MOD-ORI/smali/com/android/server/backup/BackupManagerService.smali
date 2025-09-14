.class public final Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"

.field public static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultBackupUserId:I

.field public final mGlobalDisable:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasFirstUserUnlockedSinceBoot:Z

.field public final mStateLock:Ljava/lang/Object;

.field public final mTransportWhitelist:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserRemovedReceiver:Lcom/android/server/backup/BackupManagerService$1;

.field public final mUserServices:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupDisabled()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 26
    .line 27
    new-instance v2, Landroid/os/HandlerThread;

    .line 28
    .line 29
    const-string v3, "backup"

    .line 30
    .line 31
    const/16 v4, 0xa

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    .line 55
    .line 56
    new-instance v2, Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v2, v2, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 68
    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_0
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 76
    .line 77
    new-instance v2, Landroid/content/IntentFilter;

    .line 78
    .line 79
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 80
    .line 81
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    :goto_0
    iput v1, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "Default backup user id = "

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget p0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 112
    .line 113
    const-string v0, "BackupManagerService"

    .line 114
    .line 115
    invoke-static {p1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static createFile(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

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
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Failed to create file "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "BackupManagerService"

    .line 40
    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Failed to delete file "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "BackupManagerService"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public static showDumpUsage(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "\'dumpsys backup\' optional arguments:"

    .line 2
    .line 3
    const-string v1, "  --help    : this help text"

    .line 4
    .line 5
    const-string v2, "  a[gents] : dump information about defined backup agents"

    .line 6
    .line 7
    const-string v3, "  transportclients : dump information about transport clients"

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "  transportstats : dump transport stats"

    .line 13
    .line 14
    const-string v1, "  users    : dump the list of users for which backup service is running"

    .line 15
    .line 16
    const-string v2, "  --user <userId> : dump information for user userId"

    .line 17
    .line 18
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    move-object v0, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v2, p2

    .line 16
    move v3, p3

    .line 17
    move-object v4, p4

    .line 18
    move-object v5, p5

    .line 19
    move-object v6, p6

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "adbBackup()"

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v12, 0x1

    .line 19
    move-object v2, p2

    .line 20
    move/from16 v3, p3

    .line 21
    .line 22
    move/from16 v4, p4

    .line 23
    .line 24
    move/from16 v5, p5

    .line 25
    .line 26
    move/from16 v6, p6

    .line 27
    .line 28
    move/from16 v7, p7

    .line 29
    .line 30
    move/from16 v8, p8

    .line 31
    .line 32
    move/from16 v9, p9

    .line 33
    .line 34
    move/from16 v10, p10

    .line 35
    .line 36
    move-object/from16 v11, p11

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "adbRestore()"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "agentConnected()"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p1, "Non-system process uid="

    .line 16
    .line 17
    const-string v0, "agentConnected pkg="

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x3e8

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    const-string p1, "BackupManagerService"

    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, " agent="

    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {v2, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const-string p2, "BackupManagerService"

    .line 74
    .line 75
    iget p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, " claiming agent connected"

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p3, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    .line 109
    .line 110
    monitor-exit v1

    .line 111
    goto :goto_2

    .line 112
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_1
    :goto_2
    return-void
.end method

.method public final agentDisconnected(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnectedForUser(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final agentDisconnectedForUser(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const-string v0, "agentDisconnected()"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    const-string p1, "agentDisconnected: the backup agent for "

    .line 16
    .line 17
    const-string v0, "Non-system process uid="

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x3e8

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    const-string v2, "BackupManagerService"

    .line 41
    .line 42
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " claiming agent disconnected"

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    const-string v0, "BackupManagerService"

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " died: cancel current operations"

    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const-string p2, "agent-disconnected"

    .line 101
    .line 102
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/UserBackupManagerService;->getThreadForAsyncOperation(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 112
    .line 113
    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 116
    .line 117
    const/16 p2, 0x65

    .line 118
    .line 119
    if-eqz p1, :cond_1

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 122
    .line 123
    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 129
    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 141
    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 145
    .line 146
    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 152
    .line 153
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    throw p0

    .line 165
    :cond_2
    :goto_2
    return-void
.end method

.method public final backupNow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final backupNowForUser(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "backupNow()"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    const-string v0, "beginRestoreSession()"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    const-string p1, "Failed to get operation type from transport: "

    .line 19
    .line 20
    const-string v0, "BackupManagerService"

    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "beginRestoreSession: pkg="

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " transport="

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-nez p3, :cond_1

    .line 55
    .line 56
    iget-object p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 57
    .line 58
    iget-object p3, p3, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, p2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    .line 73
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 74
    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ne v2, v3, :cond_1

    .line 80
    .line 81
    move v0, v4

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const-string p1, "BackupManagerService"

    .line 84
    .line 85
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 86
    .line 87
    const-string p3, "Asked to restore nonexistent pkg "

    .line 88
    .line 89
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-static {p0, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string p1, "Package "

    .line 103
    .line 104
    const-string p3, " not found"

    .line 105
    .line 106
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    const-string v2, "android.permission.BACKUP"

    .line 119
    .line 120
    const-string v3, "beginRestoreSession"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    const-string v0, "BackupManagerService"

    .line 127
    .line 128
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 129
    .line 130
    const-string/jumbo v3, "restoring self on current transport; no permission needed"

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 141
    .line 142
    const-string v2, "BMS.beginRestoreSession"

    .line 143
    .line 144
    invoke-virtual {v0, p3, v2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 145
    .line 146
    .line 147
    move-result-object v0
    :try_end_1
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 148
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupDestinationFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I

    .line 149
    .line 150
    .line 151
    move-result p1
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 153
    .line 154
    const-string v3, "BMS.beginRestoreSession"

    .line 155
    .line 156
    iget-object v2, v2, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 157
    .line 158
    invoke-virtual {v2, v0, v3}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    monitor-enter p0

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    const-string p1, "BackupManagerService"

    .line 167
    .line 168
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 169
    .line 170
    const-string p3, "Restore session requested but one already active"

    .line 171
    .line 172
    invoke-static {p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    monitor-exit p0

    .line 180
    goto :goto_5

    .line 181
    :catchall_0
    move-exception p1

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 184
    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    const-string p1, "BackupManagerService"

    .line 188
    .line 189
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 190
    .line 191
    const-string p3, "Restore session requested but currently running backups"

    .line 192
    .line 193
    invoke-static {p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    monitor-exit p0

    .line 201
    goto :goto_5

    .line 202
    :cond_4
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 214
    .line 215
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 216
    .line 217
    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide p2

    .line 221
    const/16 v0, 0x8

    .line 222
    .line 223
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    .line 225
    .line 226
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    throw p1

    .line 232
    :catchall_1
    move-exception p1

    .line 233
    move-object v1, v0

    .line 234
    goto :goto_4

    .line 235
    :catch_1
    move-exception p2

    .line 236
    goto :goto_3

    .line 237
    :catchall_2
    move-exception p1

    .line 238
    goto :goto_4

    .line 239
    :catch_2
    move-exception p2

    .line 240
    move-object v0, v1

    .line 241
    :goto_3
    :try_start_5
    const-string p3, "BackupManagerService"

    .line 242
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .line 257
    .line 258
    if-eqz v0, :cond_6

    .line 259
    .line 260
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 261
    .line 262
    const-string p1, "BMS.beginRestoreSession"

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 265
    .line 266
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :goto_4
    if-eqz v1, :cond_5

    .line 271
    .line 272
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 273
    .line 274
    const-string p2, "BMS.beginRestoreSession"

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 277
    .line 278
    invoke-virtual {p0, v1, p2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_5
    throw p1

    .line 282
    :cond_6
    :goto_5
    return-object v1
.end method

.method public binderGetCallingUid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public binderGetCallingUserId()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final cancelBackups()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->cancelBackupsForUser(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final cancelBackupsForUser(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string/jumbo v0, "cancelBackups()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v2, "android.permission.BACKUP"

    .line 23
    .line 24
    const-string/jumbo v3, "cancelBackups"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->operationTokensForOpType()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    new-instance v5, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda12;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    invoke-virtual {v0, v4, v6, v5}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const-wide/32 v3, 0x36ee80

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0, v3, v4, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    const-wide/32 v3, 0x6ddd00

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0, v3, v4, p0}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_1
    :goto_2
    return-void
.end method

.method public final clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "clearBackupData()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final dataChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedForUser(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final dataChangedForUser(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string/jumbo v0, "dataChanged()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-string/jumbo p1, "dataChanged but no participant pkg=\'"

    .line 23
    .line 24
    .line 25
    const-string v0, "\' uid="

    .line 26
    .line 27
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "BackupManagerService"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$4;

    .line 55
    .line 56
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/backup/UserBackupManagerService$4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "BackupManagerService"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    array-length p1, p3

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-gtz p1, :cond_1

    .line 16
    .line 17
    move-object p1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    aget-object p1, p3, v1

    .line 20
    .line 21
    :goto_0
    const-string v2, "--help"

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_c

    .line 28
    .line 29
    const-string v2, "-h"

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_2
    const-string/jumbo v2, "users"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string/jumbo v3, "dump()"

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    const-string p1, "Backup Manager is running for users:"

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ge v1, p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0, p1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, " "

    .line 79
    .line 80
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    const-string v2, "--user"

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    array-length p1, p3

    .line 111
    const/4 v1, 0x1

    .line 112
    if-lt v1, p1, :cond_6

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    aget-object v0, p3, v1

    .line 116
    .line 117
    :goto_2
    if-nez v0, :cond_7

    .line 118
    .line 119
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->showDumpUsage(Ljava/io/PrintWriter;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-eqz p0, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    return-void

    .line 137
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-ge v1, p1, :cond_b

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p0, p1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_b
    return-void

    .line 164
    :cond_c
    :goto_4
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->showDumpUsage(Ljava/io/PrintWriter;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "Returning from excludeKeysFromRestore as backup for user"

    .line 16
    .line 17
    const-string p1, " is not initialized yet"

    .line 18
    .line 19
    const-string p2, "BackupManagerService"

    .line 20
    .line 21
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string/jumbo v1, "excludeKeysFromRestore()"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "android.permission.BACKUP"

    .line 37
    .line 38
    const-string/jumbo v2, "excludeKeysFromRestore"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/util/HashSet;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/backup/UserBackupPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/backup/UserBackupPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/backup/UserBackupPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public final filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const-string/jumbo v0, "filterAppsEligibleForBackup()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v1, "android.permission.BACKUP"

    .line 23
    .line 24
    const-string/jumbo v2, "filterAppsEligibleForBackup"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :try_start_0
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    array-length v5, p2

    .line 46
    const/4 v6, 0x0

    .line 47
    move v7, v6

    .line 48
    :goto_0
    if-ge v7, v5, :cond_2

    .line 49
    .line 50
    aget-object v8, p2, v7

    .line 51
    .line 52
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 53
    .line 54
    invoke-virtual {v9, v3, v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-eqz v3, :cond_3

    .line 70
    .line 71
    iget-object p0, p1, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 72
    .line 73
    invoke-virtual {p0, v3, v2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    new-array p0, v6, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    move-object v1, p0

    .line 88
    goto :goto_3

    .line 89
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_4
    :goto_3
    return-object v1
.end method

.method public final fullBackupCustomized(ILjava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .locals 14

    .line 1
    move v0, p1

    .line 2
    :try_start_0
    const-string/jumbo v1, "fullBackupCustomized()"

    .line 3
    .line 4
    .line 5
    move-object v2, p0

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    move-object/from16 v3, p2

    .line 15
    .line 16
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/high16 v3, 0x30000000

    .line 20
    .line 21
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v1, 0x200

    .line 26
    .line 27
    iput v1, v2, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 28
    .line 29
    sget-object v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    move-object/from16 v4, p14

    .line 34
    .line 35
    iput-object v4, v1, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 39
    .line 40
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    iput-object v4, v1, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v4, v1, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    move-object/from16 v1, p12

    .line 48
    .line 49
    iput-object v1, v2, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    sput-object v1, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    .line 54
    .line 55
    const/4 v13, 0x1

    .line 56
    move/from16 v4, p3

    .line 57
    .line 58
    move/from16 v5, p4

    .line 59
    .line 60
    move/from16 v6, p5

    .line 61
    .line 62
    move/from16 v7, p6

    .line 63
    .line 64
    move/from16 v8, p7

    .line 65
    .line 66
    move/from16 v9, p8

    .line 67
    .line 68
    move/from16 v10, p9

    .line 69
    .line 70
    move/from16 v11, p13

    .line 71
    .line 72
    move-object/from16 v12, p10

    .line 73
    .line 74
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    .line 79
    sput-object v1, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string/jumbo v1, "userId "

    .line 83
    .line 84
    .line 85
    const-string v2, " fullbackupCustomized error"

    .line 86
    .line 87
    const-string v3, "BackupManagerService"

    .line 88
    .line 89
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    return-void
.end method

.method public final fullRestoreCustomized(ILjava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .locals 0

    .line 1
    :try_start_0
    const-string/jumbo p3, "fullRestoreCustomized()"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->fullRestoreCustomized(Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string/jumbo p0, "userId "

    .line 15
    .line 16
    .line 17
    const-string p2, " fullRestoreCustomized error "

    .line 18
    .line 19
    const-string p3, "BackupManagerService"

    .line 20
    .line 21
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public final fullTransportBackupForUser(I[Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    const-string/jumbo v1, "fullTransportBackup()"

    .line 10
    .line 11
    .line 12
    move-object/from16 v2, p0

    .line 13
    .line 14
    move/from16 v3, p1

    .line 15
    .line 16
    invoke-virtual {v2, v3, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object v14

    .line 20
    if-eqz v14, :cond_4

    .line 21
    .line 22
    iget-object v2, v14, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v3, "android.permission.BACKUP"

    .line 25
    .line 26
    const-string/jumbo v4, "fullTransportBackup"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget-object v2, v14, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v14, v2}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string v15, "BackupManagerService"

    .line 47
    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    iget v0, v14, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 51
    .line 52
    const-string v1, "Full backup not currently possible -- key/value backup not yet run?"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_0
    iget v2, v14, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 64
    .line 65
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v16

    .line 76
    :try_start_0
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-direct {v13, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iget-object v3, v14, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 83
    .line 84
    const-string v1, "BMS.fullTransportBackup()"

    .line 85
    .line 86
    const/4 v12, 0x0

    .line 87
    invoke-virtual {v14, v12}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 88
    .line 89
    .line 90
    move-result-object v18

    .line 91
    iget-object v2, v14, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    new-instance v11, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    invoke-direct {v11, v2, v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 102
    .line 103
    .line 104
    new-instance v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    move-object v1, v10

    .line 114
    move-object v2, v14

    .line 115
    move-object/from16 v5, p2

    .line 116
    .line 117
    move-object v8, v13

    .line 118
    move-object/from16 v21, v10

    .line 119
    .line 120
    move-object/from16 v10, v19

    .line 121
    .line 122
    move/from16 v19, v12

    .line 123
    .line 124
    move/from16 v12, v20

    .line 125
    .line 126
    move-object/from16 v20, v13

    .line 127
    .line 128
    move-object/from16 v13, v18

    .line 129
    .line 130
    invoke-direct/range {v1 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v14, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/lang/Thread;

    .line 139
    .line 140
    const-string/jumbo v2, "full-transport-master"

    .line 141
    .line 142
    .line 143
    move-object/from16 v3, v21

    .line 144
    .line 145
    invoke-direct {v1, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    :catch_0
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    array-length v3, v0

    .line 159
    move/from16 v12, v19

    .line 160
    .line 161
    :goto_0
    if-ge v12, v3, :cond_1

    .line 162
    .line 163
    aget-object v4, v0, v12

    .line 164
    .line 165
    invoke-virtual {v14, v1, v2, v4}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .line 167
    .line 168
    add-int/lit8 v12, v12, 0x1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    goto :goto_3

    .line 173
    :catch_1
    move-exception v0

    .line 174
    goto :goto_2

    .line 175
    :cond_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    .line 177
    .line 178
    :goto_1
    iget v0, v14, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 179
    .line 180
    const-string v1, "Done with full transport backup."

    .line 181
    .line 182
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    const-string v1, "No TransportConnection available"

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :goto_2
    :try_start_4
    const-string v1, "Failed to start backup: "

    .line 199
    .line 200
    invoke-static {v15, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    .line 202
    .line 203
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    const-string v1, "Restore supported only for the device owner"

    .line 214
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_4
    :goto_4
    return-void
.end method

.method public getActivatedFileForUser(I)Ljava/io/File;
    .locals 3

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "backup-activated"

    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string/jumbo v0, "getAvailableRestoreToken()"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "getConfigurationIntent()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v2, "getConfigurationIntent"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    move-object v1, p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "Unable to get configuration intent from transport: "

    .line 49
    .line 50
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 65
    .line 66
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "BackupManagerService"

    .line 71
    .line 72
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCurrentTransport()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportForUser(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "getCurrentTransportComponent()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v2, "getCurrentTransportComponent"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportComponent()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getCurrentTransportForUser(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "getCurrentTransport()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v1, "getCurrentTransport"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 31
    .line 32
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "getDataManagementIntent()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v2, "getDataManagementIntent"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    move-object v1, p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    const-string p2, "BackupManagerService"

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Unable to get management intent from transport: "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "getDataManagementLabel()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v2, "getDataManagementLabel"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    move-object v1, p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    const-string p2, "BackupManagerService"

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Unable to get management label from transport: "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "getDestinationString()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v2, "getDestinationString"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    move-object v1, p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "Unable to get destination string from transport: "

    .line 49
    .line 50
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 65
    .line 66
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "BackupManagerService"

    .line 71
    .line 72
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .locals 3

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "backup-remember-activated"

    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/backup/UserBackupManagerService;

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Called "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, " for unknown user: "

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "BackupManagerService"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    return-object p0
.end method

.method public getSuppressFileForUser(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "backup-suppress"

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final getTransportWhitelist()[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/content/ComponentName;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    aput-object v2, v0, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

.method public final getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v4, v0, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    array-length v2, v0

    .line 32
    :goto_0
    if-ge v5, v2, :cond_3

    .line 33
    .line 34
    aget v3, v0, v5

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/server/backup/UserBackupManagerService;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 47
    .line 48
    iget-object v7, v4, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 49
    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    new-instance v7, Ljava/io/File;

    .line 53
    .line 54
    iget v8, v4, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 55
    .line 56
    invoke-static {v8}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const-string/jumbo v9, "serial_id"

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v7, v4, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 67
    .line 68
    :cond_1
    iget-object v7, v4, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 69
    .line 70
    const-string/jumbo v8, "r"

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catch_0
    move-exception v6

    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception v7

    .line 87
    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception v6

    .line 92
    :try_start_5
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 96
    :goto_2
    iget v4, v4, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 97
    .line 98
    const-string v7, "Unable to read work profile serial number file:"

    .line 99
    .line 100
    invoke-static {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v7, "BackupManagerService"

    .line 105
    .line 106
    invoke-static {v7, v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :catch_1
    const-wide/16 v7, -0x1

    .line 110
    .line 111
    :goto_3
    cmp-long v4, v7, p1

    .line 112
    .line 113
    if-nez v4, :cond_2

    .line 114
    .line 115
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    return-object v1

    .line 124
    :catchall_2
    move-exception p0

    .line 125
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserServices()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasBackupPassword()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const-string/jumbo v0, "hasBackupPassword()"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v2, "android.permission.BACKUP"

    .line 27
    .line 28
    const-string/jumbo v3, "hasBackupPassword"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-lez p0, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_1
    return v1
.end method

.method public final initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "initializeTransports()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string/jumbo v0, "isAppEligibleForBackup()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v2, "isAppEligibleForBackup"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 39
    .line 40
    invoke-virtual {p0, v3, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 47
    .line 48
    invoke-virtual {p1, v3, v2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    :goto_0
    return p0
.end method

.method public final isBackupActivatedForUser(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_0
    if-nez p1, :cond_2

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    if-nez v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_5

    .line 50
    .line 51
    :cond_4
    move v0, v2

    .line 52
    :cond_5
    return v0
.end method

.method public isBackupDisabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "ro.backup.disable"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isBackupEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabledForUser(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isBackupEnabledForUser(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "isBackupEnabled()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v0, "android.permission.BACKUP"

    .line 19
    .line 20
    const-string/jumbo v1, "isBackupEnabled"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final isBackupServiceActive(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/32 v1, 0x9723ef2

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v1, "android.permission.BACKUP"

    .line 17
    .line 18
    const-string/jumbo v2, "isBackupServiceActive"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final isSubUserSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isUserReadyForBackup(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const-string/jumbo v2, "isUserReadyForBackup()"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "listAllTransportComponents()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "android.permission.BACKUP"

    .line 21
    .line 22
    const-string/jumbo v1, "listAllTransportComponents"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v0, Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 42
    .line 43
    check-cast p0, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    new-array p0, p0, [Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-object v1, p0

    .line 56
    check-cast v1, [Landroid/content/ComponentName;

    .line 57
    .line 58
    monitor-exit p1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final listAllTransports()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransportsForUser(I)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final listAllTransportsForUser(I)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "listAllTransports()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final opComplete(IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opCompleteForUser(IIJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final opCompleteForUser(IIJ)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-string/jumbo v0, "opComplete()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 17
    .line 18
    const-string v0, "[UserID:"

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/backup/internal/Operation;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget v3, v2, Lcom/android/server/backup/internal/Operation;->state:I

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    const/4 v5, 0x0

    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    move-object v2, v5

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    const/4 v4, 0x1

    .line 49
    if-ne v3, v4, :cond_1

    .line 50
    .line 51
    const-string v2, "LifecycleOperationStorage"

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v0, p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, "] Received duplicate ack for token="

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    if-nez v3, :cond_2

    .line 89
    .line 90
    iput v4, v2, Lcom/android/server/backup/internal/Operation;->state:I

    .line 91
    .line 92
    :cond_2
    :goto_1
    iget-object p1, p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 95
    .line 96
    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    iget-object p1, v2, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 113
    .line 114
    const/16 p2, 0x15

    .line 115
    .line 116
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0

    .line 126
    :cond_3
    :goto_3
    return-void
.end method

.method public postToHandler(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "Returning from reportDelayedRestoreResult as backup for user"

    .line 16
    .line 17
    const-string p1, " is not initialized yet"

    .line 18
    .line 19
    const-string p2, "BackupManagerService"

    .line 20
    .line 21
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string/jumbo v1, "reportDelayedRestoreResult()"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 10

    .line 2
    const-string/jumbo v0, "requestBackup()"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    const/16 p1, -0x7d1

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/backup/UserBackupManagerService;->getBMMEventSender(Landroid/app/backup/IBackupManagerMonitor;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "requestBackup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v1, "BackupManagerService"

    const/16 v2, -0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    array-length v5, p2

    if-lt v5, v3, :cond_4

    .line 7
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 9
    iget-object v1, p1, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 12
    invoke-virtual {p1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow()Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v7

    .line 13
    invoke-virtual {p0, v7}, Lcom/android/server/backup/UserBackupManagerService;->getBackupDestinationFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I

    move-result p1
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    new-instance v9, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v9, p0, v7, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;I)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    .line 16
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 17
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->getRequestBackupParams([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/BackupParams;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    goto :goto_2

    .line 19
    :catch_0
    invoke-static {p3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 p0, 0x32

    .line 20
    invoke-virtual {v0, p0, v4, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    move p1, v2

    goto :goto_2

    .line 21
    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Backup requested but enabled="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p5, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " setupComplete="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 22
    invoke-static {p2, p4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p3, p1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 25
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz p0, :cond_3

    const/16 p0, 0xd

    goto :goto_1

    :cond_3
    const/16 p0, 0xe

    :goto_1
    const/4 p2, 0x3

    .line 26
    invoke-virtual {v0, p0, v4, p2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_2
    return p1

    .line 27
    :cond_4
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p1, "No packages named for backup request"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 p0, 0x31

    .line 29
    invoke-virtual {v0, p0, v4, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No packages are provided for backup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public final requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p0, -0x7d1

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final restoreAtInstall(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final restoreAtInstallForUser(ILjava/lang/String;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    const-string/jumbo v1, "restoreAtInstall()"

    .line 10
    .line 11
    .line 12
    move-object/from16 v2, p0

    .line 13
    .line 14
    move/from16 v3, p1

    .line 15
    .line 16
    invoke-virtual {v2, v3, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_a

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x3e8

    .line 27
    .line 28
    const-string v4, "BackupManagerService"

    .line 29
    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Non-system process uid="

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " attemping install-time restore"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 71
    .line 72
    const-string/jumbo v3, "restoreAtInstall pkg="

    .line 73
    .line 74
    .line 75
    const-string v5, " token="

    .line 76
    .line 77
    invoke-static {v3, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, " restoreSet="

    .line 89
    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    const-wide/16 v2, 0x0

    .line 112
    .line 113
    cmp-long v2, v9, v2

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-nez v2, :cond_1

    .line 117
    .line 118
    move v2, v3

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const/4 v2, 0x0

    .line 121
    :goto_0
    const/4 v5, 0x0

    .line 122
    invoke-virtual {v1, v5}, Lcom/android/server/backup/UserBackupManagerService;->getBMMEventSender(Landroid/app/backup/IBackupManagerMonitor;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    new-instance v13, Landroid/content/pm/PackageInfo;

    .line 127
    .line 128
    invoke-direct {v13}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 134
    .line 135
    const-string v12, "BMS.restoreAtInstall()"

    .line 136
    .line 137
    invoke-virtual {v6, v12}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    if-nez v11, :cond_2

    .line 142
    .line 143
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 144
    .line 145
    const-string v5, "No transport client"

    .line 146
    .line 147
    invoke-static {v2, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move v2, v3

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_3

    .line 161
    .line 162
    :try_start_0
    const-string v6, "BMS.restoreAtInstall"

    .line 163
    .line 164
    invoke-virtual {v11, v6}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iput-object v6, v14, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_0
    const/16 v6, 0x32

    .line 176
    .line 177
    invoke-virtual {v14, v6, v13, v3, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    const-string v8, "android.app.backup.extra.OPERATION_TYPE"

    .line 185
    .line 186
    const/4 v7, 0x3

    .line 187
    if-eqz v5, :cond_4

    .line 188
    .line 189
    invoke-static {v3, v8}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const/16 v6, 0x49

    .line 194
    .line 195
    invoke-virtual {v14, v6, v13, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    :cond_4
    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 199
    .line 200
    if-nez v5, :cond_5

    .line 201
    .line 202
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 203
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v6, "Non-restorable state: auto="

    .line 207
    .line 208
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-boolean v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-static {v2, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move v2, v3

    .line 228
    :cond_5
    if-nez v2, :cond_7

    .line 229
    .line 230
    :try_start_1
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 231
    .line 232
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 233
    .line 234
    .line 235
    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    invoke-direct {v6, v1, v11, v5}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;I)V

    .line 239
    .line 240
    .line 241
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 242
    .line 243
    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    iget-object v15, v14, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 248
    .line 249
    move-object/from16 p1, v8

    .line 250
    .line 251
    :try_start_2
    iget-wide v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralBackupDestination:J

    .line 252
    .line 253
    const-wide/16 v17, 0x1

    .line 254
    .line 255
    cmp-long v7, v7, v17

    .line 256
    .line 257
    if-nez v7, :cond_6

    .line 258
    .line 259
    iget-wide v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 260
    .line 261
    cmp-long v7, v9, v7

    .line 262
    .line 263
    if-nez v7, :cond_6

    .line 264
    .line 265
    invoke-virtual {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    :goto_2
    move-object/from16 v17, v7

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_6
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :goto_3
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    new-instance v8, Lcom/android/server/backup/params/RestoreParams;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 280
    .line 281
    const/16 v18, 0x0

    .line 282
    .line 283
    const/16 v19, 0x0

    .line 284
    .line 285
    const/4 v7, 0x0

    .line 286
    move-object v3, v5

    .line 287
    move-object v5, v8

    .line 288
    move-object/from16 v20, v6

    .line 289
    .line 290
    move-object v6, v11

    .line 291
    move-object/from16 v21, p1

    .line 292
    .line 293
    move-object/from16 v22, v8

    .line 294
    .line 295
    move-object v8, v15

    .line 296
    move-object v15, v11

    .line 297
    move-object/from16 v11, v18

    .line 298
    .line 299
    move-object/from16 v23, v12

    .line 300
    .line 301
    move/from16 v12, p3

    .line 302
    .line 303
    move-object/from16 v24, v13

    .line 304
    .line 305
    move/from16 v13, v19

    .line 306
    .line 307
    move-object/from16 v25, v14

    .line 308
    .line 309
    move-object v14, v0

    .line 310
    move-object/from16 v26, v15

    .line 311
    .line 312
    move-object/from16 v15, v20

    .line 313
    .line 314
    move-object/from16 v16, v17

    .line 315
    .line 316
    :try_start_3
    invoke-direct/range {v5 .. v16}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v0, v22

    .line 320
    .line 321
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    .line 323
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 324
    .line 325
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :catch_1
    move-exception v0

    .line 330
    goto :goto_5

    .line 331
    :catch_2
    move-exception v0

    .line 332
    move-object/from16 v21, p1

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :catch_3
    move-exception v0

    .line 336
    move-object/from16 v21, v8

    .line 337
    .line 338
    :goto_4
    move-object/from16 v26, v11

    .line 339
    .line 340
    move-object/from16 v23, v12

    .line 341
    .line 342
    move-object/from16 v24, v13

    .line 343
    .line 344
    move-object/from16 v25, v14

    .line 345
    .line 346
    :goto_5
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 347
    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v5, "Unable to contact transport: "

    .line 351
    .line 352
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    const/4 v2, 0x1

    .line 374
    goto :goto_6

    .line 375
    :cond_7
    move-object/from16 v21, v8

    .line 376
    .line 377
    move-object/from16 v26, v11

    .line 378
    .line 379
    move-object/from16 v23, v12

    .line 380
    .line 381
    move-object/from16 v24, v13

    .line 382
    .line 383
    move-object/from16 v25, v14

    .line 384
    .line 385
    :goto_6
    if-eqz v2, :cond_a

    .line 386
    .line 387
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_8

    .line 392
    .line 393
    move-object/from16 v3, v21

    .line 394
    .line 395
    const/4 v2, 0x1

    .line 396
    invoke-static {v2, v3}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    const/16 v2, 0x4a

    .line 401
    .line 402
    move-object/from16 v5, v24

    .line 403
    .line 404
    move-object/from16 v3, v25

    .line 405
    .line 406
    const/4 v6, 0x3

    .line 407
    invoke-virtual {v3, v2, v5, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 408
    .line 409
    .line 410
    :cond_8
    move-object/from16 v2, v26

    .line 411
    .line 412
    if-eqz v2, :cond_9

    .line 413
    .line 414
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 415
    .line 416
    iget-object v0, v0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 417
    .line 418
    move-object/from16 v3, v23

    .line 419
    .line 420
    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_9
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 424
    .line 425
    const-string v2, "Finishing install immediately"

    .line 426
    .line 427
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    :try_start_4
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 435
    .line 436
    move/from16 v1, p3

    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 440
    .line 441
    .line 442
    :catch_4
    :cond_a
    :goto_7
    return-void
.end method

.method public final selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "selectBackupTransportAsync()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const-string/jumbo p1, "selectBackupTransportAsync(transport = "

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.BACKUP"

    .line 22
    .line 23
    const-string/jumbo v2, "selectBackupTransportAsync"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "BackupManagerService"

    .line 38
    .line 39
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ")"

    .line 50
    .line 51
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v4, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 66
    .line 67
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;

    .line 68
    .line 69
    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_0
    if-eqz p3, :cond_1

    .line 85
    .line 86
    const/16 p0, -0x7d1

    .line 87
    .line 88
    :try_start_1
    invoke-interface {p3, p0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    .line 91
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const-string/jumbo v0, "selectBackupTransport()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 19
    .line 20
    const-string/jumbo v0, "selectBackupTransport(transport = "

    .line 21
    .line 22
    .line 23
    const-string v2, "Could not select transport "

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v4, "android.permission.BACKUP"

    .line 28
    .line 29
    const-string/jumbo v5, "selectBackupTransport"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 44
    .line 45
    const-string v7, "BackupManagerService"

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ", as the transport is not registered."

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v6, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, "): previous transport = "

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v6, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_2
    :goto_2
    return-object v1
.end method

.method public final semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string/jumbo v3, "semBackupPackage()"

    .line 10
    .line 11
    .line 12
    move-object/from16 v4, p0

    .line 13
    .line 14
    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v13, 0x0

    .line 19
    if-eqz v2, :cond_d

    .line 20
    .line 21
    if-eqz v0, :cond_c

    .line 22
    .line 23
    array-length v3, v0

    .line 24
    if-lez v3, :cond_c

    .line 25
    .line 26
    if-eqz p1, :cond_c

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    iput-boolean v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 30
    .line 31
    iget-object v14, v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v14

    .line 34
    and-int/lit8 v4, v1, 0x1

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    move v4, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v4, v5

    .line 42
    :goto_0
    and-int/lit8 v6, v1, 0x2

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    move v6, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v6, v5

    .line 49
    :goto_1
    and-int/lit8 v7, v1, 0x4

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    move v7, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v7, v5

    .line 56
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 57
    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    move v8, v3

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v8, v5

    .line 63
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 64
    .line 65
    if-eqz v9, :cond_4

    .line 66
    .line 67
    move v9, v3

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    move v9, v5

    .line 70
    :goto_4
    and-int/lit8 v10, v1, 0x20

    .line 71
    .line 72
    if-eqz v10, :cond_5

    .line 73
    .line 74
    move v10, v3

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    move v10, v5

    .line 77
    :goto_5
    and-int/lit8 v11, v1, 0x40

    .line 78
    .line 79
    if-eqz v11, :cond_6

    .line 80
    .line 81
    move v11, v3

    .line 82
    goto :goto_6

    .line 83
    :cond_6
    move v11, v5

    .line 84
    :goto_6
    and-int/lit16 v12, v1, 0x80

    .line 85
    .line 86
    if-eqz v12, :cond_7

    .line 87
    .line 88
    move v12, v3

    .line 89
    goto :goto_7

    .line 90
    :cond_7
    move v12, v5

    .line 91
    :goto_7
    and-int/lit16 v15, v1, 0x100

    .line 92
    .line 93
    if-eqz v15, :cond_8

    .line 94
    .line 95
    move v15, v3

    .line 96
    goto :goto_8

    .line 97
    :cond_8
    move v15, v5

    .line 98
    :goto_8
    and-int/lit16 v3, v1, 0x800

    .line 99
    .line 100
    if-eqz v3, :cond_9

    .line 101
    .line 102
    const/16 v16, 0x1

    .line 103
    .line 104
    goto :goto_9

    .line 105
    :cond_9
    move/from16 v16, v5

    .line 106
    .line 107
    :goto_9
    if-nez v15, :cond_b

    .line 108
    .line 109
    move-object/from16 v3, p3

    .line 110
    .line 111
    :try_start_0
    iput-object v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 112
    .line 113
    iput v1, v2, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 114
    .line 115
    if-eqz v12, :cond_a

    .line 116
    .line 117
    const/4 v6, 0x1

    .line 118
    :cond_a
    const/4 v12, 0x0

    .line 119
    move-object v1, v2

    .line 120
    move-object/from16 v2, p1

    .line 121
    .line 122
    move v3, v4

    .line 123
    move v4, v6

    .line 124
    move v5, v7

    .line 125
    move v6, v8

    .line 126
    move v7, v9

    .line 127
    move v8, v10

    .line 128
    move v9, v11

    .line 129
    move/from16 v10, v16

    .line 130
    .line 131
    move-object/from16 v11, p2

    .line 132
    .line 133
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    monitor-exit v14

    .line 137
    goto :goto_a

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    goto :goto_b

    .line 140
    :cond_b
    monitor-exit v14

    .line 141
    :goto_a
    return-object v13

    .line 142
    :goto_b
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw v0

    .line 144
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string/jumbo v1, "packageName is not available"

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_d
    return-object v13
.end method

.method public final semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string/jumbo v4, "semBackupPackagePath()"

    .line 12
    .line 13
    .line 14
    move-object/from16 v5, p0

    .line 15
    .line 16
    invoke-virtual {v5, v3, v4}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v13, 0x0

    .line 21
    if-eqz v3, :cond_e

    .line 22
    .line 23
    if-eqz v0, :cond_d

    .line 24
    .line 25
    array-length v4, v0

    .line 26
    if-lez v4, :cond_d

    .line 27
    .line 28
    if-eqz p1, :cond_d

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    iput-boolean v4, v3, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 32
    .line 33
    const-string v5, "CHINA"

    .line 34
    .line 35
    const-string/jumbo v6, "ro.csc.country_code"

    .line 36
    .line 37
    .line 38
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v6, 0x0

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    if-ne v5, v4, :cond_0

    .line 50
    .line 51
    iput-object v2, v3, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 52
    .line 53
    array-length v5, v2

    .line 54
    move v7, v6

    .line 55
    :goto_0
    if-ge v7, v5, :cond_0

    .line 56
    .line 57
    aget-object v8, v2, v7

    .line 58
    .line 59
    const-string v9, "BackupManagerService"

    .line 60
    .line 61
    new-instance v10, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v11, "mSmartSwitchBackupPath = "

    .line 64
    .line 65
    .line 66
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object v14, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v14

    .line 85
    and-int/lit8 v2, v1, 0x1

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    move v5, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move v5, v6

    .line 92
    :goto_1
    and-int/lit8 v2, v1, 0x2

    .line 93
    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    move v2, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move v2, v6

    .line 99
    :goto_2
    and-int/lit8 v7, v1, 0x4

    .line 100
    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    move v7, v4

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move v7, v6

    .line 106
    :goto_3
    and-int/lit8 v8, v1, 0x8

    .line 107
    .line 108
    if-eqz v8, :cond_4

    .line 109
    .line 110
    move v8, v4

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move v8, v6

    .line 113
    :goto_4
    and-int/lit8 v9, v1, 0x10

    .line 114
    .line 115
    if-eqz v9, :cond_5

    .line 116
    .line 117
    move v9, v4

    .line 118
    goto :goto_5

    .line 119
    :cond_5
    move v9, v6

    .line 120
    :goto_5
    and-int/lit8 v10, v1, 0x20

    .line 121
    .line 122
    if-eqz v10, :cond_6

    .line 123
    .line 124
    move v10, v4

    .line 125
    goto :goto_6

    .line 126
    :cond_6
    move v10, v6

    .line 127
    :goto_6
    and-int/lit8 v11, v1, 0x40

    .line 128
    .line 129
    if-eqz v11, :cond_7

    .line 130
    .line 131
    move v11, v4

    .line 132
    goto :goto_7

    .line 133
    :cond_7
    move v11, v6

    .line 134
    :goto_7
    and-int/lit16 v12, v1, 0x80

    .line 135
    .line 136
    if-eqz v12, :cond_8

    .line 137
    .line 138
    move v12, v4

    .line 139
    goto :goto_8

    .line 140
    :cond_8
    move v12, v6

    .line 141
    :goto_8
    and-int/lit16 v15, v1, 0x100

    .line 142
    .line 143
    if-eqz v15, :cond_9

    .line 144
    .line 145
    move v15, v4

    .line 146
    goto :goto_9

    .line 147
    :cond_9
    move v15, v6

    .line 148
    :goto_9
    and-int/lit16 v4, v1, 0x800

    .line 149
    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    const/16 v16, 0x1

    .line 153
    .line 154
    goto :goto_a

    .line 155
    :cond_a
    move/from16 v16, v6

    .line 156
    .line 157
    :goto_a
    if-nez v15, :cond_c

    .line 158
    .line 159
    move-object/from16 v4, p3

    .line 160
    .line 161
    :try_start_0
    iput-object v4, v3, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 162
    .line 163
    iput v1, v3, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 164
    .line 165
    if-eqz v12, :cond_b

    .line 166
    .line 167
    const/4 v4, 0x1

    .line 168
    goto :goto_b

    .line 169
    :cond_b
    move v4, v2

    .line 170
    :goto_b
    const/4 v12, 0x0

    .line 171
    move-object v1, v3

    .line 172
    move-object/from16 v2, p1

    .line 173
    .line 174
    move v3, v5

    .line 175
    move v5, v7

    .line 176
    move v6, v8

    .line 177
    move v7, v9

    .line 178
    move v8, v10

    .line 179
    move v9, v11

    .line 180
    move/from16 v10, v16

    .line 181
    .line 182
    move-object/from16 v11, p2

    .line 183
    .line 184
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    monitor-exit v14

    .line 188
    goto :goto_c

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    goto :goto_d

    .line 191
    :cond_c
    monitor-exit v14

    .line 192
    :goto_c
    return-object v13

    .line 193
    :goto_d
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    throw v0

    .line 195
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    const-string/jumbo v1, "packageName is not available"

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :cond_e
    return-object v13
.end method

.method public final semCancelBackupAndRestore()Z
    .locals 3

    .line 1
    const-string v0, "BackupManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "semCancelBackupAndRestore Start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string/jumbo v1, "semCancelBackupAndRestore()"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string p0, "BackupManagerService"

    .line 32
    .line 33
    const-string v0, "all of adbParams null"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v0, "BackupManagerService"

    .line 42
    .line 43
    const-string v2, "BackupParams latch"

    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    const-string v0, "BackupManagerService"

    .line 77
    .line 78
    const-string v2, "RestoreParams latch"

    .line 79
    .line 80
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    monitor-enter v0

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    .line 101
    .line 102
    monitor-exit v0

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    throw p0

    .line 107
    :cond_2
    :goto_1
    return v1

    .line 108
    :cond_3
    const-string p0, "BackupManagerService"

    .line 109
    .line 110
    const-string v0, "Fail - UserBackupManagerService null"

    .line 111
    .line 112
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x0

    .line 116
    return p0
.end method

.method public final semDisableDataExtractionRule(Z)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "semDisableDataExtractionRule Start, set  = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BackupManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string/jumbo v2, "semDisableDataExtractionRule()"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v2}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const-string/jumbo v1, "ro.csc.country_code"

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "CHINA"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z

    .line 55
    .line 56
    :goto_0
    return v0

    .line 57
    :cond_1
    const-string p0, "Fail - UserBackupManagerService null"

    .line 58
    .line 59
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v0
.end method

.method public final semIsBackupEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "semIsBackupEnabled()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v0, "android.permission.BACKUP"

    .line 25
    .line 26
    const-string/jumbo v2, "semIsBackupEnabled"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 33
    .line 34
    return p0

    .line 35
    :cond_1
    return v0
.end method

.method public final semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "semRestorePackage()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;Z)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string/jumbo p1, "fd is null"

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final semSetAutoRestoreEnabled(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "semSetAutoRestoreEnabled()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v0, "android.permission.BACKUP"

    .line 24
    .line 25
    const-string/jumbo v2, "setAutoRestoreEnabled"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "BackupManagerService"

    .line 32
    .line 33
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Auto restore => "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    iget-object p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "backup_auto_restore"

    .line 68
    .line 69
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 70
    .line 71
    invoke-static {p0, v0, p1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    .line 73
    .line 74
    iput-boolean p1, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 75
    .line 76
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public final semSetBackupEnabled(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "semSetBackupEnabled()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz v1, :cond_5

    .line 20
    .line 21
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, v0}, Landroid/sec/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    const-string p0, "BackupManagerService"

    .line 39
    .line 40
    const-string p1, "Backup is not allowed by MDM"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    iget-object p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const-string v2, "android.permission.BACKUP"

    .line 50
    .line 51
    const-string/jumbo v3, "setBackupEnabled"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "BackupManagerService"

    .line 58
    .line 59
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Backup enabled => "

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    :try_start_0
    iget-boolean p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 87
    .line 88
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 90
    .line 91
    invoke-static {v4, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 92
    .line 93
    .line 94
    iput-boolean p1, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 95
    .line 96
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 97
    :try_start_2
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 98
    .line 99
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    if-nez p0, :cond_2

    .line 103
    .line 104
    :try_start_3
    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 105
    .line 106
    if-eqz v5, :cond_2

    .line 107
    .line 108
    iget p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 109
    .line 110
    iget-object p1, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {p0, p1, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    .line 113
    .line 114
    .line 115
    const-wide/16 p0, 0x0

    .line 116
    .line 117
    invoke-virtual {v1, p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    if-nez p1, :cond_4

    .line 124
    .line 125
    iget p1, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 126
    .line 127
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v5, p1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;I)V

    .line 130
    .line 131
    .line 132
    if-eqz p0, :cond_4

    .line 133
    .line 134
    iget-boolean p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 135
    .line 136
    if-eqz p0, :cond_4

    .line 137
    .line 138
    new-instance p0, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance p1, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 149
    .line 150
    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    invoke-direct {v6, v1, p0, p1, v7}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v6}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 157
    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    move v6, v5

    .line 161
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-ge v6, v7, :cond_3

    .line 166
    .line 167
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v1, v7, v8, v0}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    iget-object p0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 186
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    iget-object p1, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 192
    .line 193
    invoke-virtual {p0, v5, v6, v7, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    goto :goto_3

    .line 205
    :catchall_2
    move-exception p0

    .line 206
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 207
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 208
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_5
    :goto_4
    return-void
.end method

.method public final semSetTimeoutBackupAndRestore(I)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "semSetTimeoutBackupAndRestore Start"

    .line 2
    .line 3
    .line 4
    const-string v1, "BackupManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string/jumbo v2, "semSetTimeoutBackupAndRestore()"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    if-ltz p1, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x12c

    .line 26
    .line 27
    if-le p1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v2, "semSetTimeoutBackupAndRestore, timeout(min) : "

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, ", "

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return v0

    .line 62
    :cond_2
    const-string p0, "Fail - UserBackupManagerService null"

    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return v0
.end method

.method public final semSetTransportFlagsForAdbBackup(I)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "semSetTransportFlagsForAdbBackup Start"

    .line 2
    .line 3
    .line 4
    const-string v1, "BackupManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string/jumbo v2, "semSetTransportFlagsForAdbBackup()"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportFlagsForAdbBackup:I

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v0, "semSetTransportFlagsForAdbBackup, set flags : "

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportFlagsForAdbBackup:I

    .line 33
    .line 34
    invoke-static {p1, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const-string p0, "Fail - UserBackupManagerService null"

    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final setAncestralSerialNumber(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string/jumbo v1, "setAncestralSerialNumber()"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "android.permission.BACKUP"

    .line 26
    .line 27
    const-string/jumbo v2, "setAncestralSerialNumber"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Setting ancestral work profile id to "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "BackupManagerService"

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 61
    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    new-instance v3, Ljava/io/File;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string/jumbo v5, "serial_id"

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 77
    .line 78
    :cond_1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 79
    .line 80
    const-string/jumbo v3, "rwd"

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception p0

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    :goto_1
    const-string p1, "Unable to write to work profile serial mapping file:"

    .line 106
    .line 107
    invoke-static {v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_2
    return-void
.end method

.method public final setAutoRestore(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestoreForUser(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setAutoRestoreForUser(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setAutoRestore()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v0, "android.permission.BACKUP"

    .line 19
    .line 20
    const-string/jumbo v1, "setAutoRestore"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "BackupManagerService"

    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Auto restore => "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, "backup_auto_restore"

    .line 63
    .line 64
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 65
    .line 66
    invoke-static {p1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    .line 68
    .line 69
    iput-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 70
    .line 71
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_0
    :goto_0
    return-void
.end method

.method public final setBackupEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabledForUser(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setBackupEnabledForUser(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setBackupEnabled()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(ZZ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const-string/jumbo v0, "setBackupPassword()"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_6

    .line 21
    .line 22
    const-string v0, "BackupPasswordManager"

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v3, "android.permission.BACKUP"

    .line 29
    .line 30
    const-string/jumbo v4, "setBackupPassword"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "PBKDF2WithHmacSHA1"

    .line 37
    .line 38
    invoke-virtual {p0, v2, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x2

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    iget v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 46
    .line 47
    if-ge v3, v4, :cond_6

    .line 48
    .line 49
    const-string v3, "PBKDF2WithHmacSHA1And8bit"

    .line 50
    .line 51
    invoke-virtual {p0, v3, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    :cond_1
    :try_start_0
    new-instance p1, Lcom/android/server/backup/utils/DataStreamFileCodec;

    .line 58
    .line 59
    new-instance v3, Ljava/io/File;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 62
    .line 63
    const-string/jumbo v6, "pwversion"

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    invoke-direct {v5, v6}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v3, v5}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1, v3}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput v4, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .line 87
    const-string/jumbo p1, "pwhash"

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v4, 0x1

    .line 92
    if-eqz p2, :cond_4

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/16 v5, 0x40

    .line 102
    .line 103
    :try_start_1
    new-array v5, v5, [B

    .line 104
    .line 105
    iget-object v6, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    .line 106
    .line 107
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const/16 v6, 0x2710

    .line 115
    .line 116
    invoke-static {v2, p2, v5, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p2, v4}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :cond_3
    new-instance p2, Lcom/android/server/backup/utils/DataStreamFileCodec;

    .line 131
    .line 132
    new-instance v2, Ljava/io/File;

    .line 133
    .line 134
    iget-object v6, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 135
    .line 136
    invoke-direct {v2, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    .line 140
    .line 141
    const/4 v6, 0x0

    .line 142
    invoke-direct {p1, v6}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, v2, p1}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    .line 149
    .line 150
    invoke-direct {p1, v3, v5}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iput-object v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 157
    .line 158
    iput-object v5, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catch_0
    const-string p0, "Unable to set backup password"

    .line 162
    .line 163
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    :goto_0
    new-instance p2, Ljava/io/File;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 170
    .line 171
    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_5

    .line 185
    .line 186
    const-string p0, "Unable to clear backup password"

    .line 187
    .line 188
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_5
    iput-object v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 193
    .line 194
    iput-object v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    .line 195
    .line 196
    :goto_1
    move v1, v4

    .line 197
    goto :goto_2

    .line 198
    :catch_1
    const-string p0, "Unable to write backup pw version; password not changed"

    .line 199
    .line 200
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    :cond_6
    :goto_2
    return v1
.end method

.method public final setBackupServiceActive(IZ)V
    .locals 4

    .line 1
    const-string v0, "Making backup "

    .line 2
    .line 3
    const-string v1, "No permission to configure backup activity"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v3, "android.permission.BACKUP"

    .line 25
    .line 26
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 32
    .line 33
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v3, 0x3e8

    .line 42
    .line 43
    if-eq v2, v3, :cond_3

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 49
    .line 50
    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 55
    .line 56
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v2, "BackupManagerService"

    .line 69
    .line 70
    const-string v3, "Unable to persist backup service activity"

    .line 71
    .line 72
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    const-string p0, "BackupManagerService"

    .line 80
    .line 81
    const-string p1, "Backup service not supported"

    .line 82
    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v1

    .line 90
    :try_start_1
    const-string v2, "BackupManagerService"

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    const-string v0, ""

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_9

    .line 104
    .line 105
    :cond_6
    const-string/jumbo v0, "in"

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, "active"

    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    if-eqz p2, :cond_9

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    :try_start_2
    iget p2, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 128
    .line 129
    if-ne p1, p2, :cond_7

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :catch_1
    :try_start_3
    const-string p2, "BackupManagerService"

    .line 149
    .line 150
    const-string v0, "Unable to persist backup service activity"

    .line 151
    .line 152
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_c

    .line 164
    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 166
    .line 167
    .line 168
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    .line 171
    .line 172
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    .line 174
    .line 175
    goto :goto_8

    .line 176
    :catchall_1
    move-exception p0

    .line 177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    .line 179
    .line 180
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    :cond_9
    if-eqz p1, :cond_b

    .line 182
    .line 183
    :try_start_6
    iget p2, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 184
    .line 185
    if-ne p1, p2, :cond_a

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_b
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :catch_2
    :try_start_7
    const-string p2, "BackupManagerService"

    .line 205
    .line 206
    const-string v0, "Unable to persist backup service inactivity"

    .line 207
    .line 208
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :goto_7
    new-instance p2, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p2}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 218
    .line 219
    .line 220
    :cond_c
    :goto_8
    monitor-exit v1

    .line 221
    return-void

    .line 222
    :goto_9
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 223
    throw p0
.end method

.method public final setFrameworkSchedulingEnabledForUser(IZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setFrameworkSchedulingEnabledForUser()"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "android.permission.BACKUP"

    .line 14
    .line 15
    const-string/jumbo v1, "setFrameworkSchedulingEnabled"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isFrameworkSchedulingEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    :try_start_1
    const-string p1, "BackupManagerService"

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const-string v2, "Enabling"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    const-string v2, "Disabling"

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " backup scheduling"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v2, "backup_scheduling_enabled"

    .line 77
    .line 78
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 79
    .line 80
    invoke-static {p1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 81
    .line 82
    .line 83
    if-nez p2, :cond_2

    .line 84
    .line 85
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p2, p1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 93
    .line 94
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    sget v2, Lcom/android/server/backup/FullBackupJob;->MIN_JOB_ID:I

    .line 97
    .line 98
    const-string/jumbo v2, "jobscheduler"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {p1, p2, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    .line 122
    .line 123
    .line 124
    const-wide/16 p1, 0x0

    .line 125
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .line 128
    .line 129
    :goto_1
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .line 131
    .line 132
    monitor-exit p0

    .line 133
    goto :goto_4

    .line 134
    :goto_2
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :goto_3
    monitor-exit p0

    .line 139
    throw p1

    .line 140
    :cond_3
    :goto_4
    return-void
.end method

.method public startServiceForUser(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_0

    .line 2
    const-string p0, "Backup service not supported"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string p0, "Backup not activated for user "

    .line 5
    invoke-static {p1, p0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    const-string/jumbo p0, "userId "

    const-string v0, " already started, so not starting again"

    .line 8
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    const-string v0, "Starting service for user: "

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "backup_transport"

    .line 13
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    .line 15
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting with transport "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {p1, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v8, Lcom/android/server/backup/TransportManager;

    invoke-direct {v8, p1, v3, v0, v2}, Lcom/android/server/backup/TransportManager;-><init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v6

    .line 20
    const-string v0, "backup_stage"

    if-eqz p1, :cond_4

    .line 21
    new-instance v2, Ljava/io/File;

    .line 22
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v4

    .line 23
    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    move-object v7, v2

    goto :goto_1

    .line 24
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :goto_1
    new-instance v5, Landroid/os/HandlerThread;

    const-string v0, "backup-"

    .line 26
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    .line 27
    invoke-direct {v5, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Started thread "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p1

    move-object v4, p0

    .line 32
    invoke-static/range {v2 .. v8}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    return-void
.end method

.method public startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 2

    .line 54
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    const-string p0, "backup enable"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 57
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public stopServiceForUser(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget v0, Lcom/android/server/backup/FullBackupJob;->MIN_JOB_ID:I

    .line 22
    .line 23
    const-string/jumbo v0, "jobscheduler"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "updateTransportAttributes()"

    .line 8
    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move-object v5, p4

    .line 25
    move-object v6, p5

    .line 26
    move-object v7, p6

    .line 27
    move-object/from16 v8, p7

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
