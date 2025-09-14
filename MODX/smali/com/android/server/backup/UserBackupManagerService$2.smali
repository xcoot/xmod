.class public final Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v1, :cond_3

    .line 20
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 28
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    const-string p1, "android.intent.extra.changed_package_list"

    .line 47
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    move p1, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 61
    const-string p1, "android.intent.extra.changed_package_list"

    .line 63
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    :cond_2
    move p1, v3

    .line 68
    move v2, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_4

    .line 76
    return-void

    .line 77
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_5

    .line 83
    new-array v4, v2, [Ljava/lang/String;

    .line 85
    aput-object v1, v4, v3

    .line 87
    :cond_5
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6

    .line 95
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 103
    iget-object p2, p2, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 105
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;

    .line 107
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void

    .line 114
    :cond_6
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    const-string p1, "android.intent.extra.REPLACING"

    .line 122
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    move-result p1

    .line 126
    :goto_1
    if-eqz v4, :cond_e

    .line 128
    array-length p2, v4

    .line 129
    if-nez p2, :cond_7

    .line 131
    goto/16 :goto_a

    .line 133
    :cond_7
    const-string p2, "android.intent.extra.UID"

    .line 135
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 138
    move-result p2

    .line 139
    if-eqz v2, :cond_c

    .line 141
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 143
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 145
    monitor-enter v0

    .line 146
    if-eqz p1, :cond_8

    .line 148
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 150
    invoke-static {p1, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto/16 :goto_7

    .line 157
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 159
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    .line 162
    move-result-object p2

    .line 163
    array-length v1, v4

    .line 164
    move v2, v3

    .line 165
    :goto_3
    if-ge v2, v1, :cond_9

    .line 167
    aget-object v5, v4, v2

    .line 169
    invoke-virtual {p1, v5, p2}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 174
    goto :goto_3

    .line 175
    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    move-result-wide p1

    .line 180
    array-length v0, v4

    .line 181
    move v1, v3

    .line 182
    :goto_4
    if-ge v1, v0, :cond_b

    .line 184
    aget-object v2, v4, v1

    .line 186
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 188
    iget-object v6, v5, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 190
    iget v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 192
    invoke-virtual {v6, v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 195
    move-result-object v5

    .line 196
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 198
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 200
    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_a

    .line 206
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 208
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 210
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 212
    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_a

    .line 218
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 220
    invoke-virtual {v5, p1, p2, v2}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 225
    const-wide/16 v6, 0x0

    .line 227
    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 230
    goto :goto_5

    .line 231
    :cond_a
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 233
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 235
    monitor-enter v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :try_start_2
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 238
    invoke-virtual {v6, v2}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 241
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 244
    iget-object v6, v5, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 246
    iget-object v7, v5, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 248
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 253
    invoke-virtual {v7, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :goto_5
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 258
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 260
    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;

    .line 262
    const/4 v7, 0x1

    .line 263
    invoke-direct {v6, v2, v7, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 266
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    goto :goto_6

    .line 270
    :catchall_1
    move-exception v6

    .line 271
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    :try_start_5
    throw v6
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 273
    :catch_0
    const-string v5, "BackupManagerService"

    .line 275
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 277
    iget v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    .line 281
    const-string v8, "Can\'t resolve new app "

    .line 283
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    move-result-object v2

    .line 293
    invoke-static {v6, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 296
    move-result-object v2

    .line 297
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 302
    goto :goto_4

    .line 303
    :cond_b
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 305
    const-string p1, "@pm@"

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 310
    goto :goto_a

    .line 311
    :goto_7
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 312
    throw p0

    .line 313
    :cond_c
    if-nez p1, :cond_d

    .line 315
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 317
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 319
    monitor-enter p1

    .line 320
    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 322
    invoke-static {v0, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 325
    monitor-exit p1

    .line 326
    goto :goto_8

    .line 327
    :catchall_2
    move-exception p0

    .line 328
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 329
    throw p0

    .line 330
    :cond_d
    :goto_8
    array-length p1, v4

    .line 331
    :goto_9
    if-ge v3, p1, :cond_e

    .line 333
    aget-object p2, v4, v3

    .line 335
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 337
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 339
    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;

    .line 341
    const/4 v2, 0x2

    .line 342
    invoke-direct {v1, p2, v2, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    add-int/lit8 v3, v3, 0x1

    .line 350
    goto :goto_9

    .line 351
    :cond_e
    :goto_a
    return-void
.end method
