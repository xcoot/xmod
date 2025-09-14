.class public final Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mExtraFlag:I

.field public final mIncludeApks:Z

.field public final mOpToken:I

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPkg:Landroid/content/pm/PackageInfo;

.field public final mPreflightHook:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

.field public final mQuota:J

.field public final mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field public final mTransportFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 8
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    .line 10
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 12
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 14
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 16
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 18
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 20
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 22
    iput-object p13, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 26
    const-string p2, "Timeout parameters cannot be null"

    .line 28
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 33
    iput-object p11, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 35
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    .line 38
    move-result-object p1

    .line 39
    sput-object p1, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 41
    iput-object p14, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 43
    return-void
.end method


# virtual methods
.method public final backupOnePackage()I
    .locals 23

    .line 1
    move-object/from16 v10, p0

    .line 3
    const-string v11, "Error bringing down backup stack"

    .line 5
    const-string v12, "Error backing up "

    .line 7
    const-string v0, "Full backup failed on package "

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    .line 12
    move-result v1

    .line 13
    iget-object v13, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 15
    const-string v14, "BackupManagerService"

    .line 17
    const/4 v15, 0x1

    .line 18
    const/16 v16, -0x3eb

    .line 20
    if-eqz v1, :cond_9

    .line 22
    const/16 v17, -0x3e8

    .line 24
    const/16 v18, 0x0

    .line 26
    const/16 v19, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 31
    move-result-object v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    new-instance v9, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    .line 34
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 36
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 38
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 40
    aget-object v6, v20, v15

    .line 42
    iget v7, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 44
    iget-boolean v8, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 46
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 48
    move-object v1, v9

    .line 49
    move-object/from16 v21, v2

    .line 51
    move-object/from16 v2, p0

    .line 53
    move-object/from16 v22, v9

    .line 55
    move-object/from16 v9, v21

    .line 57
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ[Ljava/lang/String;)V

    .line 60
    aget-object v1, v20, v15

    .line 62
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 65
    aput-object v18, v20, v15

    .line 67
    new-instance v1, Ljava/lang/Thread;

    .line 69
    const-string v2, "app-data-runner"

    .line 71
    move-object/from16 v3, v22

    .line 73
    invoke-direct {v1, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 79
    aget-object v1, v20, v19

    .line 81
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 83
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 86
    iget v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 88
    invoke-virtual {v13, v1}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 101
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 115
    if-eqz v0, :cond_0

    .line 117
    iput-boolean v15, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 119
    goto :goto_2

    .line 120
    :goto_0
    move-object/from16 v18, v20

    .line 122
    goto/16 :goto_6

    .line 124
    :goto_1
    move-object/from16 v18, v20

    .line 126
    goto :goto_5

    .line 127
    :cond_0
    :goto_2
    move/from16 v0, v16

    .line 129
    goto :goto_3

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    move/from16 v0, v19

    .line 136
    :goto_3
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 138
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 140
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 147
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 150
    aget-object v1, v20, v19

    .line 152
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 157
    :cond_2
    aget-object v1, v20, v15

    .line 159
    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    :cond_3
    move/from16 v16, v0

    .line 166
    goto/16 :goto_8

    .line 168
    :catch_1
    invoke-static {v14, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 173
    if-eqz v0, :cond_4

    .line 175
    :goto_4
    iput-boolean v15, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 177
    :cond_4
    move/from16 v16, v17

    .line 179
    goto/16 :goto_8

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    goto :goto_6

    .line 183
    :catch_2
    move-exception v0

    .line 184
    :goto_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 191
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v2, ": "

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 217
    if-eqz v0, :cond_5

    .line 219
    iput-boolean v15, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    :cond_5
    :try_start_4
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 223
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 226
    if-eqz v18, :cond_a

    .line 228
    aget-object v0, v18, v19

    .line 230
    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 235
    :cond_6
    aget-object v0, v18, v15

    .line 237
    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 242
    goto :goto_8

    .line 243
    :catch_3
    invoke-static {v14, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 248
    if-eqz v0, :cond_4

    .line 250
    goto :goto_4

    .line 251
    :goto_6
    :try_start_5
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 253
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 256
    if-eqz v18, :cond_8

    .line 258
    aget-object v1, v18, v19

    .line 260
    if-eqz v1, :cond_7

    .line 262
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 265
    :cond_7
    aget-object v1, v18, v15

    .line 267
    if-eqz v1, :cond_8

    .line 269
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 272
    goto :goto_7

    .line 273
    :catch_4
    invoke-static {v14, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v1, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 278
    if-eqz v1, :cond_8

    .line 280
    iput-boolean v15, v1, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 282
    :cond_8
    :goto_7
    throw v0

    .line 283
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "Unable to bind to full agent for "

    .line 287
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 292
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 294
    invoke-static {v0, v1, v14}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 299
    if-eqz v0, :cond_a

    .line 301
    iput-boolean v15, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 303
    :cond_a
    :goto_8
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 305
    if-eqz v0, :cond_b

    .line 307
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 309
    invoke-virtual {v13, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 312
    :cond_b
    return v16
.end method

.method public final initializeAgent()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 12
    iget v2, v2, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 14
    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 16
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    return v1
.end method

.method public final preflightCheck()I
    .locals 14

    .line 1
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    .line 3
    const/4 v7, 0x0

    .line 4
    if-nez v6, :cond_0

    .line 6
    return v7

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    .line 10
    move-result v0

    .line 11
    const/16 v8, -0x3eb

    .line 13
    if-eqz v0, :cond_3

    .line 15
    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 17
    iget-object v10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 19
    iget-object v11, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 21
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 23
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 26
    move-result-wide v12

    .line 27
    :try_start_0
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    iget v1, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    .line 31
    const/4 v5, 0x0

    .line 32
    move-wide v2, v12

    .line 33
    move-object v4, v6

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 37
    iget-wide v1, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mQuota:J

    .line 39
    iget v3, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    .line 41
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 43
    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 45
    iget v5, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportFlags:I

    .line 47
    move-object v0, v10

    .line 48
    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V

    .line 51
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    invoke-virtual {v0, v12, v13, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 58
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 63
    move-result-wide v0

    .line 64
    const-wide/16 v2, 0x0

    .line 66
    cmp-long v2, v0, v2

    .line 68
    if-gez v2, :cond_1

    .line 70
    long-to-int v0, v0

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    iget-object v2, v6, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 74
    const-string v3, "PFTBT$SPBP.preflightFullBackup()"

    .line 76
    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 79
    move-result-object v2

    .line 80
    iget-object v3, v2, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 82
    invoke-virtual {v3}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 85
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    iget-object v2, v2, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 88
    invoke-interface {v2, v0, v1, v4}, Lcom/android/internal/backup/IBackupTransport;->checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V

    .line 91
    invoke-virtual {v4}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 94
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 98
    const/16 v3, -0x3ed

    .line 100
    if-ne v2, v3, :cond_2

    .line 102
    new-instance v3, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight$$ExternalSyntheticLambda0;

    .line 104
    invoke-direct {v3, v6, v10, v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/app/IBackupAgent;J)V

    .line 107
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 109
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    .line 112
    move-result-wide v0

    .line 113
    new-instance v4, Lcom/android/server/backup/remote/RemoteCall;

    .line 115
    invoke-direct {v4, v7, v3, v0, v1}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    .line 118
    invoke-virtual {v4}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    move v8, v2

    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 130
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "Exception preflighting "

    .line 135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v2, ": "

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    const-string v1, "PFTBT"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_2
    move v0, v8

    .line 165
    :goto_3
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 167
    invoke-interface {p0}, Landroid/app/IBackupAgent;->clearBackupRestoreEventLogger()V

    .line 170
    return v0

    .line 171
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "Unable to bind to full agent for "

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 180
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 182
    const-string v1, "BackupManagerService"

    .line 184
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v8
.end method
