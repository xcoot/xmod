.class public Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIsPrimary:Z

.field private mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.companion.CompanionDeviceService"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    move-result-object v4

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, p4

    .line 15
    move v5, p2

    .line 16
    move v6, p1

    .line 17
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 20
    iput p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    .line 22
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 24
    iput-boolean p5, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final binderDied()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 4
    const-string v0, "CDM_CompanionServiceConnector"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "binderDied() "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    .line 32
    if-eqz v0, :cond_d

    .line 34
    iget v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    .line 36
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 38
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    check-cast v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;

    .line 44
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-boolean v3, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    .line 51
    const-string v4, "CDM_DevicePresenceProcessor"

    .line 53
    const-string/jumbo v5, "onBinderDied() u"

    .line 56
    const-string v6, "/"

    .line 58
    const-string v7, " isPrimary: "

    .line 60
    invoke-static {v1, v5, v6, v2, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v5

    .line 64
    invoke-static {v4, v5, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v3, :cond_2

    .line 70
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 72
    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 75
    move-result-object v5

    .line 76
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v5

    .line 80
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_1

    .line 86
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroid/companion/AssociationInfo;

    .line 92
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 95
    move-result-object v6

    .line 96
    const-string v7, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_0

    .line 104
    const-string v5, "CDM_DevicePresenceProcessor"

    .line 106
    const-string v7, "Disable hint mode for device profile: "

    .line 108
    invoke-static {v7, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 113
    const/16 v6, 0x12

    .line 115
    invoke-virtual {v5, v6, v4}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 118
    :cond_1
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 120
    iget-object v6, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 122
    monitor-enter v6

    .line 123
    :try_start_0
    iget-object v7, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 125
    new-instance v8, Landroid/util/Pair;

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v9

    .line 131
    invoke-direct {v8, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    check-cast v7, Ljava/util/HashMap;

    .line 136
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    iget-object v7, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 142
    monitor-enter v7

    .line 143
    :try_start_1
    iget-object v5, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 145
    new-instance v6, Landroid/util/Pair;

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v8

    .line 151
    invoke-direct {v6, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    check-cast v5, Ljava/util/HashSet;

    .line 156
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v7

    .line 160
    goto :goto_0

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw p0

    .line 164
    :catchall_1
    move-exception p0

    .line 165
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    throw p0

    .line 167
    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 169
    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    .line 172
    move-result-object v5

    .line 173
    iget-object v6, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 175
    invoke-virtual {v6, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 178
    move-result-object v6

    .line 179
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v6

    .line 183
    move v7, v4

    .line 184
    move v8, v7

    .line 185
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v9

    .line 189
    const/4 v10, 0x1

    .line 190
    if-eqz v9, :cond_6

    .line 192
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v7

    .line 196
    check-cast v7, Landroid/companion/AssociationInfo;

    .line 198
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    .line 201
    move-result v9

    .line 202
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 205
    move-result v11

    .line 206
    if-eqz v11, :cond_4

    .line 208
    if-eqz v3, :cond_3

    .line 210
    invoke-virtual {v0, v9}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_3

    .line 216
    iget-object v7, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 218
    const/4 v8, 0x5

    .line 219
    invoke-virtual {v0, v7, v9, v8}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 222
    :cond_3
    iget-object v7, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 224
    invoke-virtual {v7, v1, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    .line 227
    move-result v8

    .line 228
    goto :goto_2

    .line 229
    :cond_4
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_5

    .line 235
    move v8, v10

    .line 236
    :cond_5
    :goto_2
    move v7, v10

    .line 237
    goto :goto_1

    .line 238
    :cond_6
    check-cast v5, Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    move-result-object v3

    .line 244
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_8

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 256
    iget-object v5, v5, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 258
    iget-object v6, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 260
    check-cast v6, Ljava/util/HashSet;

    .line 262
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_7

    .line 268
    move v4, v10

    .line 269
    :cond_8
    if-eqz v7, :cond_9

    .line 271
    if-nez v8, :cond_a

    .line 273
    :cond_9
    if-eqz v4, :cond_d

    .line 275
    :cond_a
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    const-string v3, "CDM_CompanionAppBinder"

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    .line 284
    const-string/jumbo v5, "scheduleRebinding() "

    .line 287
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string v5, "/"

    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v4

    .line 305
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 310
    monitor-enter v3

    .line 311
    :try_start_3
    iget-object v4, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 313
    new-instance v5, Landroid/util/Pair;

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    move-result-object v6

    .line 319
    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    check-cast v4, Ljava/util/HashSet;

    .line 324
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 327
    move-result v4

    .line 328
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 329
    if-eqz v4, :cond_b

    .line 331
    const-string v0, "CDM_CompanionAppBinder"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    .line 335
    const-string v2, "CompanionApplication rebinding has been scheduled, skipping "

    .line 337
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 342
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object p0

    .line 349
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    goto :goto_4

    .line 353
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    .line 355
    if-eqz v3, :cond_c

    .line 357
    iget-object v3, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 359
    monitor-enter v3

    .line 360
    :try_start_4
    iget-object v4, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 362
    new-instance v5, Landroid/util/Pair;

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    move-result-object v6

    .line 368
    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    check-cast v4, Ljava/util/HashSet;

    .line 373
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    monitor-exit v3

    .line 377
    goto :goto_3

    .line 378
    :catchall_2
    move-exception p0

    .line 379
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 380
    throw p0

    .line 381
    :cond_c
    :goto_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 384
    move-result-object v3

    .line 385
    new-instance v4, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;

    .line 387
    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    .line 390
    const-wide/16 v0, 0x2710

    .line 392
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    goto :goto_4

    .line 396
    :catchall_3
    move-exception p0

    .line 397
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 398
    throw p0

    .line 399
    :cond_d
    :goto_4
    return-void
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    return-wide v0
.end method

.method public final getJobHandler()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 3
    if-nez p0, :cond_1

    .line 5
    const-class p0, Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 14
    const-string/jumbo v1, "companion-device-service-connector"

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 21
    sput-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 23
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    goto :goto_2

    .line 33
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 37
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final isPrimary()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    .line 3
    return p0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    .line 1
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v0, "onServiceConnectionStatusChanged() "

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p0, " connected="

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string p1, "CDM_CompanionServiceConnector"

    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public final setListener(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    .line 3
    return-void
.end method
