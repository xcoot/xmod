.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.super Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

.field public static final EXCLUDED_ADMINS:Ljava/util/List;

.field public static final MY_PID:I

.field public static final NON_MDM_ADMINS:Ljava/util/List;

.field public static final allowToSkipRuntimePermission:[Ljava/lang/String;

.field public static final allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

.field public static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public static mIsFirmwareUpgrade:Z

.field public static final mKADelegationMapping:Ljava/util/HashMap;

.field public static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public static final mServiceAdditionCondition:Landroid/os/ConditionVariable;


# instance fields
.field public final mAdminList:Ljava/util/ArrayList;

.field public final mAdminMap:Ljava/util/HashMap;

.field public mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

.field public mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserId:I

.field public final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field public mDeferredServicesCreated:Z

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

.field public mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

.field public final mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public final mLockDoNoUseDirectly:Ljava/lang/Object;

.field public mMamState:Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

.field public mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

.field public final mPMS:Landroid/content/pm/IPackageManager;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field public mPseudoAdminUid:I

.field public final mReceiver:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

.field public mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

.field public mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

.field public mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;


# direct methods
.method public static -$$Nest$msystemReady(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "EnterpriseDeviceManagerService"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v4, "systemReady() : mCurrentPhase = "

    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/16 v0, 0x1e0

    .line 30
    if-eq v2, v0, :cond_17

    .line 32
    const/16 v0, 0x1f4

    .line 34
    if-eq v2, v0, :cond_0

    .line 36
    goto/16 :goto_10

    .line 38
    :cond_0
    const-string v0, "EnterpriseDeviceManagerService"

    .line 40
    const-string/jumbo v3, "systemReady()"

    .line 43
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "EnterpriseDeviceManagerService"

    .line 48
    const-string v3, "ConstrainedModeService move to system ready "

    .line 50
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 55
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 57
    if-eqz v0, :cond_16

    .line 59
    sget-object v3, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 61
    if-nez v3, :cond_2

    .line 63
    sget-object v3, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->lock:Ljava/lang/Object;

    .line 65
    monitor-enter v3

    .line 66
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 68
    if-nez v4, :cond_1

    .line 70
    new-instance v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 72
    invoke-direct {v4, v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;-><init>(Landroid/content/Context;)V

    .line 75
    sput-object v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 77
    const-class v0, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 79
    invoke-static {v0, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    monitor-exit v3

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0

    .line 89
    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 91
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 93
    if-eqz v0, :cond_15

    .line 95
    sget-object v3, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mamService:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 97
    if-nez v3, :cond_3

    .line 99
    sget-object v3, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->lock:Ljava/lang/Object;

    .line 101
    monitor-enter v3

    .line 102
    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 104
    invoke-direct {v4, v0}, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;-><init>(Landroid/content/Context;)V

    .line 107
    sput-object v4, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mamService:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 109
    const-class v0, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 111
    invoke-static {v0, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 114
    monitor-exit v3

    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    throw v0

    .line 119
    :cond_3
    :goto_3
    const-class v0, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 121
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 127
    iput-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 129
    const-class v0, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 131
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 137
    iput-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMamState:Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDeviceOwnedByOrganization()Z

    .line 142
    move-result v0

    .line 143
    const/4 v3, 0x1

    .line 144
    const/4 v4, 0x0

    .line 145
    if-nez v0, :cond_5

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_5

    .line 153
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 155
    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->checkConstrainedState()Z

    .line 160
    move-result v0

    .line 161
    if-ne v0, v3, :cond_4

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    const-string v5, "EnterpriseDeviceManagerService"

    .line 166
    :try_start_2
    const-string/jumbo v0, "pkgName"

    .line 169
    filled-new-array {v0}, [Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 175
    const-string v7, "LICENSE"

    .line 177
    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_6

    .line 189
    const-string/jumbo v0, "checkIfKnoxLicenseActivated() : License is activated"

    .line 192
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    const-string v0, "EnterpriseDeviceManagerService"

    .line 197
    const-string/jumbo v5, "knox ztna service started"

    .line 200
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 205
    new-instance v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 207
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 209
    invoke-direct {v5, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    const-string/jumbo v0, "knox_nwFilterMgr_policy"

    .line 218
    invoke-static {v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 221
    goto :goto_5

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string/jumbo v6, "checkIfKnoxLicenseActivated() : failed. "

    .line 226
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    goto :goto_5

    .line 230
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 233
    :cond_6
    :goto_5
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 235
    invoke-static {v0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 238
    move-result-object v0

    .line 239
    sget-object v5, Lcom/android/server/enterprise/plm/StartReason;->EDM_SYSTEM_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 241
    iget-object v0, v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    invoke-static {v0, v3, v5}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 255
    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 257
    const-string v0, "RestrictionToastManagerThread"

    .line 259
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 262
    move-result-object v0

    .line 263
    new-instance v5, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    .line 265
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 268
    move-result-object v0

    .line 269
    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    sput-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    .line 274
    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 276
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 278
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v6, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    .line 283
    invoke-direct {v6, v0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    .line 286
    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 288
    :try_start_3
    new-instance v8, Landroid/content/IntentFilter;

    .line 290
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    .line 296
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    .line 302
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    .line 308
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    .line 314
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    .line 320
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 325
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 328
    const/4 v10, 0x0

    .line 329
    const/4 v11, 0x2

    .line 330
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 333
    goto :goto_6

    .line 334
    :catch_1
    move-exception v0

    .line 335
    const-string v5, "AccountsReceiver"

    .line 337
    const-string/jumbo v6, "register Account Receiver : failed. "

    .line 340
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :goto_6
    new-instance v0, Landroid/os/HandlerThread;

    .line 345
    const-string v5, "InternalHandlerThread"

    .line 347
    const/16 v6, 0xa

    .line 349
    invoke-direct {v0, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 355
    new-instance v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 357
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 360
    move-result-object v0

    .line 361
    invoke-direct {v5, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/os/Looper;)V

    .line 364
    iput-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 366
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;

    .line 368
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 377
    move-result-object v5

    .line 378
    monitor-enter v5

    .line 379
    :try_start_4
    const-string v0, "EnterpriseDeviceManagerService"

    .line 381
    const-string/jumbo v6, "loadActiveAdmins"

    .line 384
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 389
    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 396
    move-result-object v6

    .line 397
    :cond_7
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    move-result v0

    .line 401
    const/4 v7, 0x0

    .line 402
    if-eqz v0, :cond_d

    .line 404
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    move-result-object v0

    .line 408
    move-object v8, v0

    .line 409
    check-cast v8, Ljava/lang/Integer;

    .line 411
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 414
    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 415
    :try_start_5
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 417
    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    .line 420
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 421
    goto :goto_8

    .line 422
    :catchall_2
    move-exception v0

    .line 423
    goto/16 :goto_f

    .line 425
    :catch_2
    move-exception v0

    .line 426
    :try_start_6
    const-string v9, "EnterpriseDeviceManagerService"

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    .line 430
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    const-string/jumbo v11, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    .line 436
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v0

    .line 450
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    move v0, v7

    .line 454
    :goto_8
    if-eqz v0, :cond_8

    .line 456
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 458
    invoke-direct {v0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 461
    iput v15, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 463
    iget-object v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 465
    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    goto :goto_7

    .line 469
    :cond_8
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 471
    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 474
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 475
    if-nez v0, :cond_9

    .line 477
    goto :goto_7

    .line 478
    :cond_9
    :try_start_7
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 481
    move-result v8

    .line 482
    invoke-virtual {v1, v0, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 485
    move-result-object v8

    .line 486
    if-eqz v8, :cond_c

    .line 488
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 491
    move-result-object v9

    .line 492
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 494
    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 496
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 498
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    move-result-object v10

    .line 502
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 510
    if-ne v14, v15, :cond_a

    .line 512
    :try_start_8
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 514
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 517
    move-result v10

    .line 518
    invoke-interface {v9, v0, v10}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 521
    move-result v9

    .line 522
    if-nez v9, :cond_7

    .line 524
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 526
    invoke-direct {v9, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 529
    invoke-virtual {v1, v9, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 532
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 535
    move-result-object v8

    .line 536
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 539
    move-result v9

    .line 540
    invoke-virtual {v1, v9, v8, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 543
    const-string v7, "EnterpriseDeviceManagerService"

    .line 545
    new-instance v8, Ljava/lang/StringBuilder;

    .line 547
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    const-string v9, "Admin invalid on DPM, removing from EDM:   "

    .line 552
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v0, ", uid: "

    .line 564
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    move-result-object v0

    .line 574
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 577
    goto/16 :goto_7

    .line 579
    :catch_3
    move-exception v0

    .line 580
    goto/16 :goto_9

    .line 582
    :catch_4
    move-exception v0

    .line 583
    :try_start_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 586
    goto/16 :goto_7

    .line 588
    :cond_a
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 590
    const-string v13, "ADMIN_INFO"

    .line 592
    const-string v16, "adminUid"

    .line 594
    const/4 v11, 0x0

    .line 595
    move v10, v15

    .line 596
    move v12, v14

    .line 597
    move v7, v14

    .line 598
    move-object/from16 v14, v16

    .line 600
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 603
    move-result v9

    .line 604
    if-eqz v9, :cond_b

    .line 606
    const-string v9, "EnterpriseDeviceManagerService"

    .line 608
    new-instance v10, Ljava/lang/StringBuilder;

    .line 610
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    const-string v11, "Admin "

    .line 615
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 621
    move-result-object v11

    .line 622
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v11, ", updated with new currentUid: "

    .line 627
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    const-string v11, ", old storedUid: "

    .line 635
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    move-result-object v10

    .line 645
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 648
    :try_start_a
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 650
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 653
    move-result v10

    .line 654
    invoke-interface {v9, v0, v10}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 657
    move-result v9

    .line 658
    if-nez v9, :cond_7

    .line 660
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 662
    invoke-direct {v9, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 665
    invoke-virtual {v1, v9, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 668
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 671
    move-result-object v8

    .line 672
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 675
    move-result v9

    .line 676
    const/4 v10, 0x0

    .line 677
    invoke-virtual {v1, v9, v8, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 680
    const-string v8, "EnterpriseDeviceManagerService"

    .line 682
    new-instance v9, Ljava/lang/StringBuilder;

    .line 684
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    const-string v10, "Admin invalid on DPM, removing from EDM: "

    .line 689
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v0, ", uid: "

    .line 701
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    move-result-object v0

    .line 711
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 714
    goto/16 :goto_7

    .line 716
    :catch_5
    move-exception v0

    .line 717
    :try_start_b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 720
    goto/16 :goto_7

    .line 722
    :cond_b
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 725
    move-result-object v7

    .line 726
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 728
    iput v15, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 730
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    .line 732
    invoke-direct {v7, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 735
    invoke-virtual {v1, v7, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 738
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 741
    move-result-object v7

    .line 742
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 745
    move-result v8

    .line 746
    const/4 v9, 0x0

    .line 747
    invoke-virtual {v1, v8, v7, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 750
    const-string v7, "EnterpriseDeviceManagerService"

    .line 752
    new-instance v8, Ljava/lang/StringBuilder;

    .line 754
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    const-string v9, "Failed updating uid, removed: "

    .line 759
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string v0, ", uid: "

    .line 771
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    move-result-object v0

    .line 781
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    goto/16 :goto_7

    .line 786
    :cond_c
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    .line 788
    invoke-direct {v7, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 791
    invoke-virtual {v1, v7, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 794
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 797
    move-result v7

    .line 798
    const/4 v10, 0x0

    .line 799
    invoke-virtual {v1, v7, v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 802
    const-string v7, "EnterpriseDeviceManagerService"

    .line 804
    new-instance v8, Ljava/lang/StringBuilder;

    .line 806
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    const-string v9, "Admin loaded null, removed: "

    .line 811
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 817
    move-result-object v0

    .line 818
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v0, ", uid: "

    .line 823
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 832
    move-result-object v0

    .line 833
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 836
    goto/16 :goto_7

    .line 838
    :goto_9
    :try_start_c
    const-string v7, "EnterpriseDeviceManagerService"

    .line 840
    new-instance v8, Ljava/lang/StringBuilder;

    .line 842
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    const-string v9, "Exception occured while loading active admins "

    .line 847
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    move-result-object v0

    .line 861
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    goto/16 :goto_7

    .line 866
    :cond_d
    move v10, v7

    .line 867
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 869
    const-string/jumbo v6, "user"

    .line 872
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 875
    move-result-object v0

    .line 876
    check-cast v0, Landroid/os/UserManager;

    .line 878
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 881
    move-result-object v0

    .line 882
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 885
    move-result-object v6

    .line 886
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_14

    .line 892
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 895
    move-result-object v0

    .line 896
    move-object v7, v0

    .line 897
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 899
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    .line 901
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminsInfo(I)Ljava/util/List;

    .line 904
    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 905
    :try_start_d
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 907
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 909
    invoke-interface {v0, v9}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    .line 912
    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 913
    goto :goto_a

    .line 914
    :catch_6
    move-exception v0

    .line 915
    :try_start_e
    const-string v9, "EnterpriseDeviceManagerService"

    .line 917
    new-instance v11, Ljava/lang/StringBuilder;

    .line 919
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    const-string v12, "Failed to get active admins from dpm "

    .line 924
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 937
    move-result-object v0

    .line 938
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    move-object v0, v4

    .line 942
    :goto_a
    if-eqz v0, :cond_e

    .line 944
    check-cast v8, Ljava/util/ArrayList;

    .line 946
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 949
    move-result v9

    .line 950
    if-eqz v9, :cond_10

    .line 952
    const-string v8, "EnterpriseDeviceManagerService"

    .line 954
    new-instance v9, Ljava/lang/StringBuilder;

    .line 956
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    const-string v11, "Adding all admins from DPM for user : "

    .line 961
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    .line 966
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    move-result-object v9

    .line 973
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 979
    move-result-object v0

    .line 980
    :cond_f
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 983
    move-result v8

    .line 984
    if-eqz v8, :cond_e

    .line 986
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 989
    move-result-object v8

    .line 990
    check-cast v8, Landroid/content/ComponentName;

    .line 992
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 994
    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 997
    move-result-object v9

    .line 998
    if-eqz v9, :cond_f

    .line 1000
    const-string v11, "EnterpriseDeviceManagerService"

    .line 1002
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1004
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    const-string v13, "Adding missing admin to EDM : "

    .line 1009
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1018
    move-result-object v12

    .line 1019
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 1025
    move-result-object v11

    .line 1026
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1028
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1030
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 1032
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1035
    move-result-object v13

    .line 1036
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 1041
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1046
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1049
    move-result-object v8

    .line 1050
    invoke-virtual {v9, v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdmin(ILjava/lang/String;)V

    .line 1053
    goto :goto_b

    .line 1054
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1057
    move-result-object v0

    .line 1058
    :cond_11
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1061
    move-result v9

    .line 1062
    if-eqz v9, :cond_e

    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1067
    move-result-object v9

    .line 1068
    check-cast v9, Landroid/content/ComponentName;

    .line 1070
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1073
    move-result-object v11

    .line 1074
    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1077
    move-result v12

    .line 1078
    if-eqz v12, :cond_13

    .line 1080
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1083
    move-result-object v12

    .line 1084
    check-cast v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1086
    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 1089
    move-result-object v12

    .line 1090
    invoke-virtual {v12, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1093
    move-result v12

    .line 1094
    if-eqz v12, :cond_12

    .line 1096
    move v11, v3

    .line 1097
    goto :goto_d

    .line 1098
    :cond_13
    move v11, v10

    .line 1099
    :goto_d
    if-nez v11, :cond_11

    .line 1101
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1103
    invoke-virtual {v1, v9, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1106
    move-result-object v11

    .line 1107
    if-eqz v11, :cond_11

    .line 1109
    const-string v12, "EnterpriseDeviceManagerService"

    .line 1111
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1113
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    const-string v14, "Adding missing admin to EDM : "

    .line 1118
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1124
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1127
    move-result-object v13

    .line 1128
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 1134
    move-result-object v12

    .line 1135
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1137
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1139
    iget-object v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 1141
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1144
    move-result-object v14

    .line 1145
    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget-object v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 1150
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1155
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1158
    move-result-object v9

    .line 1159
    invoke-virtual {v11, v12, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdmin(ILjava/lang/String;)V

    .line 1162
    goto :goto_c

    .line 1163
    :cond_14
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1164
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 1172
    :try_start_f
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startRemoteDesktopService()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_7

    .line 1175
    goto :goto_e

    .line 1176
    :catch_7
    move-exception v0

    .line 1177
    move-object v3, v0

    .line 1178
    const-string v0, "EnterpriseDeviceManagerService"

    .line 1180
    const-string v4, "Failed to start remote desktop service."

    .line 1182
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    goto :goto_e

    .line 1186
    :catch_8
    move-exception v0

    .line 1187
    move-object v3, v0

    .line 1188
    const-string v0, "EnterpriseDeviceManagerService"

    .line 1190
    const-string v4, "Failed to start remote desktop service."

    .line 1192
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :goto_e
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 1197
    if-eqz v0, :cond_18

    .line 1199
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 1201
    const/4 v4, 0x2

    .line 1202
    invoke-direct {v3, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 1205
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1208
    goto :goto_10

    .line 1209
    :goto_f
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1210
    throw v0

    .line 1211
    :cond_15
    sget-object v0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mamService:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 1213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1215
    const-string v1, "Context cannot be null"

    .line 1217
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1220
    throw v0

    .line 1221
    :cond_16
    sget-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    .line 1223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1225
    const-string v1, "Context cannot be null"

    .line 1227
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1230
    throw v0

    .line 1231
    :cond_17
    const-string/jumbo v0, "onStartUser() : userId = 0"

    .line 1234
    const-string v1, "EnterpriseDeviceManagerService"

    .line 1236
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_18
    :goto_10
    const-string/jumbo v0, "restriction_policy"

    .line 1242
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1245
    move-result-object v0

    .line 1246
    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1248
    if-eqz v0, :cond_19

    .line 1250
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->systemReady(I)V

    .line 1253
    :cond_19
    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    .line 15
    const/4 v1, 0x0

    .line 16
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 18
    const-string/jumbo v2, "com.sec.knox.kccagent"

    .line 21
    const-string/jumbo v3, "com.samsung.android.knoxcts.test"

    .line 24
    const-string/jumbo v4, "com.samsung.android.app.smartscan"

    .line 27
    const-string/jumbo v5, "com.samsung.android.knox.dai"

    .line 30
    const-string/jumbo v6, "com.samsung.android.knox.kpu"

    .line 33
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 39
    const-string/jumbo v2, "com.samsung.android.peripheral.framework"

    .line 42
    const-string/jumbo v3, "com.samsung.android.app.kfa"

    .line 45
    const-string/jumbo v4, "com.samsung.android.knox.kpecore"

    .line 48
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    .line 54
    const-string v2, "EnterpriseDeviceManagerService"

    .line 56
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 59
    move-result-object v3

    .line 60
    const-string/jumbo v4, "com.android.exchange"

    .line 63
    const-string/jumbo v5, "com.android.email"

    .line 66
    const-string/jumbo v6, "com.samsung.android.email.provider"

    .line 69
    if-eqz v3, :cond_1

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    move-result-wide v7

    .line 75
    const-wide/16 v9, 0x0

    .line 77
    :try_start_0
    invoke-interface {v3, v6, v9, v10, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v1, "isPackageInstalled() : package present. application : com.samsung.android.email.provider"

    .line 86
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_4

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    :try_start_1
    const-string/jumbo v0, "isPackageInstalled() : package is not present. application : com.samsung.android.email.provider"

    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    goto :goto_3

    .line 110
    :goto_1
    :try_start_2
    const-string v1, "Exception in isPackageInstalled()"

    .line 112
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    goto :goto_0

    .line 116
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    throw v0

    .line 120
    :cond_1
    :goto_3
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 122
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_4
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 130
    const-string/jumbo v1, "com.sec.esdk.elm"

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string/jumbo v1, "ro.csc.country_code"

    .line 139
    const-string v2, ""

    .line 141
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    const-string/jumbo v2, "com.samsung.android.kgclient"

    .line 148
    if-eqz v1, :cond_2

    .line 150
    const-string v3, "China"

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_2

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    .line 163
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string/jumbo v1, "com.nttdocomo.android.wipe"

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string/jumbo v1, "com.nttdocomo.android.remotelock"

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Landroid/os/ConditionVariable;

    .line 195
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 198
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 203
    move-result v0

    .line 204
    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    .line 208
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 213
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Ljava/util/HashMap;

    .line 227
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 232
    const-string/jumbo v1, "delegation-cert-install"

    .line 235
    const-string/jumbo v2, "dci"

    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v1, "delegation-app-restrictions"

    .line 244
    const-string/jumbo v2, "dar"

    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v1, "delegation-block-uninstall"

    .line 253
    const-string/jumbo v2, "dbu"

    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v1, "delegation-permission-grant"

    .line 262
    const-string/jumbo v2, "dpg"

    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v1, "delegation-package-access"

    .line 271
    const-string/jumbo v2, "dpa"

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v1, "delegation-enable-system-app"

    .line 280
    const-string/jumbo v2, "desa"

    .line 283
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "delegation-install-existing-package"

    .line 289
    const-string/jumbo v2, "diep"

    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v1, "delegation-keep-uninstalled-packages"

    .line 298
    const-string/jumbo v2, "dkup"

    .line 301
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v1, "delegation-network-logging"

    .line 307
    const-string/jumbo v2, "dnl"

    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v1, "delegation-security-logging"

    .line 316
    const-string/jumbo v2, "dsl"

    .line 319
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v1, "delegation-cert-selection"

    .line 325
    const-string/jumbo v2, "dcs"

    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 9
    new-instance v1, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 11
    invoke-direct {v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 19
    const/16 v2, 0x9

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v2, v3}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 28
    const/4 v4, 0x0

    .line 29
    iput-boolean v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 31
    const/4 v5, 0x0

    .line 32
    iput-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 34
    new-instance v6, Ljava/util/HashMap;

    .line 36
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 39
    iput-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 48
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 50
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    .line 52
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 55
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 59
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 61
    sput-object p0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 65
    const-string/jumbo v1, "package"

    .line 68
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 75
    move-result-object v6

    .line 76
    iput-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 78
    const-string/jumbo v6, "device_policy"

    .line 81
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 84
    move-result-object v7

    .line 85
    invoke-static {v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 88
    move-result-object v7

    .line 89
    iput-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 91
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerAdaptors()V

    .line 94
    const-string/jumbo v7, "handleDowngrade: Checking Downgrade..."

    .line 97
    const-string v8, "EnterpriseDeviceManagerService"

    .line 99
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string/jumbo v7, "enterprise.db"

    .line 105
    :try_start_0
    invoke-virtual {p1, v7, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v7, "could not open or create databse"

    .line 116
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object p1, v5

    .line 130
    :goto_0
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 135
    move-result v4

    .line 136
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    if-le v4, v2, :cond_0

    .line 141
    const-string p1, "Current Platform Version is older than the previous DB version"

    .line 143
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string p1, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    .line 148
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance p1, Ljava/io/File;

    .line 153
    const-string v2, "/data/system/enterprise.db"

    .line 155
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 161
    new-instance p1, Ljava/io/File;

    .line 163
    const-string v2, "/data/system/dmappmgr.db"

    .line 165
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    .line 174
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 176
    iget-object v2, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 181
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 183
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 190
    iget-object v2, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 192
    const-string v4, "PlatformSoftwareVersion"

    .line 194
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    const-string/jumbo v7, "ro.build.fingerprint"

    .line 201
    const-string/jumbo v9, "unknown"

    .line 204
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 211
    move-result v11

    .line 212
    if-eqz v11, :cond_1

    .line 214
    move-object v10, v5

    .line 215
    :cond_1
    const-string/jumbo v11, "generic"

    .line 218
    const-string/jumbo v12, "value"

    .line 221
    const-string/jumbo v13, "name"

    .line 224
    if-eqz v2, :cond_2

    .line 226
    if-eqz v10, :cond_3

    .line 228
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_3

    .line 234
    :cond_2
    const-string/jumbo v2, "handleUpgrade: Checking Upgrade..."

    .line 237
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 242
    :try_start_1
    iget-object p1, p1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    goto :goto_1

    .line 252
    :catch_1
    move-exception p1

    .line 253
    const-string v2, "EdmStorageProvider"

    .line 255
    const-string/jumbo v3, "handleUpgrade EX:"

    .line 258
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :goto_1
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    new-instance v3, Landroid/content/ContentValues;

    .line 278
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 281
    invoke-virtual {v3, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v4, Landroid/content/ContentValues;

    .line 286
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 289
    invoke-virtual {v4, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2, v11, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 295
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 297
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 299
    const-string v3, "PlatformSdkApiLevel"

    .line 301
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    move-result-object v2

    .line 305
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 312
    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    goto :goto_2

    .line 314
    :catch_2
    const-string v2, "No written value"

    .line 316
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v2, 0x1e

    .line 321
    :goto_2
    if-ge v2, p1, :cond_4

    .line 323
    const-string v2, "Android API Level is just changed to "

    .line 325
    invoke-static {p1, v2, v8}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 330
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 332
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    new-instance v4, Landroid/content/ContentValues;

    .line 341
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 344
    invoke-virtual {v4, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v3, Landroid/content/ContentValues;

    .line 349
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 352
    invoke-virtual {v3, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v11, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 358
    goto :goto_3

    .line 359
    :cond_4
    const-string v2, "Android API Level is "

    .line 361
    invoke-static {p1, v2, v8}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_3
    new-instance p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 366
    iget-object v2, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 368
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 371
    move-result-object v1

    .line 372
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 375
    move-result-object v1

    .line 376
    invoke-direct {p1, v2, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    .line 379
    const-string/jumbo v1, "enterprise_license_policy"

    .line 382
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 385
    new-instance p1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 387
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 389
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 392
    const-string v1, "application_policy"

    .line 394
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 397
    new-instance p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    .line 399
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 401
    invoke-direct {p1}, Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;-><init>()V

    .line 404
    iput-object v5, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 406
    iput-object v5, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 408
    iput-object v1, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 410
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 412
    invoke-direct {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 415
    iput-object v2, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 417
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 423
    iput-object v1, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 425
    const-string/jumbo v1, "profilepolicy"

    .line 428
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 431
    new-instance p1, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 433
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 435
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V

    .line 438
    const-string/jumbo v1, "wifi_policy"

    .line 441
    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    new-instance p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 446
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 448
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 451
    const-string/jumbo v1, "phone_restriction_policy"

    .line 454
    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    new-instance p1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 459
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 461
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 464
    const-string/jumbo v1, "remoteinjection"

    .line 467
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 470
    new-instance p1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 472
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 474
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 477
    const-string/jumbo v1, "restriction_policy"

    .line 480
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 483
    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 485
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 487
    invoke-direct {p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 490
    const-string/jumbo v0, "password_policy"

    .line 493
    invoke-static {p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 496
    new-instance p1, Lcom/android/server/enterprise/EDMProxyService;

    .line 498
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 500
    invoke-direct {p1, v0}, Lcom/android/server/enterprise/EDMProxyService;-><init>(Landroid/content/Context;)V

    .line 503
    const-string/jumbo v0, "edm_proxy"

    .line 506
    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 511
    sget v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->$r8$clinit:I

    .line 513
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;

    .line 515
    new-instance v1, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    .line 517
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 523
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 525
    sget v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->$r8$clinit:I

    .line 527
    const-class v0, Lcom/samsung/android/knox/localservice/CloudConfigurationManagerInternal;

    .line 529
    new-instance v1, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 531
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;-><init>(Landroid/content/Context;)V

    .line 534
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 540
    return-void
.end method

.method public static checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string/jumbo v3, "enterprise_license_policy"

    .line 9
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 15
    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 23
    array-length v4, v3

    .line 24
    move v5, v2

    .line 25
    :goto_0
    if-ge v5, v4, :cond_1

    .line 27
    aget-object v6, v3, v5

    .line 29
    invoke-virtual {v6}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v6, :cond_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_4

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    goto :goto_3

    .line 55
    :goto_2
    :try_start_1
    const-string v3, "EnterpriseDeviceManagerService"

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string/jumbo v5, "checkAdminExistsInELMDB Ex: "

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_1

    .line 79
    :goto_3
    return v2

    .line 80
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    throw p0
.end method

.method public static checkCallerIsKPECore(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string/jumbo v1, "com.samsung.android.knox.kpecore"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KPECORE_INTERNAL"

    .line 17
    invoke-interface {v0, v1, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 23
    const-string p0, "EnterpriseDeviceManagerService"

    .line 25
    const-string/jumbo p1, "call from kpecore"

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p0, v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 12
    sput-object v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 14
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    const-string p0, "EnterprisePermissionChecker"

    .line 29
    const-string/jumbo p1, "no permission provided"

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-eq v3, v4, :cond_3

    .line 58
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :goto_0
    return-void

    .line 70
    :catch_1
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_2

    .line 77
    const-string v0, ","

    .line 79
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p1

    .line 102
    :cond_3
    throw v2
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3
    return-object v0
.end method

.method public static hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 8
    invoke-interface {v0, v1, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private registerAdaptors()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 13
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 23
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 25
    const-class v1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 30
    if-nez v2, :cond_0

    .line 32
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    sput-object v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 39
    const-string/jumbo v2, "storage"

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 48
    sput-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_5

    .line 54
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v1

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 66
    const-class v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 71
    if-nez v1, :cond_1

    .line 73
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 75
    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;-><init>()V

    .line 78
    sput-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto :goto_4

    .line 83
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    monitor-exit v0

    .line 86
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 90
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 92
    const-class v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 94
    monitor-enter v1

    .line 95
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 97
    if-nez v2, :cond_2

    .line 99
    if-eqz v0, :cond_2

    .line 101
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 103
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 108
    sput-object v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 110
    goto :goto_2

    .line 111
    :catchall_2
    move-exception p0

    .line 112
    goto :goto_3

    .line 113
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 115
    monitor-exit v1

    .line 116
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 118
    const-class v0, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    .line 120
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 122
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 124
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-class v0, Lcom/android/server/enterprise/adapter/IPackageManagerAdapter;

    .line 129
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 131
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-class v0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 138
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 140
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-class v0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 147
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 149
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 151
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 156
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 158
    sget-object v1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 160
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void

    .line 164
    :goto_3
    monitor-exit v1

    .line 165
    throw p0

    .line 166
    :goto_4
    monitor-exit v0

    .line 167
    throw p0

    .line 168
    :goto_5
    monitor-exit v1

    .line 169
    throw p0
.end method

.method public static setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "mCallerUid"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 16
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_0
    return-void
.end method

.method private static native startRemoteDesktopService()V
.end method


# virtual methods
.method public final activateAdmin(Landroid/content/ComponentName;Z)V
    .locals 12

    .line 1
    const-string v0, "Removing admin "

    .line 3
    const-string v1, "Adding admin "

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    move-result v2

    .line 14
    const-string v3, "EnterpriseDeviceManagerService"

    .line 16
    const-string v4, "Activating admin on user!!!!!! "

    .line 18
    invoke-static {v2, v4, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_d

    .line 27
    const-string/jumbo v4, "restriction_policy"

    .line 30
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 36
    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string p1, "Admin cannot be activated"

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0

    .line 57
    :cond_1
    :goto_0
    const-string/jumbo v4, "com.samsung.android.kgclient"

    .line 60
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 70
    const-string/jumbo v4, "com.samsung.android.kgclient"

    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 76
    move-result v5

    .line 77
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    move-result-object v6

    .line 83
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 91
    move-result v7

    .line 92
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 95
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v6

    .line 98
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 100
    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 103
    const/4 v6, -0x1

    .line 104
    :goto_1
    if-ne v5, v6, :cond_2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 110
    move-result v5

    .line 111
    const/16 v6, 0x3e8

    .line 113
    if-ne v5, v6, :cond_3

    .line 115
    :goto_2
    const-string/jumbo v5, "ro.csc.country_code"

    .line 118
    const-string v6, ""

    .line 120
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_3

    .line 126
    const-string v6, "China"

    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_3

    .line 134
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 136
    check-cast v5, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_3

    .line 144
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 149
    const-string v5, "adjustKnoxGuardAdmin kgclient is removed from EXCLUDED_ADMINS by "

    .line 151
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 157
    move-result v5

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 165
    const-string v5, "EnterpriseDeviceManagerService"

    .line 167
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_4

    .line 176
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 178
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 181
    move-result-object v5

    .line 182
    check-cast v4, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 193
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 196
    move-result-object v4

    .line 197
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 199
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 201
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 204
    move-result-object v5

    .line 205
    const-string v6, "EnterpriseDeviceManagerService"

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    .line 209
    const-string v8, "Admin uid: "

    .line 211
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v8, ", Component name: "

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v7

    .line 229
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 235
    move-result-wide v6

    .line 236
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 239
    move-result-object v8

    .line 240
    monitor-enter v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    if-nez p2, :cond_6

    .line 243
    :try_start_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 246
    move-result v9

    .line 247
    invoke-virtual {p0, v9, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 250
    move-result-object v9

    .line 251
    if-nez v9, :cond_5

    .line 253
    goto :goto_3

    .line 254
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 256
    const-string p1, "Admin is already added"

    .line 258
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    throw p0

    .line 262
    :catchall_0
    move-exception p0

    .line 263
    goto/16 :goto_9

    .line 265
    :cond_6
    :goto_3
    const/4 v9, 0x1

    .line 266
    if-nez p2, :cond_7

    .line 268
    const-string v10, "EnterpriseDeviceManagerService"

    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, " to lists"

    .line 280
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 292
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v10

    .line 296
    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const-string/jumbo v1, "com.samsung.android.kgclient"

    .line 307
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v1

    .line 315
    xor-int/2addr v1, v9

    .line 316
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 318
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {v10, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdmin(ILjava/lang/String;Z)Z

    .line 325
    move-result v1

    .line 326
    goto :goto_4

    .line 327
    :cond_7
    move v1, v9

    .line 328
    :goto_4
    if-eqz v1, :cond_c

    .line 330
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Ljava/util/TreeMap;

    .line 336
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 339
    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 343
    move-result-object v0

    .line 344
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_8

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Ljava/util/Map$Entry;

    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 362
    invoke-interface {v1, v4}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 365
    goto :goto_5

    .line 366
    :cond_8
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    move v0, v9

    .line 368
    :goto_6
    const/4 v1, 0x2

    .line 369
    const/4 v3, 0x0

    .line 370
    if-gt v0, v1, :cond_a

    .line 372
    :try_start_3
    const-string v1, "EnterpriseDeviceManagerService"

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    const-string v8, "Attempt "

    .line 381
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    const-string v8, " to active admin in DPM"

    .line 389
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object v5

    .line 396
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 401
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 404
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 406
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_9

    .line 412
    const-string p2, "EnterpriseDeviceManagerService"

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    const-string v1, "Admin sucessfully activated in DPM for user "

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v0

    .line 431
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move p2, v9

    .line 435
    goto :goto_7

    .line 436
    :catchall_1
    move-exception p0

    .line 437
    goto/16 :goto_c

    .line 439
    :catch_1
    move-exception p0

    .line 440
    goto/16 :goto_a

    .line 442
    :cond_9
    const-string v1, "EnterpriseDeviceManagerService"

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    .line 446
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    const-string v5, "Admin activation failed for user "

    .line 451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v3

    .line 461
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    add-int/lit8 v0, v0, 0x1

    .line 466
    goto :goto_6

    .line 467
    :cond_a
    move p2, v3

    .line 468
    :goto_7
    const-string v0, "EnterpriseDeviceManagerService"

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    const-string v5, "EDM setActiveAdmin activationStatus -"

    .line 477
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 483
    const-string v5, " for user - "

    .line 485
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-eqz p2, :cond_b

    .line 500
    const-string p0, "EnterpriseDeviceManagerService"

    .line 502
    const-string p1, "Admin added to DPM!"

    .line 504
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    :goto_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    goto :goto_b

    .line 511
    :cond_b
    :try_start_4
    const-string p2, "EnterpriseDeviceManagerService"

    .line 513
    const-string v0, "Started removing admin information..."

    .line 515
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 520
    invoke-direct {p2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 523
    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0, p2, v9, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 527
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 530
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    .line 534
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    const-string p2, "EDM - Admin activation failed for user -"

    .line 539
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    move-result-object p1

    .line 549
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 552
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 553
    :cond_c
    :try_start_5
    const-string p1, "EnterpriseDeviceManagerService"

    .line 555
    new-instance p2, Ljava/lang/StringBuilder;

    .line 557
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    const-string v0, " from lists"

    .line 565
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    move-result-object p2

    .line 572
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 577
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 582
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 591
    const-string p1, "Unable to activate admin"

    .line 593
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 596
    throw p0

    .line 597
    :goto_9
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 598
    :try_start_6
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 599
    :goto_a
    :try_start_7
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 602
    goto :goto_8

    .line 603
    :goto_b
    return-void

    .line 604
    :goto_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    throw p0

    .line 608
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 610
    const-string p2, "Bad admin: "

    .line 612
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    move-result-object p1

    .line 616
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 619
    throw p0
.end method

.method public final activateDevicePermissions(Ljava/util/List;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_7

    .line 36
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 48
    if-eqz p0, :cond_6

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    const-string v4, "EnterpriseDeviceManagerService"

    .line 57
    if-nez v2, :cond_0

    .line 59
    const-string/jumbo p0, "failed due to abnormal admin information: "

    .line 62
    invoke-static {v0, p0, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    return v3

    .line 66
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 72
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 75
    move-result v5

    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {v5, v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo p1, "failed due to application is installed in device as user:"

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v3

    .line 108
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v0

    .line 112
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/String;

    .line 124
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 126
    check-cast v2, Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_2

    .line 134
    const-string p0, "This permission cannot be set on device level from the container: "

    .line 136
    invoke-static {p0, v1, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return v3

    .line 140
    :cond_3
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 149
    const/4 v0, 0x7

    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_4

    .line 156
    const-string/jumbo v1, "encrypted-storage"

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "add device permission: encrypted-storage, "

    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4
    const/16 v0, 0x14

    .line 185
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_5

    .line 191
    const-string/jumbo v1, "require-storagecard-encryption"

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "add device permission: require-storagecard-encryption, "

    .line 201
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 215
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_5
    const/4 p0, 0x1

    .line 219
    return p0

    .line 220
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 222
    const-string p1, "No active admin"

    .line 224
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p0

    .line 228
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 230
    const-string p1, "Admin already present and active"

    .line 232
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p0
.end method

.method public final addAuthorizedUid(II)Z
    .locals 3

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string v1, "addAuthorizedUid"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 17
    new-instance v0, Landroid/content/ContentValues;

    .line 19
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 22
    const-string v1, "adminUid"

    .line 24
    const-string v2, "authorizedUid"

    .line 26
    invoke-static {p2, v0, v1, p1, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final addPseudoAdminForParent(I)I
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string v1, "addPseudoAdminForParent() success with Pseudo =  "

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x3e8

    .line 15
    if-ne v2, v4, :cond_0

    .line 17
    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 19
    if-eq v3, v2, :cond_1

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 23
    const-string v3, "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_6

    .line 31
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 33
    invoke-interface {v2}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    .line 43
    move-result v2

    .line 44
    if-eq v2, p1, :cond_2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 56
    move-result v2

    .line 57
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 65
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdminWithPseudo(ILjava/lang/String;)Z

    .line 74
    move-result v3

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 80
    new-instance p1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 86
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 113
    :cond_4
    :goto_1
    const-string p0, "addPseudoAdminForParent() returning 0.."

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return v3

    .line 119
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :cond_5
    const-string p0, "addPseudoAdminForParent() failed returning -1.."

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 p0, -0x1

    .line 128
    return p0

    .line 129
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 131
    const-string p1, "Caller must be a system process or have permission android.permission.MARK_DEVICE_ORGANIZATION_OWNED.."

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p0
.end method

.method public final captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .locals 11

    .line 1
    const-string v0, "---------------------------------------------------------------\n"

    .line 3
    const-string v1, "EnterpriseDeviceManagerService"

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 22
    move-result p1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 26
    return-object v2

    .line 27
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide v3

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    sget v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 47
    const-string v5, "activity"

    .line 49
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/app/ActivityManager;

    .line 55
    const/4 v5, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_1

    .line 62
    return-object v2

    .line 63
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p0

    .line 67
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 79
    if-eqz v6, :cond_2

    .line 81
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 83
    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_2

    .line 89
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v8, " "

    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/lang/String;

    .line 124
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v6

    .line 131
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :cond_3
    const-string p0, "-v"

    .line 141
    const-string/jumbo p3, "threadtime"

    .line 144
    const-string/jumbo v6, "logcat"

    .line 147
    const-string v7, "-d"

    .line 149
    filled-new-array {v6, v7, p0, p3}, [Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 153
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 160
    move-result-object p0

    .line 161
    const-string/jumbo p3, "line.separator"

    .line 164
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 175
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    .line 180
    invoke-direct {v8, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    new-instance v9, Ljava/util/zip/ZipEntry;

    .line 185
    const-string v10, "BELogs.txt"

    .line 187
    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 193
    new-instance v9, Ljava/io/BufferedReader;

    .line 195
    new-instance v10, Ljava/io/InputStreamReader;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 200
    move-result-object p0

    .line 201
    invoke-direct {v10, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 204
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {v8, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 233
    move-result-object p0

    .line 234
    if-eqz p0, :cond_5

    .line 236
    const-string p2, " +"

    .line 238
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_4

    .line 248
    array-length v0, p2

    .line 249
    const/4 v10, 0x2

    .line 250
    if-le v0, v10, :cond_4

    .line 252
    aget-object p2, p2, v10

    .line 254
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_4

    .line 260
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v8, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 277
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 280
    goto :goto_1

    .line 281
    :catch_1
    move-exception p0

    .line 282
    goto :goto_2

    .line 283
    :cond_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 286
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 289
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 292
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    move-object v2, p0

    .line 300
    goto :goto_3

    .line 301
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 304
    move-result-object p1

    .line 305
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    return-object v2
.end method

.method public final checkCallerIsUMC()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    move-result p0

    .line 23
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 31
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 34
    const/4 p0, -0x1

    .line 35
    :goto_0
    if-ne v0, p0, :cond_0

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 25
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 39
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 50
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 57
    move-result p0

    .line 58
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 60
    if-ne p0, v1, :cond_3

    .line 62
    return-void

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 65
    const-string v1, "Admin doesn\'t own container id "

    .line 67
    const-string v2, " ContextInfo.uid "

    .line 69
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v0

    .line 73
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0
.end method

.method public final checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "permissions"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Landroid/content/ContentValues;

    .line 10
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 13
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    const-string/jumbo v4, "proxyUid"

    .line 22
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    const-string v3, "PROXY_ADMIN_INFO"

    .line 29
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroid/content/ContentValues;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 61
    const-string p1, ";"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Ljava/util/HashSet;

    .line 69
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    move-result-object p0

    .line 73
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 80
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_3

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_0

    .line 98
    return v2

    .line 99
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p0

    .line 103
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_3

    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/String;

    .line 115
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 118
    move-result-object v0

    .line 119
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 121
    invoke-interface {v0, p2, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 124
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    if-nez p2, :cond_2

    .line 127
    return v2

    .line 128
    :catch_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 130
    const-string/jumbo p1, "could not check calling permission"

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    return v3
.end method

.method public final createDeferredServices()V
    .locals 10

    .line 1
    const-string/jumbo v0, "phone_restriction_policy"

    .line 4
    const-string/jumbo v1, "wifi_policy"

    .line 7
    iget-boolean v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 9
    const-string v3, "EnterpriseDeviceManagerService"

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const-string/jumbo p0, "createDeferredServices() : Skip to create"

    .line 16
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    const-string/jumbo v2, "createDeferredServices() : Adding services ... "

    .line 23
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    .line 31
    check-cast v6, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v6

    .line 37
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 43
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Ljava/lang/String;

    .line 49
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 52
    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 58
    move-object v9, v8

    .line 59
    check-cast v9, Landroid/os/IBinder;

    .line 61
    invoke-interface {v8, v7, v9}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 67
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 81
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {v6, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 95
    const-string/jumbo v1, "device_info"

    .line 98
    new-instance v6, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 100
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 113
    const-string/jumbo v1, "license_log_service"

    .line 116
    new-instance v6, Lcom/android/server/enterprise/license/LicenseLogService;

    .line 118
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 120
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 131
    const-string v1, "auditlog"

    .line 133
    new-instance v6, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 135
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 137
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 148
    const-string/jumbo v1, "eas_account_policy"

    .line 151
    new-instance v6, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 153
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 155
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 166
    const-string/jumbo v1, "email_account_policy"

    .line 169
    new-instance v6, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 171
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 173
    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;-><init>()V

    .line 176
    iput-object v5, v6, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 178
    iput v4, v6, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 180
    iput-object v5, v6, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 182
    iput-object v7, v6, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 184
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 186
    invoke-direct {v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 189
    iput-object v8, v6, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 199
    const-string/jumbo v1, "location_policy"

    .line 202
    new-instance v6, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 204
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 206
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 217
    const-string/jumbo v1, "misc_policy"

    .line 220
    new-instance v6, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 222
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 224
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 235
    const-string/jumbo v1, "vpn_policy"

    .line 238
    new-instance v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 240
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 242
    invoke-direct {v6}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;-><init>()V

    .line 245
    iput-object v5, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 247
    iput-object v5, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 249
    iput-object v5, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    .line 251
    iput-object v7, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 253
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 255
    invoke-direct {v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 258
    iput-object v8, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 260
    invoke-static {}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 275
    const-string/jumbo v1, "security_policy"

    .line 278
    new-instance v6, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 280
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 282
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 293
    const-string/jumbo v1, "roaming_policy"

    .line 296
    new-instance v6, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 298
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 300
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 311
    const-string/jumbo v1, "bluetooth_policy"

    .line 314
    new-instance v6, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 316
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 318
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 329
    const-string/jumbo v1, "email_policy"

    .line 332
    new-instance v6, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 334
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 336
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 347
    const-string/jumbo v1, "firewall"

    .line 350
    new-instance v6, Lcom/android/server/enterprise/firewall/Firewall;

    .line 352
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 354
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 365
    const-string/jumbo v1, "certificate_policy"

    .line 368
    new-instance v6, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 370
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 372
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 383
    const-string v1, "apn_settings_policy"

    .line 385
    new-instance v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    .line 387
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 389
    invoke-direct {v6}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    .line 392
    iput-object v5, v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 394
    sget v8, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 396
    iput v8, v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 398
    new-instance v8, Ljava/util/HashMap;

    .line 400
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 403
    iput-object v8, v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 405
    iput-object v7, v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 415
    const-string/jumbo v1, "browser_policy"

    .line 418
    new-instance v6, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 420
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 422
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 433
    const-string/jumbo v1, "date_time_policy"

    .line 436
    new-instance v6, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 438
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 440
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 451
    const-string/jumbo v1, "kioskmode"

    .line 454
    new-instance v6, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 456
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 458
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 469
    const-string/jumbo v1, "ldap_account_policy"

    .line 472
    new-instance v6, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .line 474
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 476
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 487
    const-string/jumbo v1, "lockscreen_overlay"

    .line 490
    new-instance v6, Lcom/android/server/enterprise/lso/LSOService;

    .line 492
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 494
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 505
    const-string/jumbo v1, "geofencing"

    .line 508
    new-instance v6, Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 510
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 512
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 523
    const-string/jumbo v1, "device_account_policy"

    .line 526
    new-instance v6, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 528
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 530
    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;-><init>()V

    .line 533
    iput-object v5, v6, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 535
    iput-object v5, v6, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 537
    iput-object v7, v6, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 539
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 541
    invoke-direct {v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 544
    iput-object v8, v6, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 546
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 554
    const-string/jumbo v1, "multi_user_manager_service"

    .line 557
    new-instance v6, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 559
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 561
    invoke-direct {v6}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;-><init>()V

    .line 564
    iput-object v5, v6, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 566
    iput-object v7, v6, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    .line 568
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 570
    invoke-direct {v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 573
    iput-object v8, v6, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 575
    const-string/jumbo v8, "user"

    .line 578
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 581
    move-result-object v7

    .line 582
    check-cast v7, Landroid/os/UserManager;

    .line 584
    iput-object v7, v6, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 594
    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 597
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 600
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 603
    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    .line 607
    move-result v1

    .line 608
    const/16 v6, 0x18

    .line 610
    if-lt v1, v6, :cond_2

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    .line 614
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    const-string v6, "ThreatDefenseService - knoxSdkVersion : "

    .line 619
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    .line 625
    move-result v0

    .line 626
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    move-result-object v0

    .line 633
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 638
    const-string/jumbo v1, "threat_defense_service"

    .line 641
    new-instance v6, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 643
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 645
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;-><init>(Landroid/content/Context;)V

    .line 648
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 654
    goto :goto_1

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    goto :goto_2

    .line 657
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 659
    const-string/jumbo v1, "knoxnap"

    .line 662
    new-instance v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 664
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 666
    invoke-direct {v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V

    .line 669
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    invoke-static {v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v0, "knox ztna service started"

    .line 678
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 683
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 685
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 687
    invoke-direct {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;-><init>(Landroid/content/Context;)V

    .line 690
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    const-string/jumbo v0, "knox_nwFilterMgr_policy"

    .line 696
    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 701
    invoke-static {v0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 704
    move-result-object v0

    .line 705
    sget-object v1, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 707
    iget-object v0, v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 709
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    invoke-static {v0, v2, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    goto :goto_3

    .line 720
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 722
    const-string v6, "addServices() : Failure creating Policy services"

    .line 724
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    move-result-object v1

    .line 734
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 740
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 742
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 745
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 747
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 753
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 755
    if-nez v0, :cond_3

    .line 757
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 759
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 762
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 764
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 766
    new-instance v1, Landroid/os/UserHandle;

    .line 768
    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 771
    invoke-virtual {v0, p0, v5, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 774
    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 777
    move-result-object p0

    .line 778
    check-cast p0, Ljava/util/TreeMap;

    .line 780
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 783
    move-result-object p0

    .line 784
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 787
    move-result-object p0

    .line 788
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    move-result v0

    .line 792
    if-eqz v0, :cond_5

    .line 794
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    move-result-object v0

    .line 798
    check-cast v0, Ljava/util/Map$Entry;

    .line 800
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 803
    move-result-object v1

    .line 804
    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 806
    invoke-interface {v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->hasDeferredBroadcastReceiverToRegister()Z

    .line 809
    move-result v1

    .line 810
    if-eqz v1, :cond_4

    .line 812
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 815
    move-result-object v0

    .line 816
    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 818
    invoke-interface {v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->registerDeferredBoradcastReceiver()V

    .line 821
    goto :goto_4

    .line 822
    :cond_5
    return-void
.end method

.method public final disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 23
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->disableConstrainedState(I)Z

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "android.permission.DUMP"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    const-string p3, "EnterpriseDeviceManagerService Knox Info:"

    .line 21
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 38
    const-string p1, "No Policy Version"

    .line 40
    const-string/jumbo p3, "ro.config.timaversion"

    .line 43
    const-string/jumbo v0, "true"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 75
    move-result v3

    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    move-result v3

    .line 90
    const-string v4, "Knox "

    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-lez v3, :cond_1

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception p1

    .line 102
    goto/16 :goto_3

    .line 104
    :cond_1
    const/16 v3, 0x2e

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 109
    move-result v3

    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_3

    .line 141
    const-string v3, "Standard SDK "

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_4

    .line 172
    const-string v3, "Premium SDK "

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_4
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_5

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_5

    .line 207
    const-string v3, "Customization SDK "

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    if-eqz v2, :cond_6

    .line 237
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_6

    .line 243
    const-string v3, "Container  "

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_6
    const-string/jumbo v2, "net.knoxisl.version"

    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    move-result-object v2

    .line 266
    if-eqz v2, :cond_7

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_7

    .line 274
    const-string v4, "IM "

    .line 276
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_7
    const-string/jumbo v2, "net.knoxscep.version"

    .line 292
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v2

    .line 296
    if-eqz v2, :cond_8

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 301
    move-result v4

    .line 302
    if-nez v4, :cond_8

    .line 304
    const-string v4, "CEP "

    .line 306
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_8
    const-string/jumbo v2, "sys.enterprise.billing.version"

    .line 322
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    move-result-object v2

    .line 326
    if-eqz v2, :cond_9

    .line 328
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 331
    move-result v4

    .line 332
    if-nez v4, :cond_9

    .line 334
    const-string v4, "Enterprise Billing "

    .line 336
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_9
    const-string v2, ""

    .line 351
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    move-result v2

    .line 359
    if-nez v2, :cond_10

    .line 361
    const-string v2, "3.0"

    .line 363
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_f

    .line 373
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    const/16 p1, 0x10e

    .line 380
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_a

    .line 386
    const-string p1, "3.3"

    .line 388
    goto :goto_1

    .line 389
    :cond_a
    const-string p1, "3.2"

    .line 391
    :goto_1
    const-string/jumbo p3, "ro.config.dmverity"

    .line 394
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    move-result-object p3

    .line 398
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 401
    move-result-object p3

    .line 402
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result p3

    .line 406
    const-string/jumbo v2, "ro.config.rkp"

    .line 409
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_b

    .line 419
    add-int/lit8 p3, p3, 0x2

    .line 421
    :cond_b
    const-string/jumbo v2, "ro.config.kap"

    .line 424
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_c

    .line 434
    add-int/lit8 p3, p3, 0x4

    .line 436
    :cond_c
    const-string/jumbo v2, "ro.config.kap_default_on"

    .line 439
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_d

    .line 449
    add-int/lit8 p3, p3, 0x8

    .line 451
    :cond_d
    const/16 v0, 0xa

    .line 453
    if-ge p3, v0, :cond_e

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string p1, ".00"

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    move-result-object p1

    .line 479
    goto :goto_2

    .line 480
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string p1, ".0"

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 496
    move-result-object p1

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    move-result-object p1

    .line 504
    goto :goto_2

    .line 505
    :cond_f
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    move-result-object p1

    .line 509
    :goto_2
    const-string p3, "TIMA "

    .line 511
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 520
    move-result-object p1

    .line 521
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_10
    const-string/jumbo p1, "net.knoxvpn.version"

    .line 527
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    move-result-object p1

    .line 531
    if-eqz p1, :cond_11

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 536
    move-result p3

    .line 537
    if-nez p3, :cond_11

    .line 539
    const-string p3, "VPN "

    .line 541
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_4

    .line 555
    :goto_3
    const-string p3, "EnterpriseDeviceManagerService"

    .line 557
    const-string v0, "Failed to get Knox Version "

    .line 559
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :cond_11
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object p1

    .line 569
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    .line 574
    const-string p3, "EnterpriseDeviceManagerService SystemUIAdapter Info:"

    .line 576
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 582
    move-result-object p3

    .line 583
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    move-result-object p1

    .line 590
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 593
    iget p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 595
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 597
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 600
    move-result-object p3

    .line 601
    iget p3, p3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    .line 603
    if-eq p1, p3, :cond_12

    .line 605
    new-instance p1, Ljava/lang/StringBuilder;

    .line 607
    const-string/jumbo p3, "mCurrentUserId : "

    .line 610
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    iget p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 615
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 621
    move-result-object p3

    .line 622
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    move-result-object p1

    .line 629
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 632
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 634
    const-string p3, "SystemUIAdapter adapterId : "

    .line 636
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 641
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 644
    move-result-object p3

    .line 645
    iget p3, p3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    .line 647
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 653
    move-result-object p3

    .line 654
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    move-result-object p1

    .line 661
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    .line 666
    const-string p3, "SystemUIAdapter registered count : "

    .line 668
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 673
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 676
    move-result-object p3

    .line 677
    iget p3, p3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 679
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 685
    move-result-object p3

    .line 686
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    move-result-object p1

    .line 693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 698
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 701
    move-result-object p1

    .line 702
    iget-boolean p3, p1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 704
    if-nez p3, :cond_13

    .line 706
    iget-object p1, p1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 708
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 711
    move-result p1

    .line 712
    if-lez p1, :cond_13

    .line 714
    goto :goto_5

    .line 715
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 717
    const-string p3, "SystemUIAdapter is not registed. "

    .line 719
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 725
    move-result-object p3

    .line 726
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    move-result-object p1

    .line 733
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 736
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 738
    const-string p3, "ConstrainedMode : "

    .line 740
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 745
    invoke-virtual {p3}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->checkConstrainedState()Z

    .line 748
    move-result p3

    .line 749
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 752
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 755
    move-result-object p3

    .line 756
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    move-result-object p1

    .line 763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 766
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 768
    invoke-virtual {p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->checkConstrainedState()Z

    .line 771
    move-result p1

    .line 772
    if-eqz p1, :cond_14

    .line 774
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 776
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->dump(Ljava/io/PrintWriter;)V

    .line 779
    :cond_14
    return-void
.end method

.method public final enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 23
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    move-object v2, p2

    .line 26
    move-object v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move-object v5, p5

    .line 29
    move v6, p6

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final enableWipe(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 22
    return v0

    .line 23
    :cond_0
    :try_start_0
    const-class p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 25
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 31
    if-eqz p0, :cond_1

    .line 33
    const-string v1, "EnterpriseDeviceManagerService.enableWipe"

    .line 35
    invoke-static {p1, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 38
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 40
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 42
    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 44
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 47
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 52
    monitor-exit p1

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    throw p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p0, "EnterpriseDeviceManagerService"

    .line 62
    const-string p1, "Failed to get PersistentDataBlockManagerInternal"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :goto_1
    return v0
.end method

.method public final enforceActiveAdminPermission(Ljava/util/List;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    move-object v0, p0

    .line 15
    move-object v2, p1

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 19
    return-void
.end method

.method public final enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final enforceCaller(Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    return-void
.end method

.method public final enforceCallerPermission(ILjava/util/List;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-nez v0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :catch_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 30
    const-string p1, "Could not check calling permission"

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x3e8

    .line 13
    if-eq v1, v2, :cond_1

    .line 15
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminComponent()Landroid/content/ComponentName;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    const-string v0, "Component name violation "

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    const/4 v5, 0x1

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final enforceKCS(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 18
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallerPermission(ILjava/util/List;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    move-result v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v3

    .line 14
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 17
    move-result p1

    .line 18
    if-ne p1, v0, :cond_3

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 22
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 39
    move-result p1

    .line 40
    const-string/jumbo v1, "device_policy"

    .line 43
    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 47
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 55
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 64
    const-string p1, "This API is works only with managedProfile(WPC)"

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 72
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 80
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->semGetDeviceOwner()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 86
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 88
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 93
    move-result p1

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 101
    move-result p0

    .line 102
    if-eq p0, v0, :cond_4

    .line 104
    return-void

    .line 105
    :cond_4
    const-string p0, "Application doesn\'t have this permission:"

    .line 107
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/SecurityException;

    .line 113
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1

    .line 117
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 119
    const-string p1, "This API is works only with managed device(DO)"

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0
.end method

.method public final enforceKnoxV2VerifyCaller(I)Z
    .locals 7

    .line 1
    const-string v0, "This API can be called by platform signed app only, callerUid:"

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 15
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/16 v5, 0x3e8

    .line 18
    const-string v6, "android"

    .line 20
    if-eq v4, v5, :cond_1

    .line 22
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 44
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    move-result v5

    .line 48
    invoke-interface {v2, v6, v4, v5}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, ",packageName:"

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    new-instance p1, Ljava/lang/SecurityException;

    .line 79
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 96
    move-result v0

    .line 97
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 100
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :try_start_2
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 104
    invoke-interface {v1, v4, p0, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 110
    const-string v0, "EnterpriseDeviceManagerService"

    .line 112
    const-string v1, "Caller does not have KPU permission"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 122
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 124
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_3

    .line 134
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 137
    move-result p1

    .line 138
    invoke-interface {v2, v6, p0, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 141
    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    if-nez p0, :cond_3

    .line 144
    :cond_2
    const/4 v3, 0x1

    .line 145
    :cond_3
    return v3

    .line 146
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 149
    return v3
.end method

.method public final enforceOwnerOnly(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 12
    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 14
    if-nez v0, :cond_3

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 24
    move-result p0

    .line 25
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 27
    if-gez v0, :cond_1

    .line 29
    const-string v0, "EnterpriseDeviceManagerService"

    .line 31
    const-string v1, "Need to check if this is an abnormal case."

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 38
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 40
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 46
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 48
    if-nez p0, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 53
    const-string p1, "Operation supported only on owner space"

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_0
    return-object p1
.end method

.method public final enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnly(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object v1

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p2

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;
    .locals 9

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_1

    .line 7
    sget v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-eq v1, v5, :cond_2

    :cond_1
    if-eqz v3, :cond_4

    const-string v5, "android.uid.system:1000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_3
    return-object p1

    .line 11
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 12
    iget-object v5, v5, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v5, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 16
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.appseparation"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 17
    const-string v6, "EnterpriseDeviceManagerService"

    if-eqz v5, :cond_7

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 18
    :cond_6
    const-string p0, "Called from Separated Apps agent. return Context."

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_7
    if-eqz v3, :cond_8

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 21
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const p2, 0x186a0

    mul-int/2addr p1, p2

    add-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_8
    if-eqz p4, :cond_a

    .line 22
    iget-object p4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p4, :cond_9

    goto :goto_0

    .line 23
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No active admin owned by uid "

    .line 24
    invoke-static {v2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result p4

    const/4 v3, 0x1

    if-eqz p4, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    if-eqz p3, :cond_b

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_b
    if-eqz p2, :cond_d

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_d

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p4

    if-ne p4, v3, :cond_d

    if-eqz p3, :cond_c

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 33
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_c
    return-object p1

    :cond_d
    const/4 p4, -0x1

    if-nez v1, :cond_11

    .line 34
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v4, v0, :cond_11

    .line 35
    const-string/jumbo v4, "getAuthorizedAdminUid"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "authorizedUid"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v8, "adminUid"

    invoke-virtual {v5, v4, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 39
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 40
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_e
    move v4, p4

    .line 41
    :goto_1
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v5, v4, :cond_11

    if-eqz p3, :cond_f

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_f
    if-eqz p2, :cond_11

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v4

    if-ne v4, v3, :cond_11

    if-eqz p3, :cond_10

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 47
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_10
    return-object p1

    :cond_11
    if-nez v1, :cond_13

    .line 48
    iget-boolean v4, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez v4, :cond_13

    .line 49
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v4, v0, :cond_13

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v4

    if-ne v0, v4, :cond_12

    goto :goto_2

    .line 50
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ContextInfo UID violation info is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but caller is "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_2
    if-eqz p5, :cond_15

    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 52
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p5

    .line 53
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 54
    invoke-virtual {v4, p5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_15

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p5

    if-nez p5, :cond_15

    if-nez v1, :cond_15

    iget-boolean p5, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p5, :cond_14

    iget p5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne p5, v4, :cond_14

    goto :goto_3

    .line 56
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "caller is not DO or PO or KPU: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_3
    const/4 p5, 0x0

    if-eqz p6, :cond_19

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p6

    .line 58
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    invoke-virtual {p0, v4, p6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    move-result p6

    .line 60
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_API_ACCESS_GRANT"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_16

    move v4, v3

    goto :goto_4

    :cond_16
    move v4, p5

    :goto_4
    if-nez p6, :cond_19

    if-eqz v4, :cond_17

    goto :goto_5

    .line 61
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p6

    .line 62
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p6

    .line 63
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-virtual {v4, p6}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_19

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p6

    if-nez p6, :cond_19

    iget-boolean p6, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p6, :cond_18

    iget p6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne p6, v4, :cond_18

    goto :goto_5

    .line 66
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Caller is not DO or PO or KPU: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_5
    if-eqz p3, :cond_1e

    .line 67
    iget-boolean p6, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p6, :cond_1a

    goto :goto_6

    .line 68
    :cond_1a
    iget p6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    .line 69
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {p6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p6

    if-nez p6, :cond_1b

    .line 71
    iget-object p6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p6

    if-nez p6, :cond_1b

    goto :goto_6

    :cond_1b
    if-eqz v1, :cond_1c

    goto :goto_6

    .line 73
    :cond_1c
    iget-object p6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p6

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne p6, v4, :cond_1d

    goto :goto_6

    .line 75
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Admin doesn\'t own container "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ContextInfo.uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_6
    if-eqz p2, :cond_20

    .line 76
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    if-lez p6, :cond_20

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_1f
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1f

    move p6, v3

    goto :goto_7

    :catch_0
    move p6, p5

    goto :goto_8

    :cond_20
    move p6, p5

    .line 79
    :goto_7
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is permission granted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 80
    :catch_1
    :goto_8
    const-string/jumbo v4, "could not check calling permission"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p6, :cond_22

    if-eqz p2, :cond_21

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_21

    .line 83
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_21

    .line 85
    const-string p0, " OR "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 86
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Admin  does not have "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_22
    iget-boolean p2, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p2, :cond_23

    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-eq p2, p4, :cond_23

    .line 89
    invoke-virtual {p0, v0, p5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceWpcod(IZ)V

    .line 90
    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "enforceActiveAdminPermissionByContext() - return contextInfo with PseudoUid = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    return-object p1

    :cond_23
    if-eqz p3, :cond_25

    .line 93
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_25

    if-eqz v1, :cond_24

    .line 95
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 96
    invoke-static {p1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 97
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p1

    .line 98
    :cond_24
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_25
    if-eqz v1, :cond_27

    .line 99
    const-string/jumbo p2, "restriction_policy"

    invoke-static {p2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz p2, :cond_26

    .line 100
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p5

    :cond_26
    if-eqz p5, :cond_27

    .line 101
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceOwnerUid()I

    move-result p0

    .line 102
    invoke-static {p1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 103
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p1

    .line 104
    :cond_27
    const-string/jumbo p0, "enforceActiveAdminDualPermission >>>"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final enforceUMCSignature()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 7
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/16 v1, 0x40

    .line 19
    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 27
    invoke-static {p0, v0}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    const-string v0, "Caller is not real UMC. Signature Verification failed."

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 44
    const-string/jumbo v0, "package not found"

    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void
.end method

.method public final enforceWpcod(IZ)V
    .locals 3

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_5

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 11
    invoke-interface {p1}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    .line 20
    move-result p1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result v2

    .line 25
    if-ne p1, v2, :cond_3

    .line 27
    if-nez p2, :cond_0

    .line 29
    const-string/jumbo p0, "enforceWpcod(), caller is a valid KPU.."

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 40
    invoke-direct {p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 43
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_2

    .line 65
    if-eqz p2, :cond_1

    .line 67
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 70
    move-result p0

    .line 71
    invoke-static {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    const-string p1, "Caller is not either organization owned PO or KSP inside org owned profile.."

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :cond_2
    :goto_0
    const-string/jumbo p0, "enforceWpcod(), caller is a either WPCOD PO or valid KPU.."

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 95
    const-string p1, "Organization owned managed profile userId and caller userId does not match.."

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 103
    const-string p1, "Device is not organization owned managed profile.."

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    const-string/jumbo p1, "enforceWpcod(), failed to talk to DPMS.."

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    :goto_2
    return-void

    .line 119
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 121
    const-string p2, "ContextInfo UID voilation info is "

    .line 123
    const-string v0, " but caller is "

    .line 125
    invoke-static {p1, v1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p0
.end method

.method public final enforceZtFwCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKnoxZtFwCaller()Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-static {p1, p2}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string p2, "Caller is not authorized - uid: "

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 8
    const-wide/32 v4, 0xc8080

    .line 11
    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 14
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0

    .line 24
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    move-object p2, v2

    .line 28
    :goto_0
    if-eqz p2, :cond_0

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v0

    .line 34
    :try_start_1
    new-instance p1, Landroid/content/pm/ResolveInfo;

    .line 36
    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 39
    iput-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    new-instance p2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    return-object p2

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw p0

    .line 57
    :catch_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    return-object v2

    .line 61
    :catch_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return-object v2

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p2, "Unknown admin: "

    .line 69
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method public final getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 35
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    move-result v1

    .line 41
    if-ne v1, p1, :cond_0

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "Admin found on user "

    .line 47
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, ": "

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    const-string p1, "EnterpriseDeviceManagerService"

    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v0

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    return-object p0
.end method

.method public final getActiveAdmins(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 34
    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 61
    const/16 v3, -0x2710

    .line 63
    if-eq v3, p1, :cond_2

    .line 65
    const/4 v3, -0x1

    .line 66
    if-eq v3, p1, :cond_2

    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 71
    move-result-object v3

    .line 72
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 76
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 79
    move-result v3

    .line 80
    if-ne v3, p1, :cond_1

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    monitor-exit v0

    .line 94
    return-object v1

    .line 95
    :cond_4
    :goto_2
    monitor-exit v0

    .line 96
    return-object v1

    .line 97
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final getActiveAdminsInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;IIZ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move/from16 v3, p2

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdmins(I)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v7

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_a

    .line 38
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    move-object v8, v0

    .line 43
    check-cast v8, Landroid/content/ComponentName;

    .line 45
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v9

    .line 49
    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    .line 52
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-string v10, ", admin pkg name: "

    .line 55
    const-string v11, "Admin component: "

    .line 57
    const-string v12, "EDM_KnoxAnalytics"

    .line 59
    if-eqz v0, :cond_1

    .line 61
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v8, ", type: KnoxLicensedAdmin, in userId: "

    .line 84
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto/16 :goto_6

    .line 104
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/utils/KpuHelper;->isCallerValidKpu(ILjava/lang/String;)Z

    .line 113
    move-result v0

    .line 114
    const/4 v13, 0x1

    .line 115
    if-eqz v0, :cond_2

    .line 117
    iput v13, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v3, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 126
    invoke-static {v3, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    .line 129
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    if-eqz v0, :cond_9

    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    goto/16 :goto_5

    .line 136
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 143
    move-result v14

    .line 144
    const v15, -0x718bbf9

    .line 147
    if-eq v14, v15, :cond_5

    .line 149
    const v15, 0x63daef2

    .line 152
    if-eq v14, v15, :cond_4

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string/jumbo v14, "com.sec.knox.kccagent"

    .line 158
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_6

    .line 164
    move v14, v13

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    const-string/jumbo v14, "com.samsung.android.kgclient"

    .line 169
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_6

    .line 175
    const/4 v14, 0x0

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    :goto_2
    const/4 v14, -0x1

    .line 178
    :goto_3
    if-eqz v14, :cond_8

    .line 180
    if-eq v14, v13, :cond_7

    .line 182
    goto :goto_4

    .line 183
    :cond_7
    iput v13, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 185
    goto :goto_4

    .line 186
    :cond_8
    const-string/jumbo v0, "knox.kg.state"

    .line 189
    iget-object v13, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 191
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    iput-object v0, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 197
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v8, ", type: KnoxInternalAdmin, in userId: "

    .line 220
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v8

    .line 230
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v9, ";"

    .line 243
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    goto/16 :goto_0

    .line 258
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    :cond_9
    if-eqz p4, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v8, ", type: NonLicensedAdmin, in userId: "

    .line 286
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 296
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    goto/16 :goto_0

    .line 304
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_b

    .line 310
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    move-result-object v0

    .line 314
    iget-object v1, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 316
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_c

    .line 325
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    move-result-object v0

    .line 329
    iget-object v1, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 331
    invoke-virtual {v1, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_d

    .line 340
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object v0

    .line 344
    iget-object v1, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 346
    invoke-virtual {v1, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 349
    goto :goto_7

    .line 350
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    :cond_d
    :goto_7
    return-void
.end method

.method public final getActiveAdminsInfo(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    const/16 v1, -0x2710

    .line 29
    if-ne p1, v1, :cond_0

    .line 31
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 53
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 65
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 68
    move-result-object v3

    .line 69
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 73
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    move-result v3

    .line 77
    if-ne v3, p1, :cond_1

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-object v1

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "EnterpriseDeviceManagerService"

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v3

    .line 13
    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    const-string v5, "android"

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 21
    move-result-object v4

    .line 22
    const-string v5, "adminUid"

    .line 24
    const-string/jumbo v7, "packageName"

    .line 27
    const-string/jumbo v8, "signature"

    .line 30
    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    .line 33
    move-result-object v9

    .line 34
    new-instance v10, Landroid/content/ContentValues;

    .line 36
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 39
    invoke-static {v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    const-string v11, "#SelectClause#"

    .line 45
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    const-string v3, "CertificateWhiteListTable"

    .line 52
    invoke-virtual {v0, v3, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_6

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/content/ContentValues;

    .line 74
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v10

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    move-result-wide v11

    .line 86
    if-eqz v4, :cond_5

    .line 88
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    move-result-object v13

    .line 92
    if-eqz v13, :cond_5

    .line 94
    invoke-virtual {v13, v9, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 97
    move-result v9

    .line 98
    if-ne v9, v2, :cond_5

    .line 100
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_2

    .line 106
    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 109
    move-result-object v9

    .line 110
    if-eqz v9, :cond_1

    .line 112
    array-length v13, v9

    .line 113
    move v14, v6

    .line 114
    move v15, v14

    .line 115
    :goto_1
    if-ge v14, v13, :cond_3

    .line 117
    aget-object v15, v9, v14

    .line 119
    invoke-static {v6, v4, v15, v10}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    move-result v15

    .line 123
    if-eqz v15, :cond_0

    .line 125
    goto :goto_2

    .line 126
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_4

    .line 131
    :cond_1
    move v15, v6

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const/4 v15, 0x1

    .line 134
    :cond_3
    :goto_2
    if-eqz v15, :cond_5

    .line 136
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 139
    move-result-object v3

    .line 140
    if-eqz v3, :cond_5

    .line 142
    if-eqz p1, :cond_5

    .line 144
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_5

    .line 150
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object v9

    .line 154
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_5

    .line 160
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 169
    move-result-object v13

    .line 170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 173
    move-result v14

    .line 174
    invoke-interface {v13, v10, v14}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 177
    move-result v13

    .line 178
    if-nez v13, :cond_4

    .line 180
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    .line 182
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 185
    move-result v14

    .line 186
    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    return-object v13

    .line 193
    :catch_0
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v14, "Could not check permission "

    .line 200
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v10, " of the admin that has added caller to cert white list"

    .line 208
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v10

    .line 215
    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    goto :goto_3

    .line 219
    :catch_1
    :try_start_3
    const-string v3, "Package added to certificate whitelisted not installed"

    .line 221
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :cond_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    goto/16 :goto_0

    .line 229
    :goto_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    throw v0

    .line 233
    :cond_6
    const/4 v0, 0x0

    .line 234
    return-object v0
.end method

.method public final getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 9
    move-result p1

    .line 10
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(IILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final getAdminUidForAuthorizedUid(I)I
    .locals 2

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string/jumbo v1, "getAdminUidForAuthorizedUid"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 18
    new-instance v0, Landroid/content/ContentValues;

    .line 20
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    const-string v1, "authorizedUid"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 36
    const-string v1, "adminUid"

    .line 38
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_0
    const/4 p0, -0x1

    .line 56
    return p0
.end method

.method public final getAuthorizedUidForAdminUid(I)I
    .locals 2

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string/jumbo v1, "getAuthorizedUidForAdminUid"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 18
    new-instance v0, Landroid/content/ContentValues;

    .line 20
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    const-string v1, "adminUid"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 36
    const-string v1, "authorizedUid"

    .line 38
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_0
    const/4 p0, -0x1

    .line 56
    return p0
.end method

.method public final getConstrainedState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->getConstrainedState()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string/jumbo v0, "mum_container_policy"

    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final getDelegatedPackagesInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;II)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 3
    invoke-interface {p0, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedPackages(I)Ljava/util/Map;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    iput p3, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Ljava/util/List;

    .line 49
    const-string v1, "EDM_KnoxAnalytics"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "Admin pkg name: "

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, ", type: DelegatedAdmin, in userId: "

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 81
    invoke-virtual {v1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :cond_0
    return-void
.end method

.method public final getDeviceManagementRoleHolderInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;Landroid/os/UserHandle;I)V
    .locals 4

    .line 1
    const-string v0, "Admin : "

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    const-class v1, Landroid/app/role/RoleManager;

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/role/RoleManager;

    .line 13
    const-string v1, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 15
    invoke-virtual {p0, v1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    const-string v1, "EDM_KnoxAnalytics"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, ", type: DPMRHolder, in userId: "

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    move-result p2

    .line 51
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 67
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_0
    :goto_0
    return-void
.end method

.method public final getDeviceOwnerUid()I
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 9
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 17
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    move-result-object p0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 37
    move-result-object p0

    .line 38
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_4

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    goto :goto_3

    .line 54
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const-string p0, "Failed to retrieve DO component on device"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 63
    :goto_2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 66
    const-string p0, "Failed to get application info for DO component."

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :goto_3
    const/4 p0, -0x1

    .line 73
    return p0

    .line 74
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw p0
.end method

.method public final getKPUPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getLockObject()Ljava/lang/Object;
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 3
    invoke-static {v0}, Lcom/android/server/LockGuard;->guard(I)V

    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 8
    return-object p0
.end method

.method public final getMamPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMamState:Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;->getPermission(Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getOrganizationOwnedProfileUserId()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "user"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 36
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 42
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 44
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 46
    invoke-interface {v4, v5}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 52
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    goto :goto_2

    .line 66
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :goto_2
    const/16 p0, -0x2710

    .line 72
    return p0

    .line 73
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw p0
.end method

.method public final getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    move-result p0

    .line 12
    invoke-interface {v0, p1, p2, p0}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 15
    return-void
.end method

.method public final getUserStatus(I)I
    .locals 9

    .line 1
    const-string v0, "Valid Admin for User "

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "getUserStatus is called for userid "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "EnterpriseDeviceManagerService"

    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    move-result v1

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide v3

    .line 31
    const-string v5, "Failed to getUserStatus"

    .line 33
    const/4 v6, -0x1

    .line 34
    if-nez p1, :cond_1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdmins(I)Ljava/util/List;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_0

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v8, "Valid Admin "

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, " in User 0"

    .line 97
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 116
    move-result-object v1

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-interface {v1, v7}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    .line 121
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception v1

    .line 126
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_0

    .line 145
    :catch_1
    move-exception p0

    .line 146
    goto :goto_2

    .line 147
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 149
    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 152
    move-result v7

    .line 153
    if-ne v1, v7, :cond_2

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 179
    move-result-object p0

    .line 180
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    .line 183
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_2
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    goto :goto_3

    .line 188
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    goto :goto_1

    .line 195
    :goto_3
    const-string/jumbo p0, "status "

    .line 198
    invoke-static {v6, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    return v6

    .line 202
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw p0
.end method

.method public final hasAnyActiveAdmin()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 10
    move-result p0

    .line 11
    if-gtz p0, :cond_1

    .line 13
    return v0

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 18
    move-result v0

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    move-result-wide v2

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 32
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return v1

    .line 48
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0

    .line 52
    :cond_0
    return v1
.end method

.method public final hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    const-string v1, "No active admin "

    .line 12
    const/16 v2, 0x16

    .line 14
    if-ge p2, v2, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 18
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 37
    move-result p0

    .line 38
    monitor-exit v2

    .line 39
    :goto_0
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string p1, " on user "

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final isAdminActive(Landroid/content/ComponentName;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "isAdminRemovableInternal: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", userHandle = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "EnterpriseDeviceManagerService"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    .line 48
    move-result p0

    .line 49
    const-string/jumbo p1, "isAdminRemovableInternal : "

    .line 52
    invoke-static {p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    return p0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string p2, "Bad admin: "

    .line 60
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0
.end method

.method public final isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v0

    .line 14
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 16
    iget-boolean p1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isUidValidKpu(IIZ)Z

    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final isCameraEnabledNative(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const-string/jumbo p0, "isCameraEnabledNative"

    .line 4
    const-string v0, "EnterpriseDeviceManagerService"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string/jumbo p0, "restriction_policy"

    .line 12
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p0, :cond_0

    .line 21
    :try_start_0
    const-string/jumbo v2, "checking for camera in restriction policy"

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :cond_0
    return v1
.end method

.method public final isDeviceOwnedByOrganization()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 11
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 28
    const-string/jumbo v0, "isDeviceOwnedByOrganization"

    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final isEmailAdminPkg(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.email.provider"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isKPUPlatformSigned(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(ILjava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isKnoxZtFwCaller()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 9
    const-string v1, "activity"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/ActivityManager;

    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 41
    if-eqz v2, :cond_1

    .line 43
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 45
    if-eq v3, v0, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 50
    :cond_3
    :goto_1
    const-string/jumbo p0, "com.samsung.android.knox.zt.framework"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 62
    move-result p0

    .line 63
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 66
    move-result v0

    .line 67
    if-ne p0, v0, :cond_4

    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 p0, 0x0

    .line 72
    :goto_2
    return p0
.end method

.method public final isMdmAdminPresent()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isMdmAdminPresentAsUser(I)Z
    .locals 8

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 40
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    check-cast v4, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 56
    move-result v4

    .line 57
    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_2

    .line 63
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string/jumbo p1, "isMdmAdminPresentAsUser() : MDM Admin Found - "

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string/jumbo v2, "enterprise_license_policy"

    .line 113
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 120
    move-result-object v2

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    .line 123
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 129
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-eqz v2, :cond_3

    .line 132
    :try_start_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v2, v7}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 139
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_2

    .line 143
    :catch_1
    move-exception v2

    .line 144
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    goto :goto_3

    .line 151
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw p0

    .line 155
    :goto_3
    if-eqz v4, :cond_0

    .line 157
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 160
    move-result v2

    .line 161
    if-lez v2, :cond_0

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string/jumbo p1, "isMdmAdminPresentAsUser() : MDM Admin Found(2) - "

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p0

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    .line 189
    :cond_4
    const-string/jumbo p0, "isMdmAdminPresentAsUser() : MDM Admin is not present."

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    const/4 p0, 0x0

    .line 196
    return p0

    .line 197
    :goto_4
    const-string/jumbo p1, "isMdmAdminPresentAsUser() : failed. "

    .line 200
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    return v1
.end method

.method public final isMdmAdminPresentInternal()Z
    .locals 7

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_4

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_0

    .line 38
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 40
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 44
    check-cast v5, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 56
    move-result v5

    .line 57
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_2

    .line 63
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string/jumbo v2, "isMdmAdminPresentInternal() : MDM Admin Found - "

    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string/jumbo v3, "enterprise_license_policy"

    .line 113
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 120
    move-result-object v3

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    .line 123
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    if-eqz v3, :cond_3

    .line 128
    :try_start_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 131
    move-result-object v6

    .line 132
    invoke-interface {v3, v6}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 135
    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception v3

    .line 138
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 141
    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 143
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 146
    move-result v3

    .line 147
    if-lez v3, :cond_0

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string/jumbo v2, "isMdmAdminPresentInternal() : MDM Admin Found(2) - "

    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    return v1

    .line 175
    :cond_4
    const/4 p0, 0x0

    .line 176
    return p0

    .line 177
    :goto_2
    const-string/jumbo v2, "isMdmAdminPresentInternal() : failed. "

    .line 180
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    return v1
.end method

.method public final isPermissionIncludedOnManifest(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    move-result v0

    .line 29
    const/16 v4, 0x1000

    .line 31
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/PackageManager;->semGetPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_3

    .line 38
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 40
    if-nez p0, :cond_0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    array-length v3, p0

    .line 44
    move v4, v0

    .line 45
    :goto_0
    if-ge v4, v3, :cond_2

    .line 47
    aget-object v5, p0, v4

    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v5, :cond_1

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return v0

    .line 69
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    return v0

    .line 73
    :catch_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 75
    const-string p1, "Caller does not have all required permissions declared on Manifest"

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    throw p0
.end method

.method public final isPossibleTransferOwenerShip(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method

.method public final isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    iget-boolean v1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 31
    move-result v1

    .line 32
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 50
    move-result p0

    .line 51
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 53
    if-ne p0, p1, :cond_1

    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final isRestrictedByConstrainedState(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->isRestrictedByConstrainedState(I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUidDeviceOrProfileOwner(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
.end method

.method public final isUserSelectable(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "CCMUserSelectableTable"

    .line 3
    const-string v1, "alias"

    .line 5
    const-string/jumbo v2, "isUserSelectable - allow :"

    .line 8
    const-string/jumbo v3, "isUserSelectable called for alias: "

    .line 11
    const-string v4, "EnterpriseDeviceManagerService"

    .line 13
    invoke-static {v3, p1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    .line 28
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 31
    invoke-virtual {v5, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    invoke-virtual {v6, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 42
    new-instance v5, Landroid/content/ContentValues;

    .line 44
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 47
    invoke-virtual {v5, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    const-string/jumbo p1, "isSelectable"

    .line 55
    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    move-object p1, p0

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v0

    .line 81
    if-lez v0, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 p0, 0x2

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 106
    move-result v3

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo p0, "isUserSelectable - uidCount = 0"

    .line 113
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_1

    .line 117
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v0, "isUserSelectable - Exception"

    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 128
    :cond_2
    :goto_1
    return v3
.end method

.method public final keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "in keychainMarkedReset"

    .line 4
    const-string v1, "EnterpriseDeviceManagerService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x3e8

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v0, v2, :cond_0

    .line 22
    const-string/jumbo p0, "keychainMarkedReset - Cannot clear credentials, not a system app"

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v3

    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 31
    const-string/jumbo p0, "keychainMarkedReset - Invalid Arguments"

    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v3

    .line 38
    :cond_1
    const-string/jumbo p1, "csr"

    .line 41
    filled-new-array {p1}, [Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 55
    const-string v3, "CCMCertTable"

    .line 57
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 60
    const/4 p1, 0x0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    const-string v2, "CCMCertGrantTable"

    .line 65
    invoke-virtual {v0, v2, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v3, "removeAllGrants - Exception"

    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    const-string v0, "CCMUserSelectableTable"

    .line 85
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    goto :goto_1

    .line 89
    :catch_1
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v0, "removeAllUserSelectable - Exception"

    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {p0, p1, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    :goto_1
    const/4 p0, 0x1

    .line 102
    return p0
.end method

.method public final migrateKnoxPoliciesForWpcod(I)Z
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string/jumbo v1, "migrateKnoxPoliciesForWpcod() containerId received = "

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x3e8

    .line 16
    if-ne v2, v4, :cond_1

    .line 18
    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 20
    if-ne v3, v2, :cond_1

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->addPseudoAdminForParent(I)I

    .line 40
    move-result p1

    .line 41
    const/4 v1, -0x1

    .line 42
    if-eq p1, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetAPILevelPrivacyPolicies()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetClassLevelPrivacyPolicies()V

    .line 50
    const-string/jumbo p0, "migrateKnoxPoliciesForWpcod() complete.."

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_0
    const-string/jumbo p0, "migrateKnoxPoliciesForWpcod() returning false.."

    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 72
    const-string p1, "Caller is not a system process.."

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
.end method

.method public final packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq p2, v1, :cond_1

    .line 12
    const/16 v1, 0x3e8

    .line 14
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 20
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 28
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 39
    const-string/jumbo p1, "packageHasActiveAdminsAsUser caller need INTERACT_ACROSS_USERS_FULL permission"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v2

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v1

    .line 57
    move v3, v2

    .line 58
    :goto_1
    if-ge v3, v1, :cond_3

    .line 60
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 68
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 90
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 93
    move-result-object v4

    .line 94
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 98
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 101
    move-result v4

    .line 102
    if-ne v4, p2, :cond_2

    .line 104
    const-string p1, "EnterpriseDeviceManagerService"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v2, " packageHasActiveAdminsAsUser "

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string p0, " userID"

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit v0

    .line 151
    const/4 p0, 0x1

    .line 152
    return p0

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_2

    .line 155
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    monitor-exit v0

    .line 159
    return v2

    .line 160
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0
.end method

.method public final readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 18
    move-result p0

    .line 19
    const/4 p1, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 22
    return-object p1

    .line 23
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    .line 25
    const-string v0, "/efs/umc"

    .line 27
    const-string v1, "BulkEnrollmentProfile"

    .line 29
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    .line 44
    cmp-long v0, v0, v2

    .line 46
    if-nez v0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 52
    move-result-wide v0

    .line 53
    long-to-int v0, v0

    .line 54
    new-array v1, v0, [B

    .line 56
    new-instance v2, Ljava/io/FileInputStream;

    .line 58
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 64
    move-result p0

    .line 65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    if-lez p0, :cond_3

    .line 70
    :try_start_2
    new-instance p0, Ljava/lang/String;

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :catch_0
    move-exception p0

    .line 80
    move-object v2, p1

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    move-object p1, v2

    .line 84
    goto :goto_3

    .line 85
    :catch_1
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    return-object p1

    .line 88
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    if-eqz v2, :cond_3

    .line 93
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 96
    goto :goto_2

    .line 97
    :catch_2
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :cond_3
    :goto_2
    return-object p1

    .line 102
    :goto_3
    if-eqz p1, :cond_4

    .line 104
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 107
    goto :goto_4

    .line 108
    :catch_3
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_4
    :goto_4
    throw p0
.end method

.method public final reconcileAdmin(Landroid/content/ComponentName;I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 7
    if-ne v0, v1, :cond_3

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string/jumbo v3, "com.samsung.android.kgclient"

    .line 57
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v3

    .line 65
    xor-int/lit8 v3, v3, 0x1

    .line 67
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdmin(ILjava/lang/String;Z)Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v2

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Ljava/util/TreeMap;

    .line 103
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 106
    move-result-object p0

    .line 107
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object p0

    .line 111
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 129
    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    monitor-exit v2

    .line 134
    goto :goto_2

    .line 135
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :catch_0
    move-exception p0

    .line 138
    const-string v0, "EnterpriseDeviceManagerService"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "Failed reconcileAdmin for "

    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo p1, "for user id "

    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    :cond_2
    :goto_2
    return-void

    .line 174
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 176
    const-string p1, "Need to be System Process"

    .line 178
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 181
    throw p0
.end method

.method public final registerBroadcastReceiver()V
    .locals 3

    .line 1
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDeviceOwnedByOrganization()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public final removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    const-string/jumbo v1, "failed to remove action admin "

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v4, "removeActiveAdmin() : Removing admin "

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v4, " from user "

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, ", caller : "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v4, "EnterpriseDeviceManagerService"

    .line 43
    invoke-static {v3, v2, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 48
    invoke-interface {p0, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_2
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_3

    .line 78
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto :goto_3

    .line 98
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_3
    const-string p0, "Admin removed from DPM!"

    .line 119
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public final removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V
    .locals 9

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "removeActiveAdminDelayed - adminReceiver: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", userId: "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    move-result v2

    .line 48
    const-string v3, "EnterpriseDeviceManagerService"

    .line 50
    const-string v4, "Admin uid: "

    .line 52
    const-string v5, ", calling uid: "

    .line 54
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eq v1, v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    .line 63
    const-string v4, "Only system or itself can remove an EDM admin"

    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 76
    const-string p0, "EnterpriseDeviceManagerService"

    .line 78
    const-string p1, "Admin "

    .line 80
    const-string p2, " cannot be removed!"

    .line 82
    invoke-static {v1, p1, p2, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 88
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->cleanUpConstrainedState(I)V

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    move-result-wide v2

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 103
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 105
    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onPreAdminRemoval(I)V

    .line 108
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/util/TreeMap;

    .line 114
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v5

    .line 122
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 128
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 140
    invoke-interface {v6, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto/16 :goto_a

    .line 147
    :catch_0
    move-exception v6

    .line 148
    :try_start_2
    const-string v7, "EnterpriseDeviceManagerService"

    .line 150
    const-string/jumbo v8, "removeActiveAdminDelayed Ex1:"

    .line 153
    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    goto :goto_0

    .line 157
    :catch_1
    move-exception p2

    .line 158
    goto/16 :goto_7

    .line 160
    :catch_2
    move-exception p0

    .line 161
    goto/16 :goto_9

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 166
    move-result-object v5

    .line 167
    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :try_start_3
    const-string v6, "EnterpriseDeviceManagerService"

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v8, "Removing Admin with uid"

    .line 177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v7

    .line 187
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    if-nez v4, :cond_4

    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeAdminFromDatabase(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    goto :goto_1

    .line 212
    :catchall_1
    move-exception p2

    .line 213
    goto/16 :goto_6

    .line 215
    :catch_3
    move-exception v0

    .line 216
    :try_start_4
    const-string v6, "EnterpriseDeviceManagerService"

    .line 218
    const-string v7, "FATAL: Admin failed to remove lets try during next boot up"

    .line 220
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    if-nez v4, :cond_6

    .line 226
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Ljava/util/TreeMap;

    .line 232
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 235
    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v0

    .line 240
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_5

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Ljava/util/Map$Entry;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 252
    :try_start_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 258
    invoke-interface {v4, v1, p3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    goto :goto_2

    .line 262
    :catch_4
    move-exception v4

    .line 263
    :try_start_7
    const-string v5, "EnterpriseDeviceManagerService"

    .line 265
    const-string/jumbo v6, "removeActiveAdminDelayed Ex2:"

    .line 268
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    goto :goto_2

    .line 272
    :cond_5
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 274
    invoke-virtual {p3, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onAdminRemoved(I)V

    .line 277
    :cond_6
    if-eqz p2, :cond_a

    .line 279
    const/16 p3, 0x3e8

    .line 281
    if-ne v1, p3, :cond_a

    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 285
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 288
    move-result v4

    .line 289
    invoke-interface {v0, v4}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_a

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 298
    move-result-object v0

    .line 299
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_a

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    move-result-object v4

    .line 309
    check-cast v4, Landroid/content/ComponentName;

    .line 311
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 314
    move-result-object v5

    .line 315
    if-eqz v5, :cond_8

    .line 317
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 320
    move-result-object v5

    .line 321
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 323
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 325
    if-eq v5, p3, :cond_8

    .line 327
    goto :goto_3

    .line 328
    :cond_8
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    move-result v5

    .line 340
    if-nez v5, :cond_7

    .line 342
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 345
    move-result p2

    .line 346
    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 349
    const-string p2, "adminUid"

    .line 351
    const-string/jumbo p3, "proxyUid"

    .line 354
    filled-new-array {p2, p3}, [Ljava/lang/String;

    .line 357
    move-result-object p2

    .line 358
    new-instance p3, Landroid/content/ContentValues;

    .line 360
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 363
    const-string v0, "adminUid"

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 374
    const-string v4, "PROXY_ADMIN_INFO"

    .line 376
    invoke-virtual {v0, v4, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 379
    move-result-object p2

    .line 380
    check-cast p2, Ljava/util/ArrayList;

    .line 382
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 385
    move-result-object p2

    .line 386
    :cond_9
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    move-result p3

    .line 390
    if-eqz p3, :cond_a

    .line 392
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    move-result-object p3

    .line 396
    check-cast p3, Landroid/content/ContentValues;

    .line 398
    const-string v0, "adminUid"

    .line 400
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 403
    move-result-object v0

    .line 404
    const-string/jumbo v4, "proxyUid"

    .line 407
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 410
    move-result-object p3

    .line 411
    if-eqz v0, :cond_9

    .line 413
    if-eqz p3, :cond_9

    .line 415
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 418
    move-result v4

    .line 419
    if-ne v4, v1, :cond_9

    .line 421
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 423
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 426
    move-result v5

    .line 427
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 430
    move-result v5

    .line 431
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 434
    move-result v6

    .line 435
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 438
    const-string v4, "EnterpriseDeviceManagerService"

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    const-string v6, "MUMContainer relation rebuilt : "

    .line 447
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 453
    move-result p3

    .line 454
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 457
    move-result p3

    .line 458
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    const-string p3, " - "

    .line 463
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    move-result-object p3

    .line 473
    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 476
    goto :goto_4

    .line 477
    :cond_a
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    goto :goto_8

    .line 481
    :goto_6
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 482
    :try_start_9
    throw p2
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 483
    :goto_7
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 486
    goto :goto_5

    .line 487
    :goto_8
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 489
    const-string p2, "ADMIN_REMOVED"

    .line 491
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 496
    return-void

    .line 497
    :goto_9
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 498
    :goto_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    throw p0
.end method

.method public final removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Removing admin "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " from user "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " from DPM"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "EnterpriseDeviceManagerService"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 37
    return-void
.end method

.method public final removeAuthorizedUid(II)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "removeAuthorizedUid"

    .line 4
    const-string v1, "EnterpriseDeviceManagerService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 18
    new-instance v0, Landroid/content/ContentValues;

    .line 20
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    const-string v2, "adminUid"

    .line 25
    const-string v3, "authorizedUid"

    .line 27
    invoke-static {p2, v0, v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 37
    move-result p0

    .line 38
    const-string/jumbo p1, "removeAuthorizedUid : "

    .line 41
    invoke-static {p0, p1, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 p1, 0x1

    .line 45
    if-le p0, p1, :cond_0

    .line 47
    return p1

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public final resetAPILevelPrivacyPolicies()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "EnterpriseDeviceManagerService"

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 9
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->resetControlStateBits(I)V

    .line 12
    const-string v3, "EnterpriseDeviceManagerService"

    .line 14
    const-string/jumbo v0, "updateApplicationCacheForWpcod() called"

    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    const-string v0, "application_policy"

    .line 22
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 32
    int-to-long v4, v0

    .line 33
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateApplicationCacheForWpcod(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v5, "updateApplicationCacheForWpcod error: "

    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v0, v4, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Application Group): Exception - "

    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    :try_start_3
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    iget v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 69
    const-string v9, "APPLICATION_MISC"

    .line 71
    const-string v10, "appNotificationMode"

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x2

    .line 75
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 78
    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies : Failed to reset App Notification Mode: "

    .line 88
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    :goto_1
    :try_start_4
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 96
    iget v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 98
    const-string v6, "RESTRICTION"

    .line 100
    const-string v10, "backupEnabled"

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v8, 0x1

    .line 104
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 107
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    iget v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 111
    const-string v12, "RESTRICTION"

    .line 113
    const-string/jumbo v16, "clipboardEnabled"

    .line 116
    const/4 v15, 0x0

    .line 117
    const/4 v14, 0x1

    .line 118
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 121
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 123
    iget v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 125
    const-string v4, "RESTRICTION"

    .line 127
    const-string/jumbo v8, "factoryresetallowed"

    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v6, 0x1

    .line 132
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 135
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 137
    iget v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 139
    const-string v10, "RESTRICTION"

    .line 141
    const-string v14, "allowClipboardShare"

    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v12, 0x1

    .line 145
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 148
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 150
    iget v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 152
    const-string v4, "RESTRICTION"

    .line 154
    const-string v8, "allowGoogleAccountsAutoSync"

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v6, 0x1

    .line 158
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 161
    const-string v3, "EnterpriseDeviceManagerService"

    .line 163
    const-string/jumbo v0, "updateRestrictionCacheForWpcod() called.."

    .line 166
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 169
    :try_start_5
    const-string/jumbo v0, "restriction_policy"

    .line 172
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 178
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCacheForWpcod()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 183
    goto :goto_2

    .line 184
    :catch_3
    move-exception v0

    .line 185
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v5, "updateRestrictionCacheForWpcod error: "

    .line 193
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {v0, v4, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 199
    goto :goto_2

    .line 200
    :catch_4
    move-exception v0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Restriction Group): Exception - "

    .line 206
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 212
    :cond_1
    :goto_2
    :try_start_7
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 214
    iget v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 216
    const-string v6, "RESTRICTION"

    .line 218
    const-string/jumbo v10, "globalProxy"

    .line 221
    const/4 v9, 0x0

    .line 222
    const/4 v8, 0x0

    .line 223
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 226
    goto :goto_3

    .line 227
    :catch_5
    move-exception v0

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Global Proxy): Exception - "

    .line 233
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 239
    :goto_3
    :try_start_8
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 241
    iget v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 243
    const-string v6, "MULTI_USER_MGMT"

    .line 245
    const-string/jumbo v10, "multiUserCreationAllowed"

    .line 248
    const/4 v9, 0x0

    .line 249
    const/4 v8, 0x1

    .line 250
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 253
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 255
    iget v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 257
    const-string v12, "MULTI_USER_MGMT"

    .line 259
    const-string/jumbo v16, "multiUserRemovalAllowed"

    .line 262
    const/4 v15, 0x0

    .line 263
    const/4 v14, 0x1

    .line 264
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 267
    goto :goto_4

    .line 268
    :catch_6
    move-exception v0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (MultiUser policy Group): Exception - "

    .line 274
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 280
    :goto_4
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    .line 282
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 285
    const-string/jumbo v3, "bluetoothLogEnabled"

    .line 288
    const-string/jumbo v4, "false"

    .line 291
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 296
    iget v4, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 298
    const-string v5, "BLUETOOTH"

    .line 300
    const/4 v6, 0x0

    .line 301
    invoke-virtual {v3, v4, v6, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 304
    goto :goto_5

    .line 305
    :catch_7
    move-exception v0

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Bluetooth policy Group): Exception - "

    .line 311
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 317
    :goto_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 320
    move-result-object v0

    .line 321
    :try_start_a
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 323
    iget v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 325
    const-string v4, "ADMIN_INFO"

    .line 327
    const-string/jumbo v8, "canRemove"

    .line 330
    const/4 v7, 0x0

    .line 331
    const/4 v6, 0x1

    .line 332
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 335
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 337
    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 340
    move-result-object v3

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getKPUPackageName()Ljava/lang/String;

    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 348
    move-result-object v3

    .line 349
    :cond_2
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_4

    .line 355
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Ljava/lang/Integer;

    .line 361
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 364
    move-result v8

    .line 365
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 368
    move-result v5

    .line 369
    if-nez v5, :cond_2

    .line 371
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 373
    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 376
    move-result-object v5

    .line 377
    if-eqz v5, :cond_2

    .line 379
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    move-result v6

    .line 383
    if-nez v6, :cond_3

    .line 385
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 388
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 391
    move-result v7

    .line 392
    invoke-interface {v0, v6, v5, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 395
    move-result v5

    .line 396
    if-nez v5, :cond_2

    .line 398
    goto :goto_7

    .line 399
    :catch_8
    move-exception v0

    .line 400
    goto :goto_8

    .line 401
    :cond_3
    :goto_7
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 403
    const-string v7, "ADMIN_INFO"

    .line 405
    const-string/jumbo v11, "canRemove"

    .line 408
    const/4 v10, 0x0

    .line 409
    const/4 v9, 0x1

    .line 410
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 413
    goto :goto_6

    .line 414
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v3, "resetAPILevelPrivacyPolicies (EDMPolicy.setAdminRemovable): Exception - "

    .line 419
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 425
    :cond_4
    return-void
.end method

.method public final resetClassLevelPrivacyPolicies()V
    .locals 7

    .line 1
    const-string v0, "GEOFENCINGSETTINGS"

    .line 3
    const-string v1, "DomainFilterReportStatus"

    .line 5
    const-string v2, "GEOFENCING"

    .line 7
    const-string v3, "BROWSER"

    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/content/ContentValues;

    .line 15
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 18
    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "adminUid"

    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    const/4 v3, 0x4

    .line 31
    if-ge v2, v3, :cond_0

    .line 33
    aget-object v3, v0, v2

    .line 35
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    invoke-virtual {v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v6, "resetClassLevelPrivacyPolicies : Failed to reset table "

    .line 50
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, " : "

    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, "EnterpriseDeviceManagerService"

    .line 63
    invoke-static {v4, v5, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public final sendIntent(I)V
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_2

    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_1

    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const p0, 0x1040249

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const p0, 0x1040856

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const p0, 0x1040276

    .line 22
    :goto_0
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 25
    return-void
.end method

.method public final sendKnoxAnalyticsDeviceStatus()Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "DeviceOwner component: "

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    const-string v5, "KADeviceStatus caller: "

    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const-string v5, "EDM_KnoxAnalytics"

    .line 35
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v4, "com.samsung.android.mdm"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 48
    move-result v6

    .line 49
    invoke-virtual {v1, v3, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    .line 52
    move-result v3

    .line 53
    const/16 v6, 0x3e8

    .line 55
    if-eq v0, v6, :cond_1

    .line 57
    if-eqz v4, :cond_0

    .line 59
    if-eqz v3, :cond_0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 64
    const-string v1, "Caller is not DO or PO or KPU"

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0

    .line 70
    :cond_1
    :goto_0
    const-string v0, "Device Status"

    .line 72
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    new-instance v4, Ljava/util/HashSet;

    .line 82
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 85
    new-instance v6, Ljava/util/HashSet;

    .line 87
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 90
    new-instance v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;

    .line 92
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v8, 0x1

    .line 96
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 98
    const/4 v9, -0x1

    .line 99
    iput v9, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 101
    const/4 v10, 0x0

    .line 102
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    .line 104
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 106
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 108
    const-string v0, "Not_assigned"

    .line 110
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 112
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 114
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 116
    const/4 v11, 0x0

    .line 117
    iput-object v11, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 119
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 121
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 123
    iput-object v11, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 125
    iput v9, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    .line 129
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    .line 136
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 139
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    .line 143
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 146
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    .line 150
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 153
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    .line 157
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 160
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 162
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    .line 170
    const-string/jumbo v12, "com.google.android.feature.AER_OPTIMIZED"

    .line 173
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_2

    .line 179
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    .line 181
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 184
    move-result-wide v12

    .line 185
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isDeviceOrProfileOwnerEnabled()Z

    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 191
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 193
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 199
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 201
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 203
    const-class v14, Lcom/samsung/android/knox/SemPersonaManager;

    .line 205
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 211
    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationPresent()Z

    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_3

    .line 219
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto/16 :goto_11

    .line 225
    :catch_0
    move-exception v0

    .line 226
    goto :goto_3

    .line 227
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 229
    invoke-interface {v0, v10}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 232
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_4
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    goto :goto_4

    .line 237
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    goto :goto_2

    .line 241
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 244
    move-result-wide v12

    .line 245
    if-eqz v11, :cond_5

    .line 247
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 249
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    .line 252
    move-result v0

    .line 253
    new-instance v14, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_5
    move v2, v0

    .line 273
    goto :goto_6

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    goto/16 :goto_10

    .line 277
    :catch_1
    move-exception v0

    .line 278
    goto/16 :goto_f

    .line 280
    :cond_5
    const/16 v0, -0x2710

    .line 282
    goto :goto_5

    .line 283
    :goto_6
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 285
    const-string/jumbo v14, "user"

    .line 288
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/os/UserManager;

    .line 294
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 297
    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 301
    move-result-object v14

    .line 302
    move v0, v10

    .line 303
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    const-string v9, ";"

    .line 309
    if-eqz v15, :cond_11

    .line 311
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    move-result-object v15

    .line 315
    check-cast v15, Landroid/content/pm/UserInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    add-int/lit8 v16, v0, 0x1

    .line 319
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 321
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    const-string v10, "Counting userId : "

    .line 326
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v10, v15, Landroid/content/pm/UserInfo;->id:I

    .line 331
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v10, " , of type: "

    .line 336
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v10, v15, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 341
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, v15, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_10

    .line 365
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_10

    .line 371
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_10

    .line 377
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 379
    const/16 v9, 0x4d

    .line 381
    if-ne v0, v9, :cond_6

    .line 383
    goto/16 :goto_d

    .line 385
    :cond_6
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_7

    .line 391
    const-string v0, "AppSeparation present"

    .line 393
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    goto/16 :goto_d

    .line 398
    :catch_2
    move-exception v0

    .line 399
    goto/16 :goto_e

    .line 401
    :cond_7
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_8

    .line 407
    const-string v0, "SecureFolder present"

    .line 409
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 414
    goto/16 :goto_d

    .line 416
    :cond_8
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 418
    const/4 v9, 0x4

    .line 419
    if-ne v2, v0, :cond_9

    .line 421
    move v0, v9

    .line 422
    goto :goto_8

    .line 423
    :cond_9
    const/4 v0, -0x1

    .line 424
    :goto_8
    if-ne v0, v9, :cond_a

    .line 426
    move v9, v8

    .line 427
    goto :goto_9

    .line 428
    :cond_a
    const/4 v9, 0x0

    .line 429
    :goto_9
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 432
    move-result v10

    .line 433
    if-eqz v10, :cond_d

    .line 435
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 437
    iget v9, v15, Landroid/content/pm/UserInfo;->id:I

    .line 439
    invoke-interface {v0, v9}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 442
    move-result v0

    .line 443
    const/16 v9, 0x8

    .line 445
    if-eqz v0, :cond_b

    .line 447
    const/4 v0, 0x3

    .line 448
    iput v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 450
    move v0, v9

    .line 451
    goto :goto_a

    .line 452
    :cond_b
    const/4 v0, 0x2

    .line 453
    iput v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 455
    const/4 v0, 0x0

    .line 456
    :goto_a
    iget-object v10, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 458
    iget v8, v15, Landroid/content/pm/UserInfo;->id:I

    .line 460
    invoke-interface {v10, v8}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 463
    move-result-object v11

    .line 464
    if-ne v0, v9, :cond_c

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    .line 468
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    const-string v9, "WPCOD Owner component: "

    .line 473
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 479
    move-result-object v9

    .line 480
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object v8

    .line 487
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    goto :goto_b

    .line 491
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    const-string v9, "WP Owner component: "

    .line 498
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 504
    move-result-object v9

    .line 505
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object v8

    .line 512
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_b
    const/4 v9, 0x1

    .line 516
    goto :goto_c

    .line 517
    :cond_d
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 520
    :goto_c
    iget v8, v15, Landroid/content/pm/UserInfo;->id:I

    .line 522
    invoke-virtual {v1, v7, v8, v0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminsInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;IIZ)V

    .line 525
    if-eqz v9, :cond_e

    .line 527
    iget v8, v15, Landroid/content/pm/UserInfo;->id:I

    .line 529
    invoke-virtual {v1, v7, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDelegatedPackagesInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;II)V

    .line 532
    :cond_e
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 535
    move-result-object v8

    .line 536
    invoke-virtual {v1, v7, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceManagementRoleHolderInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;Landroid/os/UserHandle;I)V

    .line 539
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    move-result-object v9

    .line 545
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 548
    move-result v8

    .line 549
    if-eqz v8, :cond_f

    .line 551
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 556
    move-result-object v9

    .line 557
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    move-result-object v8

    .line 561
    check-cast v8, Ljava/util/Collection;

    .line 563
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 566
    :cond_f
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    move-result-object v9

    .line 572
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 575
    move-result v8

    .line 576
    if-eqz v8, :cond_10

    .line 578
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    move-result-object v0

    .line 588
    check-cast v0, Ljava/util/Collection;

    .line 590
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 593
    :cond_10
    :goto_d
    move/from16 v0, v16

    .line 595
    const/4 v8, 0x1

    .line 596
    const/4 v9, -0x1

    .line 597
    const/4 v10, 0x0

    .line 598
    goto/16 :goto_7

    .line 600
    :goto_e
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    goto :goto_d

    .line 604
    :cond_11
    iput v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 606
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 609
    move-result v1

    .line 610
    iput v1, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 612
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    .line 615
    move-result v1

    .line 616
    iput v1, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 618
    if-eqz v11, :cond_12

    .line 620
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 623
    move-result-object v1

    .line 624
    iput-object v1, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 626
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 628
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    const-string/jumbo v2, "userCount and their types: "

    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    move-result-object v0

    .line 658
    invoke-static {v5, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->writeToBundle()V

    .line 664
    invoke-virtual {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logData()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 667
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    const/4 v1, 0x1

    .line 671
    return v1

    .line 672
    :goto_f
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 675
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 678
    const/4 v1, 0x0

    .line 679
    return v1

    .line 680
    :goto_10
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    throw v0

    .line 684
    :goto_11
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    throw v0
.end method

.method public final setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 12
    return-void
.end method

.method public final setActiveAdminSilent(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 26
    return-void
.end method

.method public final setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 12

    .line 1
    if-eqz p2, :cond_0

    .line 3
    const-string v1, "SET_ADMIN_REMOVABLE_TRUE"

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "SET_ADMIN_REMOVABLE_FALSE"

    .line 8
    :goto_0
    invoke-static {p1, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object v7

    .line 12
    invoke-static {v7}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 15
    move-result v8

    .line 16
    const-string v1, "EnterpriseDeviceManagerService"

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez p3, :cond_1

    .line 21
    iget v3, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v2, v8, p3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(IILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_2

    .line 35
    const-string v0, "Can\'t found packageName"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v2

    .line 41
    :cond_2
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_3

    .line 55
    const-string v0, "Admin is not active"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v2

    .line 61
    :cond_3
    iget v4, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 63
    if-eq v3, v4, :cond_4

    .line 65
    invoke-static {v8, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z

    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 71
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4

    .line 77
    const-string v0, "Samsung internal services cannot be controlled by other admin"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v2

    .line 83
    :cond_4
    const-string/jumbo v2, "setAdminRemovable : callingUid = "

    .line 86
    invoke-static {v3, v2, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    const-string v1, "ADMIN_INFO"

    .line 93
    const-string/jumbo v5, "canRemove"

    .line 96
    const/4 v4, 0x0

    .line 97
    move v2, v3

    .line 98
    move v3, p2

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_8

    .line 105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    move-result-wide v10

    .line 109
    if-nez p3, :cond_6

    .line 111
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 114
    move-result v3

    .line 115
    const-string v4, "EnterpriseDeviceManagerService"

    .line 117
    if-eqz p2, :cond_5

    .line 119
    const-string v0, "Admin %d has set itself as removable"

    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    const-string v0, "Admin %d has set itself as not removable"

    .line 126
    :goto_2
    iget v1, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v1

    .line 132
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object v5

    .line 140
    const/4 v1, 0x1

    .line 141
    const/4 v2, 0x1

    .line 142
    const/4 v0, 0x5

    .line 143
    move v6, v8

    .line 144
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 147
    goto :goto_4

    .line 148
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 151
    move-result v3

    .line 152
    const-string v4, "EnterpriseDeviceManagerService"

    .line 154
    if-eqz p2, :cond_7

    .line 156
    const-string v0, "Admin %d has set %s as removable"

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    const-string v0, "Admin %d has set %s as not removable"

    .line 161
    :goto_3
    iget v1, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v1

    .line 167
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    move-result-object v5

    .line 175
    const/4 v1, 0x1

    .line 176
    const/4 v2, 0x1

    .line 177
    const/4 v0, 0x5

    .line 178
    move v6, v8

    .line 179
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    goto :goto_6

    .line 186
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v0

    .line 190
    :cond_8
    :goto_6
    return v9
.end method

.method public final setAndroidLogProperty(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKnoxZtFwCaller()Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const-string/jumbo p0, "persist.sys.knox.zt.androidlog"

    .line 10
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    const-string v0, "Caller is not authorized to set property - uid: "

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public final setB2BMode(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setMediators()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/TreeMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 27
    instance-of v2, v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 29
    if-eqz v2, :cond_0

    .line 31
    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 33
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 35
    invoke-interface {v1, v2}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->setMediator(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final setUserSelectable(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "alias"

    .line 3
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 11
    const-string v1, "In setGrant - uid"

    .line 13
    const-string v2, ",alias:"

    .line 15
    const-string v3, ",value:"

    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object p1

    .line 21
    const-string v1, "EnterpriseDeviceManagerService"

    .line 23
    invoke-static {v1, p1, p3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p3, p1, :cond_0

    .line 29
    const/4 p1, 0x2

    .line 30
    :cond_0
    :try_start_0
    new-instance p3, Landroid/content/ContentValues;

    .line 32
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 35
    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v2, "isSelectable"

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    new-instance p1, Landroid/content/ContentValues;

    .line 50
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 58
    const-string p2, "CCMUserSelectableTable"

    .line 60
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    const-string/jumbo p0, "setUserSelectable() failed"

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public final startDeferredServicesIfNeeded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 18
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 20
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 23
    :cond_0
    return-void
.end method

.method public final startDualDARServices()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1482

    .line 11
    if-ne v0, v1, :cond_2

    .line 13
    const-string v0, "EnterpriseDeviceManagerService"

    .line 15
    const-string v1, "Start DualDAR Services"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 22
    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    const-string v1, "Add DualDAR services and request to be ready"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 35
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 44
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 46
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "Deferred services have already created. set initial state DualDAR"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->setInitialState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string v1, "DualDAR stateMachine initiate failed!"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 71
    const-string v0, "Only KnoxCore app can start DualDAR services"

    .line 73
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method public final transferOwnerShip(Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 4

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string/jumbo v1, "targetUID : "

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p3, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 26
    move-result p1

    .line 27
    new-instance p2, Landroid/content/ContentValues;

    .line 29
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    const-string v2, "adminUid"

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    const-string v3, "ADMIN"

    .line 45
    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 48
    move-result p2

    .line 49
    if-lez p2, :cond_0

    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, " not present in db"

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :goto_0
    const-string/jumbo p1, "transfer Ownership failed"

    .line 83
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_1
    return-void
.end method

.method public final updateNotificationExemption(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z

    .line 22
    move-result p1

    .line 23
    const-string v1, "EnterpriseDeviceManagerService"

    .line 25
    if-nez p1, :cond_0

    .line 27
    const-string p0, "Only Knox Internal package can grant notification exemption"

    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :cond_0
    if-eqz p2, :cond_3

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 53
    const-string p0, "Target package is not installed : "

    .line 55
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 63
    :cond_2
    const-string/jumbo p1, "updateNotificationExemptionInner PackageName : "

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 75
    move-result v0

    .line 76
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 78
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda2;

    .line 80
    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;ILjava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p1, " Notification Exemption"

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v0, "updateNotificationExemption : Failed to provide notification exemption  for "

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string p2, " : "

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p0, p1, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    :cond_3
    :goto_0
    return-void
.end method

.method public final writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "/efs/umc"

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 20
    move-result p0

    .line 21
    const/4 p1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v1

    .line 29
    const/4 p0, 0x0

    .line 30
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 32
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_4

    .line 47
    :catch_0
    move-exception p2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 51
    const-string v4, "BulkEnrollmentProfile"

    .line 53
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 65
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 73
    new-instance v0, Ljava/io/FileOutputStream;

    .line 75
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 85
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    move-object p0, v0

    .line 94
    goto :goto_4

    .line 95
    :catch_1
    move-exception p2

    .line 96
    move-object p0, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    const/4 p0, 0x1

    .line 102
    return p0

    .line 103
    :goto_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-eqz p0, :cond_4

    .line 108
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    goto :goto_3

    .line 112
    :catch_2
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_4
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    return p1

    .line 120
    :goto_4
    if-eqz p0, :cond_5

    .line 122
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 125
    goto :goto_5

    .line 126
    :catch_3
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :cond_5
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    throw p1
.end method
