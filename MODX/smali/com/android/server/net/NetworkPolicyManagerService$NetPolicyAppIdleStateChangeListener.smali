.class public final Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    iget-object p4, p4, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p4

    .line 9
    const/16 p5, 0x2000

    .line 11
    invoke-virtual {p4, p1, p5, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 17
    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 19
    monitor-enter p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 22
    iget-object p4, p4, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 24
    invoke-virtual {p4, p1, p3}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleStateChanged(IZ)V

    .line 27
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 29
    const/4 p4, -0x1

    .line 30
    invoke-virtual {p3, p1, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 33
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 35
    invoke-virtual {p0, p1, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 38
    monitor-exit p2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    :goto_0
    return-void
.end method

.method public final onParoleStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 10
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->paroleStateChanged(Z)V

    .line 13
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
