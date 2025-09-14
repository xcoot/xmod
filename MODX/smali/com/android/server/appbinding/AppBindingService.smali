.class public final Lcom/android/server/appbinding/AppBindingService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mApps:Ljava/util/ArrayList;

.field public final mConnections:Ljava/util/ArrayList;

.field public mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

.field public final mLock:Ljava/lang/Object;

.field final mPackageUserMonitor:Landroid/content/BroadcastReceiver;

.field public final mRunningUsers:Landroid/util/SparseBooleanArray;

.field public final mSettingsObserver:Lcom/android/server/appbinding/AppBindingService$1;


# direct methods
.method public static -$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 21
    iget-object v3, v2, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 23
    const-string v4, "android.app.role.SMS"

    .line 25
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    :goto_1
    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p0, p2, v2}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 55
    invoke-virtual {p0, p2, v2}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    :goto_2
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$1;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/server/appbinding/AppBindingService$1;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    .line 38
    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Lcom/android/server/appbinding/AppBindingService$1;

    .line 40
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$2;

    .line 42
    invoke-direct {v1, p0}, Lcom/android/server/appbinding/AppBindingService$2;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    .line 45
    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    .line 49
    iput-object p2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 57
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 65
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;

    .line 67
    invoke-direct {v1, p0}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    .line 70
    invoke-direct {p1, p2, v1}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;-><init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;)V

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lcom/android/server/appbinding/AppBindingConstants;

    .line 78
    const-string p2, ""

    .line 80
    invoke-direct {p1, p2}, Lcom/android/server/appbinding/AppBindingConstants;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 85
    return-void
.end method


# virtual methods
.method public final bindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v8, p1

    .line 5
    move-object/from16 v9, p2

    .line 7
    const/4 v10, 0x0

    .line 8
    move v11, v10

    .line 9
    :goto_0
    iget-object v1, v0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    if-ge v11, v1, :cond_b

    .line 17
    iget-object v1, v0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    move-object v12, v1

    .line 24
    check-cast v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 26
    if-eqz v9, :cond_0

    .line 28
    if-eq v9, v12, :cond_0

    .line 30
    goto/16 :goto_6

    .line 32
    :cond_0
    move v1, v10

    .line 33
    :goto_1
    iget-object v2, v0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v2

    .line 39
    const/4 v13, 0x0

    .line 40
    if-ge v1, v2, :cond_2

    .line 42
    iget-object v2, v0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 50
    iget v3, v2, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 52
    if-ne v3, v8, :cond_1

    .line 54
    iget-object v3, v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 56
    if-ne v3, v12, :cond_1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v2, v13

    .line 63
    :goto_2
    if-eqz v2, :cond_3

    .line 65
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 68
    :cond_3
    iget-object v6, v0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 70
    iget-object v1, v0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 72
    const-string v2, " Target package not found"

    .line 74
    const-string v3, "[Default SMS app] u"

    .line 76
    iget-object v14, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 78
    monitor-enter v14

    .line 79
    :try_start_0
    iget-object v4, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v4, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v4, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v4, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v4, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 91
    invoke-virtual {v4, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-boolean v1, v1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    .line 96
    if-eqz v1, :cond_9

    .line 98
    iget-object v1, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v1

    .line 104
    const v4, 0x1110278

    .line 107
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_9

    .line 113
    iget-object v1, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 115
    const-string v4, "android.app.role.SMS"

    .line 117
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v1, v4, v5}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 131
    if-nez v1, :cond_4

    .line 133
    iget-object v1, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 135
    const-string v4, "Target package not found"

    .line 137
    invoke-virtual {v1, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    const-string v1, "AppBindingService"

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v14

    .line 161
    goto :goto_5

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    goto/16 :goto_7

    .line 165
    :cond_4
    iget-object v2, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    new-instance v15, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v3, "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

    .line 177
    const-string v4, "android.permission.BIND_CARRIER_MESSAGING_CLIENT_SERVICE"

    .line 179
    const-class v5, Landroid/service/carrier/CarrierMessagingClientService;

    .line 181
    move/from16 v2, p1

    .line 183
    move-object v7, v15

    .line 184
    invoke-static/range {v1 .. v7}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_5

    .line 190
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    iget-object v2, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 196
    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    monitor-exit v14

    .line 200
    goto :goto_5

    .line 201
    :cond_5
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 203
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 205
    if-eqz v3, :cond_7

    .line 207
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_6

    .line 213
    goto :goto_3

    .line 214
    :cond_6
    move-object v2, v13

    .line 215
    goto :goto_4

    .line 216
    :cond_7
    :goto_3
    const-string v2, "Service must not run on the main process"

    .line 218
    :goto_4
    if-eqz v2, :cond_8

    .line 220
    iget-object v1, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 222
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    const-string v1, "AppBindingService"

    .line 227
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-exit v14

    .line 231
    goto :goto_5

    .line 232
    :cond_8
    iget-object v2, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 234
    const-string v3, "Valid service found"

    .line 236
    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    iget-object v2, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 241
    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    monitor-exit v14

    .line 245
    move-object v13, v1

    .line 246
    goto :goto_5

    .line 247
    :cond_9
    iget-object v1, v12, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 249
    const-string/jumbo v2, "feature disabled"

    .line 252
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    const-string v1, "AppBindingService"

    .line 257
    const-string v2, "[Default SMS app] feature disabled"

    .line 259
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_5
    if-nez v13, :cond_a

    .line 265
    goto :goto_6

    .line 266
    :cond_a
    new-instance v14, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 268
    iget-object v2, v0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 270
    iget-object v4, v0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 272
    iget-object v5, v0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 274
    invoke-virtual {v13}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 277
    move-result-object v7

    .line 278
    move-object v1, v14

    .line 279
    move/from16 v3, p1

    .line 281
    move-object v6, v12

    .line 282
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;-><init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;Landroid/content/ComponentName;)V

    .line 285
    iget-object v1, v0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, v14, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 292
    monitor-enter v1

    .line 293
    const/4 v2, 0x1

    .line 294
    :try_start_1
    iput-boolean v2, v14, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 296
    invoke-virtual {v14, v2}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 299
    monitor-exit v1

    .line 300
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 302
    goto/16 :goto_0

    .line 304
    :catchall_1
    move-exception v0

    .line 305
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    throw v0

    .line 307
    :goto_7
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    throw v0

    .line 309
    :cond_b
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "AppBindingService"

    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    array-length p1, p3

    .line 13
    const/4 v0, 0x0

    .line 14
    if-lez p1, :cond_1

    .line 16
    const-string p1, "-s"

    .line 18
    aget-object p3, p3, v0

    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/server/appbinding/AppBindingService;->dumpSimple(Ljava/io/PrintWriter;)V

    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 35
    invoke-virtual {p3, p2}, Lcom/android/server/appbinding/AppBindingConstants;->dump(Ljava/io/PrintWriter;)V

    .line 38
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 41
    const-string p3, "  Running users:"

    .line 43
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    move p3, v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 52
    move-result v1

    .line 53
    if-ge p3, v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 57
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 63
    const-string v1, " "

    .line 65
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 70
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 73
    move-result v1

    .line 74
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 86
    const-string p3, "  Connections:"

    .line 88
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    :goto_2
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result p3

    .line 97
    if-ge v0, p3, :cond_4

    .line 99
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object p3

    .line 105
    check-cast p3, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 107
    const-string v1, "    App type: "

    .line 109
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v1, p3, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    const-string v1, "[Default SMS app]"

    .line 119
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 125
    const-string v1, "      "

    .line 127
    invoke-virtual {p3, v1, p2}, Lcom/android/server/am/PersistentConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 138
    move-result p3

    .line 139
    if-nez p3, :cond_5

    .line 141
    const-string p3, "    None:"

    .line 143
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 149
    const-string p3, "  Finders:"

    .line 151
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance p3, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;

    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {p3, v0, p2}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;-><init>(ILjava/io/PrintWriter;)V

    .line 160
    invoke-virtual {p0, p3}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 163
    monitor-exit p1

    .line 164
    return-void

    .line 165
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    throw p0
.end method

