.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Landroid/net/NetworkCapabilities;

    .line 14
    .line 15
    invoke-direct {p0, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 16
    .line 17
    .line 18
    iput-object p0, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Can\'t track mobile network "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, ": "

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "MultipathPolicyTracker"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 27
    .line 28
    :goto_0
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    iput-wide v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
