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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onReceive$com$android$server$net$NetworkPolicyManagerService$15(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "Missing subscriberId for subId "

    .line 2
    .line 3
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v2, "android.telephony.extra.SLOT_INDEX"

    .line 20
    .line 21
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const-string v1, "NetworkPolicy"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v3, "mCarrierConfigReceiver() - subId: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ", slotId: "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 82
    .line 83
    invoke-virtual {p1, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 87
    .line 88
    invoke-virtual {p1, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
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

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :goto_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 123
    .line 124
    iget-boolean p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 125
    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 129
    .line 130
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;

    .line 131
    .line 132
    invoke-direct {v3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 142
    .line 143
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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.extra.UID"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-ne p2, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_9

    .line 22
    .line 23
    sget-boolean p1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p1, "NetworkPolicy"

    .line 28
    .line 29
    const-string v0, "ACTION_PACKAGE_ADDED for uid="

    .line 30
    .line 31
    invoke-static {p2, v0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x1

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, v3, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {p0, v3, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 75
    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    invoke-virtual {p0, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v4, 0x3

    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {p0, v4, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    :goto_2
    invoke-virtual {p0, v4, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForBackgroundUL(I)V

    .line 107
    .line 108
    .line 109
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeForUidUL(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 116
    .line 117
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

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "android.intent.extra.REPLACING"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    const-string p0, "NetworkPolicy"

    .line 22
    .line 23
    const-string/jumbo p1, "do not remove any uid policy and update rules in case of replacing"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const-string p2, "NetworkPolicy"

    .line 35
    .line 36
    const-string v0, "ACTION_UID_REMOVED for uid="

    .line 37
    .line 38
    invoke-static {p1, v0, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->writeFirewallPolicyAL()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 64
    .line 65
    .line 66
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 68
    .line 69
    iget-object v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v0

    .line 72
    :try_start_1
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 73
    .line 74
    invoke-static {p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$monUidDeletedUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 85
    .line 86
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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.extra.user_handle"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-ne p2, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "android.intent.action.USER_ADDED"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, p2, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZZ)Z

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 52
    .line 53
    .line 54
    const-string v1, "android.intent.action.USER_ADDED"

    .line 55
    .line 56
    if-ne p1, v1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    .line 61
    .line 62
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

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 74
    .line 75
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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo p2, "com.samsung.intent.action.OMC_CHANGED"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "CscFeature_Settings_DisabledDataSaver"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 32
    .line 33
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const-string p1, "NetworkPolicy"

    .line 38
    .line 39
    const-string p2, "Need to show notification about data saver disabled"

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/app/Notification$Builder;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {p2, v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 60
    .line 61
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .line 64
    invoke-virtual {p2, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const v2, 0x106001c

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const v2, 0x104040a

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const v4, 0x1040409

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 100
    .line 101
    .line 102
    const v0, 0x1080078

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 115
    .line 116
    .line 117
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 118
    .line 119
    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    const-class v0, Landroid/app/NotificationManager;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/app/NotificationManager;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 150
    .line 151
    const/4 p1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 153
    .line 154
    .line 155
    :cond_0
    return-void

    .line 156
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$8(Landroid/content/Context;Landroid/content/Intent;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$7(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_3
    const-string/jumbo p1, "phone"

    .line 169
    .line 170
    .line 171
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    const-string/jumbo p2, "mDdsChangedReceiver() - phoneId: "

    .line 177
    .line 178
    .line 179
    const-string v0, ", mDefaultDataPhoneId: "

    .line 180
    .line 181
    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 186
    .line 187
    iget v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 188
    .line 189
    const-string v1, "NetworkPolicy"

    .line 190
    .line 191
    invoke-static {p2, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 195
    .line 196
    iget p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 197
    .line 198
    if-ne p2, p1, :cond_1

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_1
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 202
    .line 203
    :goto_0
    return-void

    .line 204
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 205
    .line 206
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 207
    .line 208
    const/4 v0, 0x6

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v1, "android.os.action.CHARGING"

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_2

    .line 226
    .line 227
    const/4 p2, 0x1

    .line 228
    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    const-string v0, "android.os.action.DISCHARGING"

    .line 234
    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    const/4 p2, 0x0

    .line 239
    :goto_1
    const-string v0, "ChargingState: new("

    .line 240
    .line 241
    const-string v1, "), old("

    .line 242
    .line 243
    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 248
    .line 249
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ")"

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v1, "NetworkPolicy"

    .line 264
    .line 265
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 269
    .line 270
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 271
    .line 272
    if-eq p2, v0, :cond_3

    .line 273
    .line 274
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 275
    .line 276
    if-eqz p1, :cond_3

    .line 277
    .line 278
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 279
    .line 280
    const/16 p1, 0x3ed

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    .line 288
    .line 289
    :cond_3
    return-void

    .line 290
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$5;->onReceive$com$android$server$net$NetworkPolicyManagerService$15(Landroid/content/Context;Landroid/content/Intent;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 297
    .line 298
    .line 299
    const-string/jumbo p1, "networkInfo"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    check-cast p1, Landroid/net/NetworkInfo;

    .line 307
    .line 308
    if-eqz p1, :cond_4

    .line 309
    .line 310
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_4

    .line 315
    .line 316
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iput v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_4
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 326
    .line 327
    const/4 v0, -0x1

    .line 328
    iput v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 329
    .line 330
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string/jumbo v0, "mActiveNetworkType : "

    .line 333
    .line 334
    .line 335
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 339
    .line 340
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 341
    .line 342
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string p0, ", networkInfo : "

    .line 346
    .line 347
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    const-string p1, "NetworkPolicy"

    .line 358
    .line 359
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance p2, Landroid/util/ArrayMap;

    .line 369
    .line 370
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 371
    .line 372
    .line 373
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 374
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

    .line 379
    .line 380
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-ge v2, v3, :cond_7

    .line 385
    .line 386
    iget-object v3, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 387
    .line 388
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Landroid/net/NetworkPolicy;

    .line 393
    .line 394
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 395
    .line 396
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    const/4 v5, 0x4

    .line 401
    if-ne v4, v5, :cond_6

    .line 402
    .line 403
    iget-boolean v4, v3, Landroid/net/NetworkPolicy;->inferred:Z

    .line 404
    .line 405
    if-nez v4, :cond_6

    .line 406
    .line 407
    iget-object v4, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 408
    .line 409
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 413
    .line 414
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_5

    .line 423
    .line 424
    const/4 v4, 0x0

    .line 425
    goto :goto_4

    .line 426
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Ljava/lang/String;

    .line 435
    .line 436
    :goto_4
    iget-boolean v3, v3, Landroid/net/NetworkPolicy;->metered:Z

    .line 437
    .line 438
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {p2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    goto :goto_3

    .line 446
    :catchall_0
    move-exception p0

    .line 447
    goto/16 :goto_9

    .line 448
    .line 449
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_8

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_8
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 461
    .line 462
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 463
    .line 464
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 469
    .line 470
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-ge v1, v3, :cond_c

    .line 479
    .line 480
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 485
    .line 486
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getAllNetworkKeys()Ljava/util/Set;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    if-eqz v5, :cond_b

    .line 499
    .line 500
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    check-cast v5, Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    check-cast v6, Ljava/lang/Boolean;

    .line 511
    .line 512
    if-eqz v6, :cond_9

    .line 513
    .line 514
    const-string v4, "NetworkPolicy"

    .line 515
    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v8, "Found network "

    .line 519
    .line 520
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v5, "; upgrading metered hint"

    .line 527
    .line 528
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_a

    .line 543
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

    .line 548
    .line 549
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 550
    .line 551
    .line 552
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_c
    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 556
    .line 557
    monitor-enter p2

    .line 558
    :try_start_1
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 559
    .line 560
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 561
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 562
    .line 563
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

    .line 567
    .line 568
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 569
    .line 570
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    .line 572
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

    .line 584
    .line 585
    const-class v0, Landroid/net/NetworkTemplate;

    .line 586
    .line 587
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    check-cast p1, Landroid/net/NetworkTemplate;

    .line 592
    .line 593
    const-string/jumbo v0, "com.android.server.net.action.SNOOZE_WARNING"

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_d

    .line 605
    .line 606
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 607
    .line 608
    const/16 p2, 0x22

    .line 609
    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    .line 611
    .line 612
    .line 613
    goto :goto_a

    .line 614
    :cond_d
    const-string/jumbo v0, "com.android.server.net.action.SNOOZE_RAPID"

    .line 615
    .line 616
    .line 617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-eqz v0, :cond_e

    .line 626
    .line 627
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 628
    .line 629
    const/16 p2, 0x2d

    .line 630
    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    .line 632
    .line 633
    .line 634
    goto :goto_a

    .line 635
    :cond_e
    const-string/jumbo p1, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object p2

    .line 642
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    if-eqz p1, :cond_f

    .line 647
    .line 648
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 649
    .line 650
    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 651
    .line 652
    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    .line 653
    .line 654
    .line 655
    move-result-wide v0

    .line 656
    iput-wide v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    .line 657
    .line 658
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 659
    .line 660
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 661
    .line 662
    const/16 p1, 0x3ef

    .line 663
    .line 664
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 665
    .line 666
    .line 667
    move-result-object p0

    .line 668
    const/4 p1, 0x0

    .line 669
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 670
    .line 671
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 672
    .line 673
    .line 674
    :cond_f
    :goto_a
    return-void

    .line 675
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 676
    .line 677
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 678
    .line 679
    monitor-enter p1

    .line 680
    :try_start_7
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 681
    .line 682
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveAllowlistUL()V

    .line 683
    .line 684
    .line 685
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 686
    .line 687
    iget-boolean v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 688
    .line 689
    if-eqz v0, :cond_10

    .line 690
    .line 691
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForBackgroundChainUL()V

    .line 692
    .line 693
    .line 694
    :cond_10
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 695
    .line 696
    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 697
    .line 698
    .line 699
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 700
    .line 701
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 702
    .line 703
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
