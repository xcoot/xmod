.class public final Lcom/android/server/enterprise/auditlog/AuditLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public logRemovableMediaEvents(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/storage/StorageVolume;

    .line 16
    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    goto/16 :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 28
    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    .line 30
    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->mContext:Landroid/content/Context;

    .line 32
    const-string/jumbo v1, "storage"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 41
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 49
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 61
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_3

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 98
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 103
    move-result v8

    .line 104
    const-string v2, "Removable Media Event: External SD Card "

    .line 106
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v10

    .line 110
    const/4 v7, 0x1

    .line 111
    const-string v9, "AuditLogService"

    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x5

    .line 115
    const/4 v6, 0x2

    .line 116
    const/4 v11, 0x0

    .line 117
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_4
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_2

    .line 130
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 135
    move-result v7

    .line 136
    const-string v1, "Removable Media Event: USB HOST MEMORY "

    .line 138
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v9

    .line 142
    const/4 v6, 0x1

    .line 143
    const-string v8, "AuditLogService"

    .line 145
    const/4 v3, 0x0

    .line 146
    const/4 v4, 0x5

    .line 147
    const/4 v5, 0x2

    .line 148
    const/4 v10, 0x0

    .line 149
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    goto :goto_0

    .line 153
    :cond_5
    :goto_1
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_8

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "android.intent.action.REBOOT"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 30
    goto/16 :goto_4

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 44
    const-string p1, "AuditLogService"

    .line 46
    const-string p2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 53
    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 56
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 58
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 60
    monitor-enter p1

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 63
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p0

    .line 73
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 85
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    monitor-exit p1

    .line 92
    goto/16 :goto_6

    .line 94
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    const-string v0, "android.intent.action.TIME_SET"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 110
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 113
    move-result v5

    .line 114
    const-string v6, "AuditLogService"

    .line 116
    const-string p0, "The device time has been changed. Current Time = %d"

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    move-result-wide p1

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    move-result-object p1

    .line 126
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    move-result-object v7

    .line 134
    const/4 v3, 0x2

    .line 135
    const/4 v4, 0x1

    .line 136
    const/4 v1, 0x0

    .line 137
    const/4 v2, 0x5

    .line 138
    const/4 v8, 0x0

    .line 139
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    goto/16 :goto_6

    .line 144
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p1

    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_6

    .line 157
    const-string p1, "android.intent.extra.USER"

    .line 159
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroid/os/UserHandle;

    .line 165
    if-eqz p1, :cond_4

    .line 167
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 170
    move-result v0

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 173
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 176
    move-result v6

    .line 177
    const-string v7, "AuditLogService"

    .line 179
    if-lez v0, :cond_5

    .line 181
    const-string p0, "Managed Profile has been created successfully - user %d"

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object p1

    .line 187
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 190
    move-result-object p1

    .line 191
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    :goto_2
    move-object v8, p0

    .line 196
    goto :goto_3

    .line 197
    :cond_5
    const-string p0, "Managed Profile has been created successfully"

    .line 199
    goto :goto_2

    .line 200
    :goto_3
    const/4 v4, 0x2

    .line 201
    const/4 v5, 0x1

    .line 202
    const/4 v2, 0x0

    .line 203
    const/4 v3, 0x5

    .line 204
    const/4 v9, 0x0

    .line 205
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    goto :goto_6

    .line 209
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_a

    .line 221
    const-string p1, "android.intent.extra.USER"

    .line 223
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/os/UserHandle;

    .line 229
    if-eqz p1, :cond_7

    .line 231
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 234
    move-result v0

    .line 235
    :cond_7
    if-lez v0, :cond_a

    .line 237
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 242
    move-result v6

    .line 243
    const-string v7, "AuditLogService"

    .line 245
    const-string p0, "Managed Profile has been removed - user %d"

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object p1

    .line 251
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 254
    move-result-object p1

    .line 255
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    move-result-object v8

    .line 259
    const/4 v4, 0x2

    .line 260
    const/4 v5, 0x1

    .line 261
    const/4 v2, 0x0

    .line 262
    const/4 v3, 0x5

    .line 263
    const/4 v9, 0x0

    .line 264
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    goto :goto_6

    .line 268
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 270
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 272
    monitor-enter p1

    .line 273
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 275
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 277
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 280
    move-result-object p0

    .line 281
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 284
    move-result-object p0

    .line 285
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result p2

    .line 289
    if-eqz p2, :cond_9

    .line 291
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    move-result-object p2

    .line 295
    check-cast p2, Lcom/android/server/enterprise/auditlog/Admin;

    .line 297
    iget-object p2, p2, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 299
    iget-object v0, p2, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 301
    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 303
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object p2, p2, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 308
    invoke-virtual {p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    .line 311
    goto :goto_5

    .line 312
    :catchall_1
    move-exception p0

    .line 313
    goto :goto_7

    .line 314
    :cond_9
    monitor-exit p1

    .line 315
    :cond_a
    :goto_6
    return-void

    .line 316
    :goto_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    throw p0

    .line 318
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 321
    move-result-object p1

    .line 322
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_b

    .line 330
    const-string p1, "Mounted"

    .line 332
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->logRemovableMediaEvents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 335
    goto :goto_8

    .line 336
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 339
    move-result-object p1

    .line 340
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result p1

    .line 346
    if-eqz p1, :cond_c

    .line 348
    const-string p1, "Unmounted"

    .line 350
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->logRemovableMediaEvents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 353
    :cond_c
    :goto_8
    return-void

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
