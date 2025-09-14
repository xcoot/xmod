.class public final Lcom/android/server/net/NetworkPolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method

.method private final onReceive$com$android$server$net$NetworkPolicyManagerService$15(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "Missing subscriberId for subId "

    .line 3
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    const-string v2, "android.telephony.extra.SLOT_INDEX"

    .line 21
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result p2

    .line 25
    const-string v1, "NetworkPolicy"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v3, "mCarrierConfigReceiver() - subId: "

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v3, ", slotId: "

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 55
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 58
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 60
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 62
    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 65
    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 67
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 70
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 79
    if-eqz v3, :cond_1

    .line 81
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 83
    invoke-virtual {p1, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 86
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 88
    invoke-virtual {p1, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    .line 91
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 93
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const-string p2, "NetworkPolicy"

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 124
    iget-boolean p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 126
    if-eqz p2, :cond_2

    .line 128
    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;

    .line 132
    invoke-direct {v3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 135
    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 140
    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 144
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    return-void

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    goto :goto_2

    .line 149
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    throw p0

    .line 151
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    throw p0
.end method

.method private final onReceive$com$android$server$net$NetworkPolicyManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.extra.UID"

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    move-result p2

    .line 12
    if-ne p2, v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_9

    .line 23
    sget-boolean p1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 25
    if-eqz p1, :cond_1

    .line 27
    const-string p1, "NetworkPolicy"

    .line 29
    const-string v0, "ACTION_PACKAGE_ADDED for uid="

    .line 31
    invoke-static {p2, v0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 36
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 41
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 43
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 46
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 48
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x1

    .line 52
    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p0, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, v3, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {p0, v3, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 74
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 77
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 79
    if-eqz v0, :cond_7

    .line 81
    invoke-virtual {p0, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 84
    move-result v0

    .line 85
    const/4 v4, 0x3

    .line 86
    if-nez v0, :cond_6

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {p0, v4, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    :goto_2
    invoke-virtual {p0, v4, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 102
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 104
    if-eqz v0, :cond_8

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForBackgroundUL(I)V

    .line 109
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeForUidUL(I)V

    .line 112
    invoke-virtual {p0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 118
    monitor-exit p1

    .line 119
    goto :goto_4

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0

    .line 123
    :cond_9
    :goto_4
    return-void
.end method

.method private final onReceive$com$android$server$net$NetworkPolicyManagerService$7(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string p1, "android.intent.extra.UID"

    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "android.intent.extra.REPLACING"

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p2, v0, :cond_1

    .line 21
    const-string p0, "NetworkPolicy"

    .line 23
    const-string/jumbo p1, "do not remove any uid policy and update rules in case of replacing"

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 30
    :cond_1
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 32
    if-eqz p2, :cond_2

    .line 34
    const-string p2, "NetworkPolicy"

    .line 36
    const-string v0, "ACTION_UID_REMOVED for uid="

    .line 38
    invoke-static {p1, v0, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_2
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 43
    monitor-enter p2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 51
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 60
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->writeFirewallPolicyAL()V

    .line 63
    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 66
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 69
    iget-object v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 71
    monitor-enter v0

    .line 72
    :try_start_1
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 74
    invoke-static {p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$monUidDeletedUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 77
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 79
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 81
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 87
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    :try_start_5
    throw p0

    .line 95
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    throw p0

    .line 97
    :catchall_2
    move-exception p0

    .line 98
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 99
    throw p0
.end method

.method private final onReceive$com$android$server$net$NetworkPolicyManagerService$8(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.extra.user_handle"

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    move-result p2

    .line 12
    if-ne p2, v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    const-string v0, "android.intent.action.USER_ADDED"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 37
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, p2, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZZ)Z

    .line 47
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 49
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    const-string v1, "android.intent.action.USER_ADDED"

    .line 56
    if-ne p1, v1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 60
    invoke-virtual {p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 68
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 70
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 76
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :goto_1
    return-void

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :try_start_4
    throw p0

    .line 82
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    throw p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo p2, "com.samsung.intent.action.OMC_CHANGED"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 22
    move-result-object p1

    .line 23
    const-string p2, "CscFeature_Settings_DisabledDataSaver"

    .line 25
    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 33
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 35
    if-eqz p1, :cond_0

    .line 37
    const-string p1, "NetworkPolicy"

    .line 39
    const-string p2, "Need to show notification about data saver disabled"

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance p2, Landroid/app/Notification$Builder;

    .line 51
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 53
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 55
    invoke-direct {p2, v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 62
    const-wide/16 v1, 0x0

    .line 64
    invoke-virtual {p2, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 67
    iget-object v1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 69
    const v2, 0x106001c

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 79
    iget-object v1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v1

    .line 85
    const v2, 0x104040a

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 91
    move-result-object v3

    .line 92
    const v4, 0x1040409

    .line 95
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 102
    const v0, 0x1080078

    .line 105
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 108
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 111
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 114
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 117
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 119
    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 129
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 131
    const-class v0, Landroid/app/NotificationManager;

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/app/NotificationManager;

    .line 139
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 142
    move-result-object p2

    .line 143
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 149
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 151
    const/4 p1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 155
    :cond_0
    return-void

    .line 156
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$8(Landroid/content/Context;Landroid/content/Intent;)V

    .line 159
    return-void

    .line 160
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$7(Landroid/content/Context;Landroid/content/Intent;)V

    .line 163
    return-void

    .line 164
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    return-void

    .line 168
    :pswitch_3
    const-string/jumbo p1, "phone"

    .line 171
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 175
    move-result p1

    .line 176
    const-string/jumbo p2, "mDdsChangedReceiver() - phoneId: "

    .line 179
    const-string v0, ", mDefaultDataPhoneId: "

    .line 181
    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-result-object p2

    .line 185
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 187
    iget v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 189
    const-string v1, "NetworkPolicy"

    .line 191
    invoke-static {p2, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 196
    iget p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 198
    if-ne p2, p1, :cond_1

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 203
    :goto_0
    return-void

    .line 204
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 206
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 208
    const/4 v0, 0x6

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 212
    move-result-object p1

    .line 213
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    const-string v1, "android.os.action.CHARGING"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_2

    .line 227
    const/4 p2, 0x1

    .line 228
    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 232
    move-result-object p2

    .line 233
    const-string v0, "android.os.action.DISCHARGING"

    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    const/4 p2, 0x0

    .line 239
    :goto_1
    const-string v0, "ChargingState: new("

    .line 241
    const-string v1, "), old("

    .line 243
    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 249
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ")"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    const-string v1, "NetworkPolicy"

    .line 265
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 270
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 272
    if-eq p2, v0, :cond_3

    .line 274
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 276
    if-eqz p1, :cond_3

    .line 278
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 280
    const/16 p1, 0x3ed

    .line 282
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    :cond_3
    return-void

    .line 290
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$15(Landroid/content/Context;Landroid/content/Intent;)V

    .line 293
    return-void

    .line 294
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 296
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 299
    const-string/jumbo p1, "networkInfo"

    .line 302
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 305
    move-result-object p1

    .line 306
    check-cast p1, Landroid/net/NetworkInfo;

    .line 308
    if-eqz p1, :cond_4

    .line 310
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_4

    .line 316
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 321
    move-result v0

    .line 322
    iput v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 324
    goto :goto_2

    .line 325
    :cond_4
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 327
    const/4 v0, -0x1

    .line 328
    iput v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 330
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v0, "mActiveNetworkType : "

    .line 335
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 340
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 342
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    const-string p0, ", networkInfo : "

    .line 347
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object p0

    .line 357
    const-string p1, "NetworkPolicy"

    .line 359
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 363
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    new-instance p2, Landroid/util/ArrayMap;

    .line 370
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 373
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 375
    monitor-enter v0

    .line 376
    const/4 v1, 0x0

    .line 377
    move v2, v1

    .line 378
    :goto_3
    :try_start_0
    iget-object v3, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 380
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 383
    move-result v3

    .line 384
    if-ge v2, v3, :cond_7

    .line 386
    iget-object v3, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 388
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Landroid/net/NetworkPolicy;

    .line 394
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 396
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 399
    move-result v4

    .line 400
    const/4 v5, 0x4

    .line 401
    if-ne v4, v5, :cond_6

    .line 403
    iget-boolean v4, v3, Landroid/net/NetworkPolicy;->inferred:Z

    .line 405
    if-nez v4, :cond_6

    .line 407
    iget-object v4, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 409
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 412
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 414
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    .line 417
    move-result-object v4

    .line 418
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_5

    .line 424
    const/4 v4, 0x0

    .line 425
    goto :goto_4

    .line 426
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 429
    move-result-object v4

    .line 430
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Ljava/lang/String;

    .line 436
    :goto_4
    iget-boolean v3, v3, Landroid/net/NetworkPolicy;->metered:Z

    .line 438
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {p2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    goto :goto_3

    .line 446
    :catchall_0
    move-exception p0

    .line 447
    goto/16 :goto_9

    .line 449
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 451
    goto :goto_3

    .line 452
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_8

    .line 459
    goto :goto_7

    .line 460
    :cond_8
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 462
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 464
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 470
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 473
    move-result-object v2

    .line 474
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 477
    move-result v3

    .line 478
    if-ge v1, v3, :cond_c

    .line 480
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    move-result-object v3

    .line 484
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 486
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getAllNetworkKeys()Ljava/util/Set;

    .line 489
    move-result-object v4

    .line 490
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 493
    move-result-object v4

    .line 494
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    move-result v5

    .line 498
    if-eqz v5, :cond_b

    .line 500
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    move-result-object v5

    .line 504
    check-cast v5, Ljava/lang/String;

    .line 506
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    move-result-object v6

    .line 510
    check-cast v6, Ljava/lang/Boolean;

    .line 512
    if-eqz v6, :cond_9

    .line 514
    const-string v4, "NetworkPolicy"

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    .line 518
    const-string v8, "Found network "

    .line 520
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v5, "; upgrading metered hint"

    .line 528
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    move-result-object v5

    .line 535
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_a

    .line 544
    const/4 v4, 0x1

    .line 545
    goto :goto_6

    .line 546
    :cond_a
    const/4 v4, 0x2

    .line 547
    :goto_6
    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 549
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 552
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 554
    goto :goto_5

    .line 555
    :cond_c
    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 557
    monitor-enter p2

    .line 558
    :try_start_1
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 560
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 561
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 564
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 565
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 566
    :goto_7
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 568
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 570
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    return-void

    .line 574
    :catchall_1
    move-exception p0

    .line 575
    goto :goto_8

    .line 576
    :catchall_2
    move-exception p0

    .line 577
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 578
    :try_start_5
    throw p0

    .line 579
    :goto_8
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 580
    throw p0

    .line 581
    :goto_9
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 582
    throw p0

    .line 583
    :pswitch_8
    const-string p1, "android.net.NETWORK_TEMPLATE"

    .line 585
    const-class v0, Landroid/net/NetworkTemplate;

    .line 587
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 590
    move-result-object p1

    .line 591
    check-cast p1, Landroid/net/NetworkTemplate;

    .line 593
    const-string/jumbo v0, "com.android.server.net.action.SNOOZE_WARNING"

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_d

    .line 606
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 608
    const/16 p2, 0x22

    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    .line 613
    goto :goto_a

    .line 614
    :cond_d
    const-string/jumbo v0, "com.android.server.net.action.SNOOZE_RAPID"

    .line 617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    move-result v0

    .line 625
    if-eqz v0, :cond_e

    .line 627
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 629
    const/16 p2, 0x2d

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    .line 634
    goto :goto_a

    .line 635
    :cond_e
    const-string/jumbo p1, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 641
    move-result-object p2

    .line 642
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    move-result p1

    .line 646
    if-eqz p1, :cond_f

    .line 648
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 650
    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 652
    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    .line 655
    move-result-wide v0

    .line 656
    iput-wide v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    .line 658
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 660
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 662
    const/16 p1, 0x3ef

    .line 664
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 667
    move-result-object p0

    .line 668
    const/4 p1, 0x0

    .line 669
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 671
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 674
    :cond_f
    :goto_a
    return-void

    .line 675
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 677
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 679
    monitor-enter p1

    .line 680
    :try_start_7
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 682
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveAllowlistUL()V

    .line 685
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 687
    iget-boolean v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 689
    if-eqz v0, :cond_10

    .line 691
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForBackgroundChainUL()V

    .line 694
    :cond_10
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 696
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 699
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 701
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 704
    monitor-exit p1

    .line 705
    return-void

    .line 706
    :catchall_3
    move-exception p0

    .line 707
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 708
    throw p0

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
