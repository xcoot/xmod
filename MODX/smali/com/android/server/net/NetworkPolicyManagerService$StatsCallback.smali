.class public final Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;
.super Landroid/app/usage/NetworkStatsManager$UsageCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsAnyCallbackReceived:Z

.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onThresholdReached(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 4
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 11
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 14
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 16
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 19
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
