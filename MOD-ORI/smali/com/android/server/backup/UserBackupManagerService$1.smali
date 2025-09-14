.class public final Lcom/android/server/backup/UserBackupManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/backup/UserBackupManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v0, "BackupManagerService"

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 25
    .line 26
    const-string v2, "Telling running backup to stop"

    .line 27
    .line 28
    invoke-static {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    invoke-virtual {v1, p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->handleCancel(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    const/16 v2, 0x1000

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/io/DataOutputStream;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    :goto_1
    if-ge v4, v3, :cond_2

    .line 77
    .line 78
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 79
    .line 80
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 87
    .line 88
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-wide v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 94
    .line 95
    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    goto :goto_4

    .line 103
    :catch_0
    move-exception v1

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 106
    .line 107
    .line 108
    new-instance v2, Landroid/util/AtomicFile;

    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 111
    .line 112
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 113
    .line 114
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_2
    :try_start_3
    const-string v2, "BackupManagerService"

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 135
    .line 136
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 137
    .line 138
    const-string v3, "Unable to write backup schedule!"

    .line 139
    .line 140
    invoke-static {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    :goto_3
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    throw p0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
