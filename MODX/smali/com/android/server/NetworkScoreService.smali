.class public final Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z

.field public static final VERBOSE:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/NetworkScoreService$ServiceHandler;

.field public final mLocationModeReceiver:Lcom/android/server/NetworkScoreService$1;

.field public final mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

.field public mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

.field public final mPackageMonitorLock:Ljava/lang/Object;

.field public final mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

.field public final mScoreCaches:Ljava/util/Map;

.field public final mServiceConnProducer:Ljava/util/function/Function;

.field public mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

.field public final mServiceConnectionLock:Ljava/lang/Object;

.field public final mUseOpenWifiPackageObserver:Lcom/android/server/NetworkScoreService$3;

.field public final mUserIntentReceiver:Lcom/android/server/NetworkScoreService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "NetworkScoreService"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v4, 0x3

    .line 10
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 16
    move v4, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v1

    .line 19
    :goto_0
    sput-boolean v4, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    move v1, v2

    .line 31
    :cond_1
    sput-boolean v1, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 18
    new-instance v2, Lcom/android/server/NetworkScoreService$1;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v2, p0, v0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;I)V

    .line 24
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;I)V

    .line 30
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 34
    new-instance p2, Landroid/util/ArrayMap;

    .line 36
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 41
    new-instance v4, Landroid/content/IntentFilter;

    .line 43
    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 45
    invoke-direct {v4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v1, p1

    .line 53
    move-object v3, p2

    .line 54
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    new-instance v1, Lcom/android/server/NetworkScoreService$ServiceHandler;

    .line 59
    invoke-direct {v1, p0, p4}, Lcom/android/server/NetworkScoreService$ServiceHandler;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V

    .line 62
    new-instance v6, Landroid/content/IntentFilter;

    .line 64
    const-string p4, "android.location.MODE_CHANGED"

    .line 66
    invoke-direct {v6, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v3, p1

    .line 71
    move-object v4, v0

    .line 72
    move-object v5, p2

    .line 73
    move-object v8, v1

    .line 74
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    new-instance p2, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 79
    invoke-direct {p2, p1, v1}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScoreService$ServiceHandler;)V

    .line 82
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 84
    iput-object p3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 86
    new-instance p2, Lcom/android/server/NetworkScoreService$3;

    .line 88
    invoke-direct {p2, p0, v1}, Lcom/android/server/NetworkScoreService$3;-><init>(Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkScoreService$ServiceHandler;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    move-result-object p1

    .line 95
    const-string/jumbo p3, "use_open_wifi_package"

    .line 98
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object p3

    .line 102
    const/4 p4, 0x0

    .line 103
    invoke-virtual {p1, p3, p4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 108
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 114
    new-instance p2, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;

    .line 116
    invoke-direct {p2, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 119
    iget-object p0, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 123
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 125
    monitor-enter p1

    .line 126
    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 128
    monitor-exit p1

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0
.end method

.method public static sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 21
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_1
    if-ge v2, v1, :cond_0

    .line 25
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/net/INetworkScoreCache;

    .line 31
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    invoke-interface {p0, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 45
    throw p0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 51
    monitor-exit v0

    .line 52
    goto :goto_0

    .line 53
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    throw p0

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public final bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "NetworkScoreService"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "bindToScoringServiceIfNeeded("

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ")"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    if-eqz p1, :cond_3

    .line 31
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 36
    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, p1}, Landroid/net/NetworkScorerAppData;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 56
    if-nez v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 60
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 66
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 70
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->bind(Landroid/content/Context;)V

    .line 75
    monitor-exit v0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 82
    :goto_2
    return-void
.end method

.method public final clearInternal()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/NetworkScoreService$4;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 13
    check-cast p0, Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v2}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public final clearScores()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 7
    const-string v2, "android.permission.REQUEST_NETWORK_SCORES"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    const-string v0, "Caller is neither the system process or the active network scorer."

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0
.end method

.method public final disableScoring()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 7
    const-string v2, "android.permission.REQUEST_NETWORK_SCORES"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    const-string v0, "Caller is neither the system process or the active network scorer."

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p1, "Current scorer: "

    .line 3
    iget-object p3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "NetworkScoreService"

    .line 7
    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p3, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 20
    invoke-virtual {p3}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 23
    move-result-object p3

    .line 24
    if-nez p3, :cond_1

    .line 26
    const-string p0, "Scoring is disabled."

    .line 28
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 54
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 57
    if-eqz p0, :cond_2

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    .line 61
    const-string v2, "ScoringServiceConnection: "

    .line 63
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 68
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ", bound: "

    .line 77
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-boolean v2, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 82
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, ", connected: "

    .line 87
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 92
    invoke-static {p3, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const-string p0, "ScoringServiceConnection: null"

    .line 98
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    :try_start_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return-void

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p0
.end method

.method public final getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    .line 5
    const-string v2, "Caller must be granted REQUEST_NETWORK_SCORES."

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getActiveScorerPackage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.SCORE_NETWORKS"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    const-string v0, "Caller is neither the system process or a network scorer."

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_2

    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final getAllValidScorers()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    .line 5
    const-string v2, "Caller must be granted REQUEST_NETWORK_SCORES."

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final isCallerActiveScorer(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 14
    if-ne p0, p1, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public onUserUnlocked(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "onUserUnlocked("

    .line 8
    const-string v1, ")"

    .line 10
    const-string v2, "NetworkScoreService"

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 18
    return-void
.end method

.method public final refreshBinding()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "NetworkScoreService"

    .line 7
    const-string/jumbo v2, "refreshBinding()"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 15
    invoke-virtual {v1}, Lcom/android/server/NetworkScorerAppManager;->updateState()V

    .line 18
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 20
    invoke-virtual {v1}, Lcom/android/server/NetworkScorerAppManager;->migrateNetworkScorerAppSettingIfNeeded()V

    .line 23
    const-string v1, "Registered package monitor for "

    .line 25
    const-string v2, "Unregistering package monitor for "

    .line 27
    if-eqz v0, :cond_1

    .line 29
    const-string v3, "NetworkScoreService"

    .line 31
    const-string/jumbo v4, "registerPackageMonitorIfNeeded()"

    .line 34
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 39
    invoke-virtual {v3}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 45
    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 48
    const/4 v6, 0x0

    .line 49
    if-eqz v5, :cond_4

    .line 51
    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 59
    iget-object v7, v7, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_4

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 72
    const-string v5, "NetworkScoreService"

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 81
    iget-object v2, v2, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 83
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 95
    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 98
    iput-object v6, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 100
    :cond_4
    if-eqz v3, :cond_5

    .line 102
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 104
    if-nez v2, :cond_5

    .line 106
    new-instance v2, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 108
    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    invoke-direct {v2, p0, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    .line 115
    iput-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 117
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 119
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 121
    const/4 v7, 0x0

    .line 122
    invoke-virtual {v2, v3, v6, v5, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 125
    if-eqz v0, :cond_5

    .line 127
    const-string v2, "NetworkScoreService"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 136
    iget-object v1, v1, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v0, :cond_6

    .line 151
    const-string v0, "NetworkScoreService"

    .line 153
    const-string v1, "bindToScoringServiceIfNeeded"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 160
    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    .line 167
    return-void

    .line 168
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    throw p0
.end method

.method public final registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 7

    .line 1
    const-string v0, "Unable to register NetworkScoreCache for type "

    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 5
    const-string v2, "android.permission.REQUEST_NETWORK_SCORES"

    .line 7
    const-string v3, "Caller must be granted REQUEST_NETWORK_SCORES."

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v1

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 18
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v5

    .line 25
    check-cast v4, Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 33
    if-nez v4, :cond_0

    .line 35
    new-instance v4, Landroid/os/RemoteCallbackList;

    .line 37
    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 40
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v6

    .line 46
    check-cast v5, Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {v4, p2, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_2

    .line 64
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p2

    .line 76
    check-cast p0, Landroid/util/ArrayMap;

    .line 78
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    const-string p0, "NetworkScoreService"

    .line 83
    const/4 p2, 0x2

    .line 84
    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_2

    .line 90
    const-string p0, "NetworkScoreService"

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    return-void

    .line 112
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    :catchall_1
    move-exception p0

    .line 115
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw p0
.end method

.method public final requestScores([Landroid/net/NetworkKey;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    .line 5
    const-string v2, "Caller must be granted REQUEST_NETWORK_SCORES."

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    .line 24
    move-result-object p0

    .line 25
    monitor-exit v2

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-eqz p0, :cond_1

    .line 33
    :try_start_2
    invoke-interface {p0, p1}, Landroid/net/INetworkRecommendationProvider;->requestScores([Landroid/net/NetworkKey;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_3
    const-string p1, "NetworkScoreService"

    .line 46
    const-string v2, "Failed to request scores."

    .line 48
    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method

.method public final setActiveScorer(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.SCORE_NETWORKS"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    const-string p1, "Caller is neither the system process or a network scorer."

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setActiveScorer(Ljava/lang/String;)Z

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final unbindFromScoringServiceIfNeeded()V
    .locals 5

    .line 1
    const-string v0, "Disconnected from: "

    .line 3
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string v2, "NetworkScoreService"

    .line 9
    const-string/jumbo v3, "unbindFromScoringServiceIfNeeded"

    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 20
    if-eqz v3, :cond_1

    .line 22
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v3, v4}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->unbind(Landroid/content/Context;)V

    .line 27
    if-eqz v1, :cond_1

    .line 29
    const-string v1, "NetworkScoreService"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 62
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 6

    .line 1
    const-string v0, "Unable to unregister NetworkScoreCache for type "

    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 5
    const-string v2, "android.permission.REQUEST_NETWORK_SCORES"

    .line 7
    const-string v3, "Caller must be granted REQUEST_NETWORK_SCORES."

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v1

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 18
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v5

    .line 25
    check-cast v4, Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 33
    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {v4, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_2

    .line 48
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    check-cast p0, Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    const-string p0, "NetworkScoreService"

    .line 64
    const/4 p2, 0x2

    .line 65
    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 71
    const-string p0, "NetworkScoreService"

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    return-void

    .line 93
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw p0
.end method

.method public final updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 13

    .line 1
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_7

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    .line 17
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    array-length v3, p1

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-ge v5, v3, :cond_1

    .line 25
    aget-object v6, p1, v5

    .line 27
    iget-object v7, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 29
    iget v7, v7, Landroid/net/NetworkKey;->type:I

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Ljava/util/List;

    .line 41
    if-nez v7, :cond_0

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    .line 45
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v8, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 50
    iget v8, v8, Landroid/net/NetworkKey;->type:I

    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_5

    .line 63
    :cond_0
    :goto_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p1

    .line 77
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v2

    .line 81
    const/4 v3, 0x1

    .line 82
    if-eqz v2, :cond_6

    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 92
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v6, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    move-result-object v7

    .line 99
    check-cast v6, Landroid/util/ArrayMap;

    .line 101
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Landroid/os/RemoteCallbackList;

    .line 107
    if-eqz v6, :cond_4

    .line 109
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_3

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move v3, v4

    .line 117
    goto :goto_3

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    if-eqz v3, :cond_5

    .line 123
    :try_start_2
    const-string v3, "NetworkScoreService"

    .line 125
    const/4 v5, 0x2

    .line 126
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_2

    .line 132
    const-string v3, "NetworkScoreService"

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v6, "No scorer registered for type "

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, ", discarding"

    .line 153
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_2

    .line 164
    :cond_5
    iget-object v8, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 169
    move-result-object v3

    .line 170
    move-object v9, v3

    .line 171
    check-cast v9, Ljava/util/List;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/lang/Integer;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 182
    move-result v10

    .line 183
    new-instance v2, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v12, 0x0

    .line 187
    move-object v7, v2

    .line 188
    invoke-direct/range {v7 .. v12}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V

    .line 191
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 194
    move-result-object v3

    .line 195
    invoke-static {v2, v3}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    goto :goto_2

    .line 199
    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    return v3

    .line 205
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    throw p0

    .line 209
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    const-string v0, "Caller with UID "

    .line 215
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    .line 221
    move-result v0

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, " is not the active scorer."

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 237
    throw p0
.end method
