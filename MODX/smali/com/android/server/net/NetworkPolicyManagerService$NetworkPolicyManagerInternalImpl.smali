.class public final Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6
    return-void
.end method

.method public static updateBlockedReasonsWithProcState(I)I
    .locals 1

    .line 1
    const v0, 0x400a2

    .line 4
    invoke-static {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method


# virtual methods
.method public final getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 8
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 10
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 15
    move-result p1

    .line 16
    const/4 v3, -0x1

    .line 17
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 20
    move-result p1

    .line 21
    const-wide/16 v3, -0x1

    .line 23
    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 26
    move-result-wide v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    cmp-long p1, v1, v3

    .line 30
    if-nez p1, :cond_0

    .line 32
    return-wide v3

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    if-ne p2, p1, :cond_1

    .line 38
    long-to-float p1, v1

    .line 39
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 41
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    move-result-object p0

    .line 47
    const-string/jumbo p2, "netpolicy_quota_frac_jobs"

    .line 50
    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 53
    move-result p0

    .line 54
    :goto_0
    mul-float/2addr p0, p1

    .line 55
    float-to-long p0, p0

    .line 56
    return-wide p0

    .line 57
    :cond_1
    const/4 p1, 0x2

    .line 58
    if-ne p2, p1, :cond_2

    .line 60
    long-to-float p1, v1

    .line 61
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 63
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object p0

    .line 69
    const-string/jumbo p2, "netpolicy_quota_frac_multipath"

    .line 72
    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 75
    move-result p0

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-wide v3

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0
.end method

.method public final onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 8
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 10
    if-nez v1, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_6

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 19
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 21
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->tempPowerSaveWlChanged(IILjava/lang/String;Z)V

    .line 24
    const/4 p2, 0x1

    .line 25
    if-eqz p4, :cond_1

    .line 27
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 29
    iget-object p3, p3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 31
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 37
    iget-object p3, p3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 39
    invoke-virtual {p3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 44
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 46
    invoke-virtual {p3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 49
    move-result-object p3

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 53
    move-result p4

    .line 54
    const/4 v1, 0x0

    .line 55
    move v2, v1

    .line 56
    :goto_1
    if-ge v2, p4, :cond_9

    .line 58
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 64
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 66
    invoke-static {v3, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 69
    move-result v3

    .line 70
    const/4 v4, -0x1

    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 74
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 76
    if-eqz v5, :cond_4

    .line 78
    invoke-virtual {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_3

    .line 84
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    :goto_2
    invoke-virtual {p0, p2, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 98
    :cond_4
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 100
    if-eqz v5, :cond_7

    .line 102
    invoke-virtual {p0, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 105
    move-result v5

    .line 106
    const/4 v6, 0x3

    .line 107
    if-nez v5, :cond_6

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 115
    goto :goto_4

    .line 116
    :cond_5
    invoke-virtual {p0, v6, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    :goto_4
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 123
    :cond_7
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 125
    if-eqz v5, :cond_8

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForBackgroundUL(I)V

    .line 130
    :cond_8
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_9
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p0
.end method