.method public final dumpSimple(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 21
    const-string/jumbo v3, "conn,"

    .line 24
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    iget-object v3, v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string v3, "[Default SMS app]"

    .line 34
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    const-string v3, ","

    .line 39
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget v3, v2, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 44
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    const-string v3, ","

    .line 49
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget-object v3, v2, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 54
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    const-string v3, ","

    .line 63
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-object v3, v2, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 68
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v3, ","

    .line 77
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget-object v3, v2, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    iget-boolean v4, v2, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 85
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 86
    if-eqz v4, :cond_0

    .line 88
    :try_start_2
    const-string/jumbo v3, "bound"

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_0
    const-string/jumbo v3, "not-bound"

    .line 97
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    const-string v3, ","

    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    iget-object v3, v2, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 107
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-boolean v4, v2, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 110
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 111
    if-eqz v4, :cond_1

    .line 113
    :try_start_4
    const-string/jumbo v3, "connected"

    .line 116
    goto :goto_2

    .line 117
    :cond_1
    const-string/jumbo v3, "not-connected"

    .line 120
    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v3, ",#con="

    .line 125
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    iget-object v3, v2, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 130
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    :try_start_5
    iget v4, v2, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    .line 133
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    :try_start_6
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 137
    const-string v3, ",#dis="

    .line 139
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumDisconnected()I

    .line 145
    move-result v3

    .line 146
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 149
    const-string v3, ",#died="

    .line 151
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumBindingDied()I

    .line 157
    move-result v3

    .line 158
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 161
    const-string v3, ",backoff="

    .line 163
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNextBackoffMs()J

    .line 169
    move-result-wide v2

    .line 170
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 173
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 178
    goto/16 :goto_0

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 182
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 183
    :catchall_2
    move-exception p0

    .line 184
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 185
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 186
    :catchall_3
    move-exception p0

    .line 187
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 188
    :try_start_c
    throw p0

    .line 189
    :cond_2
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;

    .line 191
    const/4 v2, 0x1

    .line 192
    invoke-direct {v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;-><init>(ILjava/io/PrintWriter;)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 200
    :goto_3
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 201
    throw p0
.end method

.method public final forAllAppsLocked(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final refreshConstants()V
    .locals 5

    .line 1
    const-string v0, "Updating constants with: "

    .line 3
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    .line 5
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "app_binding_constants"

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 25
    iget-object v3, v3, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    .line 27
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    monitor-exit v2

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const-string v3, "AppBindingService"

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/android/server/appbinding/AppBindingConstants;

    .line 56
    invoke-direct {v0, v1}, Lcom/android/server/appbinding/AppBindingConstants;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 64
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 67
    move-result v1

    .line 68
    if-ge v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 72
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 81
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 84
    move-result v1

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 89
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 92
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    monitor-exit v2

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final unbindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 19
    iget v2, v1, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 21
    if-ne v2, p1, :cond_1

    .line 23
    if-eqz p2, :cond_0

    .line 25
    iget-object v2, v1, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 27
    if-eq v2, p2, :cond_0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->unbind()V

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method
