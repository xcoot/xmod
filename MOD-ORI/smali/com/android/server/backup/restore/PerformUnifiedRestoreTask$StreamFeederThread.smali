.class public final Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field public final mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field public mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

.field public final mEphemeralOpToken:I

.field public final mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 13
    .line 14
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleCancel(Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 10
    .line 11
    .line 12
    const-string p1, "StreamFeederThread"

    .line 13
    .line 14
    const-string v0, "Full-data restore target timed out; shutting down"

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/16 v4, 0x2d

    .line 37
    .line 38
    invoke-virtual {v2, v4, v1, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 44
    .line 45
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    const/4 v2, -0x2

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    aget-object v0, v0, v2

    .line 67
    .line 68
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 72
    .line 73
    aput-object p1, v0, v2

    .line 74
    .line 75
    aget-object v0, v0, v1

    .line 76
    .line 77
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    aput-object p1, p0, v1

    .line 83
    .line 84
    return-void
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    sget-object v13, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 4
    .line 5
    sget-object v14, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 6
    .line 7
    sget-object v15, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 8
    .line 9
    const-string v11, "Transport threw from abortFullRestore: "

    .line 10
    .line 11
    const-string v10, "StreamFeederThread"

    .line 12
    .line 13
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v1, 0xb1c

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 25
    .line 26
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 31
    .line 32
    iget-object v6, v3, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 33
    .line 34
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    iget v9, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 41
    .line 42
    check-cast v3, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    move-object/from16 v17, v4

    .line 50
    .line 51
    move-object/from16 v4, p0

    .line 52
    .line 53
    move-object/from16 v18, v10

    .line 54
    .line 55
    move/from16 v10, v16

    .line 56
    .line 57
    move-object/from16 v16, v13

    .line 58
    .line 59
    move-object v13, v11

    .line 60
    move-object/from16 v11, v17

    .line 61
    .line 62
    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 66
    .line 67
    new-instance v1, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 68
    .line 69
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    aget-object v2, v2, v3

    .line 73
    .line 74
    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 78
    .line 79
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    aget-object v0, v0, v1

    .line 83
    .line 84
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 85
    .line 86
    aget-object v4, v2, v3

    .line 87
    .line 88
    aget-object v2, v2, v1

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_0

    .line 95
    .line 96
    const/high16 v5, 0x10000

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const v5, 0x8000

    .line 100
    .line 101
    .line 102
    :goto_0
    new-array v6, v5, [B

    .line 103
    .line 104
    new-instance v7, Ljava/io/FileOutputStream;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/io/FileInputStream;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Ljava/lang/Thread;

    .line 123
    .line 124
    iget-object v8, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 125
    .line 126
    const-string/jumbo v9, "unified-restore-engine"

    .line 127
    .line 128
    .line 129
    invoke-direct {v4, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 133
    .line 134
    .line 135
    const-string v4, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    .line 136
    .line 137
    const/4 v10, 0x0

    .line 138
    :try_start_0
    iget-object v11, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 139
    .line 140
    iget-object v11, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 141
    .line 142
    invoke-virtual {v11, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 143
    .line 144
    .line 145
    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 146
    move/from16 v19, v3

    .line 147
    .line 148
    :goto_1
    if-nez v19, :cond_4

    .line 149
    .line 150
    :try_start_1
    invoke-virtual {v11, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    .line 151
    .line 152
    .line 153
    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    if-lez v8, :cond_3

    .line 155
    .line 156
    if-le v8, v5, :cond_1

    .line 157
    .line 158
    :try_start_2
    new-array v6, v8, [B

    .line 159
    .line 160
    move v5, v8

    .line 161
    goto :goto_2

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    move-object v1, v0

    .line 164
    move-object/from16 v3, v18

    .line 165
    .line 166
    goto/16 :goto_11

    .line 167
    .line 168
    :catch_0
    move-exception v0

    .line 169
    move-object/from16 v3, v18

    .line 170
    .line 171
    goto/16 :goto_a

    .line 172
    .line 173
    :catch_1
    move-object/from16 v3, v18

    .line 174
    .line 175
    goto/16 :goto_d

    .line 176
    .line 177
    :cond_1
    :goto_2
    if-lez v8, :cond_2

    .line 178
    .line 179
    invoke-virtual {v0, v6, v3, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v7, v6, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .line 185
    .line 186
    sub-int/2addr v8, v1

    .line 187
    const/4 v1, 0x1

    .line 188
    goto :goto_2

    .line 189
    :cond_2
    move-object/from16 v20, v2

    .line 190
    .line 191
    move-object/from16 v3, v18

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    const/4 v1, -0x1

    .line 195
    if-ne v8, v1, :cond_5

    .line 196
    .line 197
    move/from16 v19, v3

    .line 198
    .line 199
    :cond_4
    move-object/from16 v3, v18

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v3, "Error "

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v3, " streaming restore for "

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 221
    .line 222
    iget-object v3, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 223
    .line 224
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 233
    move-object/from16 v3, v18

    .line 234
    .line 235
    :try_start_4
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iget-object v10, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 248
    .line 249
    iget-object v9, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 250
    .line 251
    iget-object v10, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 252
    .line 253
    move-object/from16 v20, v2

    .line 254
    .line 255
    move/from16 v21, v5

    .line 256
    .line 257
    const/4 v2, 0x1

    .line 258
    const/16 v5, 0x42

    .line 259
    .line 260
    invoke-virtual {v9, v5, v10, v2, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 261
    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    new-array v2, v1, [Ljava/lang/Object;

    .line 265
    .line 266
    const/16 v1, 0xb0f

    .line 267
    .line 268
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    .line 270
    .line 271
    move/from16 v19, v8

    .line 272
    .line 273
    move/from16 v5, v21

    .line 274
    .line 275
    :goto_3
    move-object/from16 v18, v3

    .line 276
    .line 277
    move-object/from16 v2, v20

    .line 278
    .line 279
    const/4 v1, 0x1

    .line 280
    const/4 v3, 0x0

    .line 281
    const/4 v10, 0x0

    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :catchall_1
    move-exception v0

    .line 285
    :goto_4
    move-object v1, v0

    .line 286
    goto/16 :goto_11

    .line 287
    .line 288
    :catch_2
    move-exception v0

    .line 289
    goto/16 :goto_a

    .line 290
    .line 291
    :catchall_2
    move-exception v0

    .line 292
    move-object/from16 v3, v18

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :goto_5
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 296
    .line 297
    const/4 v1, 0x1

    .line 298
    aget-object v0, v0, v1

    .line 299
    .line 300
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 304
    .line 305
    const/4 v2, 0x0

    .line 306
    aget-object v0, v0, v2

    .line 307
    .line 308
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 312
    .line 313
    aget-object v0, v0, v1

    .line 314
    .line 315
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()V

    .line 321
    .line 322
    .line 323
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 324
    .line 325
    aget-object v0, v0, v2

    .line 326
    .line 327
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 331
    .line 332
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 333
    .line 334
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 335
    .line 336
    if-eqz v2, :cond_6

    .line 337
    .line 338
    const/4 v5, 0x1

    .line 339
    goto :goto_6

    .line 340
    :cond_6
    const/4 v5, 0x0

    .line 341
    :goto_6
    iput-boolean v5, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 342
    .line 343
    if-nez v19, :cond_7

    .line 344
    .line 345
    iput-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 346
    .line 347
    iget-object v1, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 348
    .line 349
    iput-object v1, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 350
    .line 351
    move-object/from16 v13, v16

    .line 352
    .line 353
    const/4 v3, 0x0

    .line 354
    goto :goto_8

    .line 355
    :cond_7
    :try_start_5
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 356
    .line 357
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 362
    .line 363
    .line 364
    move/from16 v0, v19

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catch_3
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v0, v1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const/16 v0, -0x3e8

    .line 377
    .line 378
    :goto_7
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 379
    .line 380
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 381
    .line 382
    iget-object v1, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 383
    .line 384
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    const/4 v4, 0x1

    .line 388
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 389
    .line 390
    .line 391
    const/16 v1, -0x3e8

    .line 392
    .line 393
    if-ne v0, v1, :cond_8

    .line 394
    .line 395
    move-object v13, v15

    .line 396
    goto :goto_8

    .line 397
    :cond_8
    move-object v13, v14

    .line 398
    :goto_8
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 399
    .line 400
    invoke-virtual {v0, v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 401
    .line 402
    .line 403
    :goto_9
    invoke-virtual {v12, v3}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_10

    .line 407
    .line 408
    :catchall_3
    move-exception v0

    .line 409
    move-object/from16 v3, v18

    .line 410
    .line 411
    move-object v1, v0

    .line 412
    const/16 v19, 0x0

    .line 413
    .line 414
    goto/16 :goto_11

    .line 415
    .line 416
    :catch_4
    move-exception v0

    .line 417
    move-object/from16 v3, v18

    .line 418
    .line 419
    const/16 v19, 0x0

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :catch_5
    move-object/from16 v3, v18

    .line 423
    .line 424
    const/16 v19, 0x0

    .line 425
    .line 426
    goto/16 :goto_d

    .line 427
    .line 428
    :goto_a
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v2, "Transport failed during restore: "

    .line 434
    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    const/4 v1, 0x0

    .line 458
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 463
    .line 464
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 465
    .line 466
    iget-object v1, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 467
    .line 468
    const/4 v5, 0x1

    .line 469
    const/16 v6, 0x42

    .line 470
    .line 471
    invoke-virtual {v2, v6, v1, v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 472
    .line 473
    .line 474
    const/4 v1, 0x0

    .line 475
    new-array v0, v1, [Ljava/lang/Object;

    .line 476
    .line 477
    const/16 v2, 0xb0f

    .line 478
    .line 479
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 480
    .line 481
    .line 482
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 483
    .line 484
    aget-object v0, v0, v5

    .line 485
    .line 486
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 490
    .line 491
    aget-object v0, v0, v1

    .line 492
    .line 493
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 494
    .line 495
    .line 496
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 497
    .line 498
    aget-object v0, v0, v5

    .line 499
    .line 500
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 501
    .line 502
    .line 503
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()V

    .line 506
    .line 507
    .line 508
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 509
    .line 510
    aget-object v0, v0, v1

    .line 511
    .line 512
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 513
    .line 514
    .line 515
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 516
    .line 517
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 518
    .line 519
    iget-object v1, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 520
    .line 521
    if-eqz v1, :cond_9

    .line 522
    .line 523
    const/4 v1, 0x1

    .line 524
    goto :goto_b

    .line 525
    :cond_9
    const/4 v1, 0x0

    .line 526
    :goto_b
    iput-boolean v1, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 527
    .line 528
    :try_start_7
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 529
    .line 530
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 535
    .line 536
    .line 537
    goto :goto_c

    .line 538
    :catch_6
    move-exception v0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-static {v0, v1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :goto_c
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 548
    .line 549
    iget-object v1, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 550
    .line 551
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 552
    .line 553
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 554
    .line 555
    const/4 v2, 0x0

    .line 556
    const/4 v3, 0x1

    .line 557
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 558
    .line 559
    .line 560
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 561
    .line 562
    invoke-virtual {v0, v15}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v12, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 566
    .line 567
    .line 568
    goto/16 :goto_10

    .line 569
    .line 570
    :catch_7
    :goto_d
    :try_start_8
    const-string v0, "Unable to route data for restore"

    .line 571
    .line 572
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 576
    .line 577
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 586
    .line 587
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 588
    .line 589
    iget-object v1, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 590
    .line 591
    const/4 v5, 0x2

    .line 592
    const/16 v6, 0x41

    .line 593
    .line 594
    invoke-virtual {v2, v6, v1, v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 595
    .line 596
    .line 597
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 598
    .line 599
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 600
    .line 601
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 602
    .line 603
    const-string v1, "I/O error on pipes"

    .line 604
    .line 605
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    const/16 v1, 0xb10

    .line 610
    .line 611
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 612
    .line 613
    .line 614
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 615
    .line 616
    const/4 v1, 0x1

    .line 617
    aget-object v0, v0, v1

    .line 618
    .line 619
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 620
    .line 621
    .line 622
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 623
    .line 624
    const/4 v2, 0x0

    .line 625
    aget-object v0, v0, v2

    .line 626
    .line 627
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 628
    .line 629
    .line 630
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 631
    .line 632
    aget-object v0, v0, v1

    .line 633
    .line 634
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 635
    .line 636
    .line 637
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 638
    .line 639
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()V

    .line 640
    .line 641
    .line 642
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 643
    .line 644
    aget-object v0, v0, v2

    .line 645
    .line 646
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 647
    .line 648
    .line 649
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 650
    .line 651
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 652
    .line 653
    iget-object v1, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 654
    .line 655
    if-eqz v1, :cond_a

    .line 656
    .line 657
    const/4 v1, 0x1

    .line 658
    goto :goto_e

    .line 659
    :cond_a
    const/4 v1, 0x0

    .line 660
    :goto_e
    iput-boolean v1, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 661
    .line 662
    :try_start_9
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 663
    .line 664
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 669
    .line 670
    .line 671
    const/16 v0, -0x3eb

    .line 672
    .line 673
    goto :goto_f

    .line 674
    :catch_8
    move-exception v0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-static {v0, v1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    const/16 v0, -0x3e8

    .line 684
    .line 685
    :goto_f
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 686
    .line 687
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 688
    .line 689
    iget-object v1, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 690
    .line 691
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 692
    .line 693
    const/4 v3, 0x0

    .line 694
    const/4 v4, 0x1

    .line 695
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 696
    .line 697
    .line 698
    const/16 v1, -0x3e8

    .line 699
    .line 700
    if-ne v0, v1, :cond_b

    .line 701
    .line 702
    move-object v14, v15

    .line 703
    :cond_b
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 704
    .line 705
    invoke-virtual {v0, v14}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_9

    .line 709
    .line 710
    :goto_10
    return-void

    .line 711
    :goto_11
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 712
    .line 713
    const/4 v2, 0x1

    .line 714
    aget-object v0, v0, v2

    .line 715
    .line 716
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 717
    .line 718
    .line 719
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 720
    .line 721
    const/4 v5, 0x0

    .line 722
    aget-object v0, v0, v5

    .line 723
    .line 724
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 725
    .line 726
    .line 727
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 728
    .line 729
    aget-object v0, v0, v2

    .line 730
    .line 731
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 732
    .line 733
    .line 734
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 735
    .line 736
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()V

    .line 737
    .line 738
    .line 739
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 740
    .line 741
    aget-object v0, v0, v5

    .line 742
    .line 743
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 744
    .line 745
    .line 746
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 747
    .line 748
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 749
    .line 750
    iget-object v5, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 751
    .line 752
    if-eqz v5, :cond_c

    .line 753
    .line 754
    const/4 v6, 0x1

    .line 755
    goto :goto_12

    .line 756
    :cond_c
    const/4 v6, 0x0

    .line 757
    :goto_12
    iput-boolean v6, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 758
    .line 759
    if-eqz v19, :cond_e

    .line 760
    .line 761
    :try_start_a
    iget-object v0, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 762
    .line 763
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 768
    .line 769
    .line 770
    move/from16 v0, v19

    .line 771
    .line 772
    goto :goto_13

    .line 773
    :catch_9
    move-exception v0

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-static {v0, v2, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    const/16 v0, -0x3e8

    .line 783
    .line 784
    :goto_13
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 785
    .line 786
    iget-object v3, v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 787
    .line 788
    iget-object v2, v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 789
    .line 790
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 791
    .line 792
    const/4 v4, 0x0

    .line 793
    const/4 v5, 0x1

    .line 794
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 795
    .line 796
    .line 797
    const/16 v2, -0x3e8

    .line 798
    .line 799
    if-ne v0, v2, :cond_d

    .line 800
    .line 801
    move-object v13, v15

    .line 802
    goto :goto_14

    .line 803
    :cond_d
    move-object v13, v14

    .line 804
    goto :goto_14

    .line 805
    :cond_e
    iput-object v5, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 806
    .line 807
    iget-object v2, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 808
    .line 809
    iput-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 810
    .line 811
    move-object/from16 v13, v16

    .line 812
    .line 813
    :goto_14
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 814
    .line 815
    invoke-virtual {v0, v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 816
    .line 817
    .line 818
    const/4 v2, 0x0

    .line 819
    invoke-virtual {v12, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 820
    .line 821
    .line 822
    throw v1
.end method
