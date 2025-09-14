.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService$2;

    .line 10
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 16
    check-cast p0, [Ljava/lang/String;

    .line 18
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 20
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    array-length v2, p0

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-ne v2, v3, :cond_4

    .line 30
    aget-object v2, p0, v4

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_4

    .line 38
    :try_start_0
    iget-object p0, v0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 43
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-eqz p0, :cond_3

    .line 46
    if-eq p0, v3, :cond_2

    .line 48
    const/4 v2, 0x2

    .line 49
    if-eq p0, v2, :cond_1

    .line 51
    const/4 v2, 0x3

    .line 52
    if-eq p0, v2, :cond_0

    .line 54
    const-string v2, "BackupTransportManager"

    .line 56
    iget v0, v0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    const-string v4, "Package "

    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " enabled setting: "

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance p0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {v0, v1, p0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance p0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {v0, v1, p0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    new-instance v2, Landroid/util/ArraySet;

    .line 116
    array-length v3, p0

    .line 117
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 120
    array-length v3, p0

    .line 121
    :goto_0
    if-ge v4, v3, :cond_5

    .line 123
    aget-object v5, p0, v4

    .line 125
    new-instance v6, Landroid/content/ComponentName;

    .line 127
    invoke-direct {v6, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_6

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    iget-object v3, v0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 145
    monitor-enter v3

    .line 146
    :try_start_1
    iget-object p0, v0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 148
    check-cast p0, Landroid/util/ArrayMap;

    .line 150
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 153
    move-result-object p0

    .line 154
    new-instance v4, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;

    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-direct {v4, v5, v2}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 160
    invoke-interface {p0, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 163
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    new-instance p0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;

    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 170
    invoke-virtual {v0, v1, p0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 173
    :catch_0
    :goto_1
    return-void

    .line 174
    :catchall_0
    move-exception p0

    .line 175
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    throw p0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 179
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 181
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 183
    check-cast v1, Landroid/content/ComponentName;

    .line 185
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 187
    check-cast p0, Landroid/app/backup/ISelectBackupTransportCallback;

    .line 189
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 191
    iget-object v3, v2, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 193
    monitor-enter v3

    .line 194
    const/4 v4, -0x1

    .line 195
    const/4 v5, 0x0

    .line 196
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v2, v6}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :try_start_4
    monitor-exit v3

    .line 204
    goto :goto_2

    .line 205
    :catchall_1
    move-exception p0

    .line 206
    goto :goto_6

    .line 207
    :catch_1
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    invoke-virtual {v2, v1}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_7

    .line 214
    move v5, v3

    .line 215
    goto :goto_2

    .line 216
    :cond_7
    iget-object v6, v2, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 218
    monitor-enter v6

    .line 219
    :try_start_5
    invoke-virtual {v2, v1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v2, v3}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 226
    :try_start_6
    monitor-exit v6

    .line 227
    goto :goto_2

    .line 228
    :catchall_2
    move-exception p0

    .line 229
    goto :goto_5

    .line 230
    :catch_2
    const-string v3, "BackupTransportManager"

    .line 232
    iget v2, v2, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 234
    const-string v5, "Transport got unregistered"

    .line 236
    invoke-static {v2, v5}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v2

    .line 240
    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 244
    move v5, v4

    .line 245
    :goto_2
    const/4 v2, 0x0

    .line 246
    if-nez v5, :cond_8

    .line 248
    :try_start_7
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 250
    invoke-virtual {v3, v1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_7 .. :try_end_7} :catch_3

    .line 257
    :cond_8
    move v4, v5

    .line 258
    goto :goto_3

    .line 259
    :catch_3
    const-string v1, "BackupManagerService"

    .line 261
    iget v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 263
    const-string v5, "Transport got unregistered"

    .line 265
    invoke-static {v3, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v3

    .line 269
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_3
    if-eqz v2, :cond_9

    .line 274
    :try_start_8
    invoke-interface {p0, v2}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    .line 277
    goto :goto_4

    .line 278
    :cond_9
    invoke-interface {p0, v4}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 281
    goto :goto_4

    .line 282
    :catch_4
    const-string p0, "BackupManagerService"

    .line 284
    iget v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 286
    const-string v1, "ISelectBackupTransportCallback listener not available"

    .line 288
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_4
    return-void

    .line 296
    :goto_5
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 297
    throw p0

    .line 298
    :goto_6
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 299
    throw p0

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
