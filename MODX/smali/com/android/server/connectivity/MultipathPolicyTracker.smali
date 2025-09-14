.class public final Lcom/android/server/connectivity/MultipathPolicyTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCM:Landroid/net/ConnectivityManager;

.field public final mClock:Ljava/time/Clock;

.field public final mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mMobileNetworkCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$1;

.field public final mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

.field public mNPM:Landroid/net/NetworkPolicyManager;

.field public mPolicyListener:Lcom/android/server/connectivity/MultipathPolicyTracker$2;

.field public final mResolver:Landroid/content/ContentResolver;

.field final mSettingsObserver:Landroid/database/ContentObserver;

.field public final mUserAllContext:Landroid/content/Context;


# direct methods
.method public static -$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 23
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 13
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Landroid/os/BestClock;

    .line 26
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 28
    const/4 v3, 0x2

    .line 29
    new-array v3, v3, [Ljava/time/Clock;

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    .line 34
    move-result-object v4

    .line 35
    aput-object v4, v3, v1

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    .line 41
    move-result-object v4

    .line 42
    aput-object v4, v3, v1

    .line 44
    invoke-direct {v0, v2, v3}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 47
    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    .line 55
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;

    .line 57
    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V

    .line 60
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    .line 64
    invoke-direct {p1, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    .line 67
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    .line 69
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "MultipathPolicyTracker:"

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 31
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 33
    iget-wide v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v2

    .line 39
    iget-wide v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v3

    .line 45
    const-class v4, Landroid/net/ConnectivityManager;

    .line 47
    iget-wide v5, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 49
    const-wide/16 v7, 0x0

    .line 51
    cmp-long v0, v5, v7

    .line 53
    if-lez v0, :cond_0

    .line 55
    const/4 v0, 0x3

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_1
    int-to-long v5, v0

    .line 59
    const-string v0, "MULTIPATH_PREFERENCE_"

    .line 61
    invoke-static {v4, v0, v5, v6}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    const-string v1, "Network %s: quota %d, budget %d. Preference: %s"

    .line 71
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 82
    return-void
.end method

.method public final start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 11
    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    .line 13
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 15
    const-class v1, Landroid/net/NetworkPolicyManager;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 23
    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    .line 25
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 27
    const-class v1, Landroid/app/usage/NetworkStatsManager;

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 35
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 37
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 40
    const/16 v1, 0xc

    .line 42
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Lcom/android/server/connectivity/MultipathPolicyTracker$1;

    .line 57
    invoke-direct {v2, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    .line 60
    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    .line 62
    iget-object v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {v3, v0, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 67
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    .line 69
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    .line 72
    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    .line 74
    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 77
    const-string/jumbo v0, "network_default_daily_multipath_quota_bytes"

    .line 80
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    .line 86
    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 88
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    .line 93
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    .line 103
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    return-void
.end method
