.class public final Lcom/android/server/companion/association/DisassociationProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x5a

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/companion/association/DisassociationProcessor;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/android/server/companion/association/AssociationStore;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 10
    iput-object p4, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 12
    new-instance p1, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    .line 17
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    .line 19
    iput-object p5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 21
    iput-object p6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 23
    iput-object p7, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 25
    iput-object p8, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 27
    return-void
.end method


# virtual methods
.method public final disassociate(I)V
    .locals 12

    .line 1
    const-string v0, "CDM_DisassociationProcessor"

    .line 3
    const-string v1, "Disassociating id=["

    .line 5
    const-string v2, "]..."

    .line 7
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_0

    .line 31
    iget-object v5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 33
    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 36
    move-result-object v5

    .line 37
    new-instance v6, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v6, v3, p1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 42
    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 48
    move v5, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v5, 0x0

    .line 51
    :goto_0
    new-instance v6, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;

    .line 53
    invoke-direct {v6, p0, v2, v1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;Ljava/lang/String;I)V

    .line 56
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v6

    .line 66
    const/16 v7, 0xc8

    .line 68
    if-gt v6, v7, :cond_1

    .line 70
    if-eqz v3, :cond_1

    .line 72
    if-nez v5, :cond_1

    .line 74
    const-string v1, "CDM_DisassociationProcessor"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "Cannot disassociate id=["

    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, "] now - process is visible. Start listening to package importance..."

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance p1, Landroid/companion/AssociationInfo$Builder;

    .line 100
    invoke-direct {p1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 103
    invoke-virtual {p1, v4}, Landroid/companion/AssociationInfo$Builder;->setRevoked(Z)Landroid/companion/AssociationInfo$Builder;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 116
    const-string p1, "Start listening to uid importance changes..."

    .line 118
    const-string v0, "CDM_DisassociationProcessor"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    new-instance p1, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;

    .line 125
    const/4 v1, 0x1

    .line 126
    invoke-direct {p1, p0, v1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;I)V

    .line 129
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_1

    .line 133
    :catch_0
    const-string p0, "Failed to start listening to uid importance changes."

    .line 135
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 141
    invoke-virtual {v6, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    .line 144
    iget-object v6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 146
    invoke-virtual {v6, v1, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->removeRequestsByAssociationId(II)V

    .line 149
    iget-object v6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 151
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 154
    move-result v7

    .line 155
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    const-string v8, "Can\'t remove association id=["

    .line 160
    const-string v9, "CDM_AssociationStore"

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    .line 164
    const-string v11, "Removing association id=["

    .line 166
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v11, "]..."

    .line 174
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v10

    .line 181
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v9, v6, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 186
    monitor-enter v9

    .line 187
    :try_start_1
    iget-object v10, v6, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 189
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v11

    .line 193
    check-cast v10, Ljava/util/HashMap;

    .line 195
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-result-object v10

    .line 199
    check-cast v10, Landroid/companion/AssociationInfo;

    .line 201
    if-nez v10, :cond_2

    .line 203
    const-string v4, "CDM_AssociationStore"

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v7, "]. It does not exist."

    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v6

    .line 222
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v9

    .line 226
    goto :goto_2

    .line 227
    :catchall_0
    move-exception p0

    .line 228
    goto/16 :goto_5

    .line 230
    :cond_2
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 233
    move-result v7

    .line 234
    iget-object v8, v6, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 236
    new-instance v11, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    .line 238
    invoke-direct {v11, v6, v7}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    .line 241
    invoke-interface {v8, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 244
    const-string v7, "CDM_AssociationStore"

    .line 246
    const-string v8, "Done removing association."

    .line 248
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 255
    move-result-object v7

    .line 256
    sget-object v8, Lcom/android/server/companion/utils/MetricUtils;->METRIC_DEVICE_PROFILE:Ljava/util/Map;

    .line 258
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-result-object v7

    .line 262
    check-cast v7, Ljava/lang/Integer;

    .line 264
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 267
    move-result v7

    .line 268
    const/16 v8, 0x1c3

    .line 270
    const/4 v9, 0x2

    .line 271
    invoke-static {v8, v9, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 274
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->isActive()Z

    .line 277
    move-result v7

    .line 278
    if-eqz v7, :cond_3

    .line 280
    invoke-virtual {v6, v4, v10}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 283
    :cond_3
    :goto_2
    if-nez v5, :cond_5

    .line 285
    if-eqz v3, :cond_5

    .line 287
    const-string v4, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_5

    .line 295
    iget-object v9, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 300
    move-result v10

    .line 301
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 308
    move-result-object v6

    .line 309
    if-nez v6, :cond_4

    .line 311
    goto :goto_3

    .line 312
    :cond_4
    const-class v3, Landroid/app/role/RoleManager;

    .line 314
    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 317
    move-result-object v3

    .line 318
    move-object v5, v3

    .line 319
    check-cast v5, Landroid/app/role/RoleManager;

    .line 321
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 324
    move-result-object v8

    .line 325
    const-string v3, "Removing CDM role="

    .line 327
    const-string v4, " for userId="

    .line 329
    const-string v11, ", packageName="

    .line 331
    invoke-static {v10, v3, v6, v4, v11}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v3

    .line 342
    const-string v4, "CDM_RolesUtils"

    .line 344
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v3, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;

    .line 349
    move-object v4, v3

    .line 350
    invoke-direct/range {v4 .. v10}, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;I)V

    .line 353
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 356
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 358
    invoke-virtual {v3, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_7

    .line 364
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 367
    move-result p1

    .line 368
    if-nez p1, :cond_6

    .line 370
    goto :goto_4

    .line 371
    :cond_6
    iget-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 373
    invoke-virtual {p1, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 376
    move-result-object p1

    .line 377
    new-instance v0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda1;

    .line 379
    invoke-direct {v0, p0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    .line 382
    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_7

    .line 388
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 390
    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    .line 393
    :cond_7
    :goto_4
    return-void

    .line 394
    :goto_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    throw p0
.end method

.method public final removeIdleSelfManagedAssociations()V
    .locals 10

    .line 1
    const-string v0, "CDM_DisassociationProcessor"

    .line 3
    const-string v1, "Removing idle self-managed associations."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    const-string/jumbo v3, "debug.cdm.cdmservice.removal_time_window"

    .line 15
    const-wide/16 v4, -0x1

    .line 17
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 20
    move-result-wide v3

    .line 21
    const-wide/16 v5, 0x0

    .line 23
    cmp-long v5, v3, v5

    .line 25
    if-gtz v5, :cond_0

    .line 27
    sget-wide v3, Lcom/android/server/companion/association/DisassociationProcessor;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    .line 29
    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 31
    invoke-virtual {v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v5

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_3

    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Landroid/companion/AssociationInfo;

    .line 51
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    .line 61
    move-result-wide v7

    .line 62
    sub-long v7, v1, v7

    .line 64
    cmp-long v7, v7, v3

    .line 66
    if-ltz v7, :cond_1

    .line 68
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    .line 71
    move-result v7

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    const-string v9, "Removing inactive self-managed association=["

    .line 76
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v6, "]."

    .line 88
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, v7}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method
