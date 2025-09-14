.class public final Lcom/android/server/net/NetworkPolicyManagerService$12;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    xor-int/2addr v1, v3

    .line 15
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    invoke-static {v4, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v5, 0x12

    .line 24
    .line 25
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    xor-int/2addr p2, v3

    .line 30
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 31
    .line 32
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-static {v5, p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    :cond_0
    move v2, v3

    .line 43
    :cond_1
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->roamingChanged(IZ)V

    .line 70
    .line 71
    .line 72
    :cond_3
    if-eqz v2, :cond_4

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 77
    .line 78
    .line 79
    :cond_4
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_0
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget-object v3, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v6, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 63
    .line 64
    invoke-virtual {v6, v2, v5}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    if-eqz v4, :cond_3

    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p2, p1, v1}, Lcom/android/server/net/NetworkPolicyLogger;->interfacesChanged(ILandroid/util/ArraySet;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    :goto_2
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method
