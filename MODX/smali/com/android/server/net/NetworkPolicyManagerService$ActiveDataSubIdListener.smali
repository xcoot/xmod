.class public final Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field public mActiveDataSubId:I

.field public mDefaultDataSubId:I

.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 6
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mDefaultDataSubId:I

    .line 17
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mActiveDataSubId:I

    .line 28
    return-void
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mActiveDataSubId:I

    .line 3
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mDefaultDataSubId:I

    .line 16
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 18
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 23
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
