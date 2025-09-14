.class public final Lcom/android/server/appbinding/AppBindingService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appbinding/AppBindingService$Injector;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v1, Lcom/android/server/appbinding/AppBindingService;

    .line 11
    invoke-direct {v1, v0, p1}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V

    .line 14
    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 16
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 3
    sget v0, Lcom/android/server/appbinding/AppBindingService;->$r8$clinit:I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/16 v0, 0x226

    .line 10
    if-eq p1, v0, :cond_1

    .line 12
    const/16 v0, 0x258

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    new-instance v0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda2;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 28
    monitor-exit p1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    .line 35
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 40
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 45
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string/jumbo p1, "package"

    .line 51
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    .line 58
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 60
    const/4 v4, 0x0

    .line 61
    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 63
    move-object v2, v6

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 67
    const-string p1, "android.intent.action.USER_REMOVED"

    .line 69
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 72
    move-result-object v7

    .line 73
    iget-object v4, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 75
    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    .line 77
    const/4 v8, 0x0

    .line 78
    iget-object v9, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object p1

    .line 89
    const-string v0, "app_binding_constants"

    .line 91
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Lcom/android/server/appbinding/AppBindingService$1;

    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    .line 104
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "app_binding"

    .line 3
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 14
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method
