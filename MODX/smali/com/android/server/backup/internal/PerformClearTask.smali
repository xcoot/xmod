.class public final Lcom/android/server/backup/internal/PerformClearTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 8
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 10
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 12
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 14
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "Unable to mark clear operation finished: "

    .line 3
    const-string v1, "BackupManagerService"

    .line 5
    const-string v2, "Transport threw clearing data for "

    .line 7
    const-string v3, "PerformClearTask.run()"

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 12
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 14
    iget-object v6, v6, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {v5, v6}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    new-instance v6, Ljava/io/File;

    .line 22
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 24
    iget-object v7, v7, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 26
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    new-instance v5, Ljava/io/File;

    .line 31
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 33
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 35
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 41
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 43
    invoke-virtual {v5, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 49
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->clearBackupData(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {v2, v4, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 67
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 72
    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception v2

    .line 79
    goto :goto_4

    .line 80
    :catch_1
    move-exception v5

    .line 81
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, ": "

    .line 93
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-eqz v4, :cond_0

    .line 112
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception v2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {v2, v4, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 127
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 132
    goto :goto_1

    .line 133
    :goto_3
    return-void

    .line 134
    :goto_4
    if-eqz v4, :cond_1

    .line 136
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 139
    goto :goto_5

    .line 140
    :catch_3
    move-exception v4

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v4, v5, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 151
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 156
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 161
    throw v2
.end method
