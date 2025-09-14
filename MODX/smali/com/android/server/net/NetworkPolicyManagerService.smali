.class public final Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

.field public static final KEY_OFF_PEAK_DATA_END_TIME:Ljava/lang/String;

.field public static final KEY_OFF_PEAK_DATA_LIMIT:Ljava/lang/String;

.field public static final KEY_OFF_PEAK_DATA_START_TIME:Ljava/lang/String;

.field public static final KEY_OFF_PEAK_DATA_SWITCH:Ljava/lang/String;

.field public static final KEY_ONLY_SHOW_LIMIT_ALERT:Ljava/lang/String;

.field public static final KEY_SM_EXTRAS_SUBID:Ljava/lang/String;

.field public static final KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String;

.field public static final KEY_SM_PROVIDER_METHOR_UPDATE_ALARM:Ljava/lang/String;

.field public static final KEY_SM_PROVIDER_METHOR_UPDATE_POLICY:Ljava/lang/String;

.field public static final KEY_UNLIMITED_DATA_PLAN_WARN_SWITCH:Ljava/lang/String;

.field public static final KEY_USAGE_PLAN_LIST:Ljava/lang/String;

.field public static final LOGD:Z

.field public static final LOGV:Z

.field public static final QUOTA_UNLIMITED_DEFAULT:J

.field public static final TYPE_LIMIT:I = 0x23

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24

.field public static final TYPE_RAPID:I = 0x2d

.field public static final TYPE_WARNING:I = 0x22

.field static final UID_MSG_STATE_CHANGED:I = 0x64

.field public static final isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final mFirewallPoliciesLock:Ljava/lang/Object;

.field public static final mFirewallRules:Landroid/util/SparseIntArray;

.field public static mIsDisabledDataSaver:Z


# instance fields
.field public volatile isOffPeakObserverRegisted:Landroid/util/SparseArray;

.field public final mActiveDataSubIdListener:Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

.field public mActiveNetworkType:I

.field public final mActiveNotifs:Landroid/util/ArraySet;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAlertObserver:Lcom/android/server/net/NetworkPolicyManagerService$13;

.field public final mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mBackgroundNetworkRestricted:Z

.field mBackgroundRestrictionDelayMs:J

.field mBackgroundRestrictionLongDelayMs:J

.field mBackgroundRestrictionShortDelayMs:J

.field public final mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

.field public mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final mCarrierConfigReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public mChargingState:Z

.field public final mChargingStateReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mClock:Ljava/time/Clock;

.field public mConnManager:Landroid/net/ConnectivityManager;

.field public final mConnReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mContext:Landroid/content/Context;

.field public final mDdsChangedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public mDefaultDataPhoneId:I

.field public final mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

.field public final mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

.field public volatile mDeviceIdleMode:Z

.field public final mDisabledDataSaverReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field public final mFirewallPolicyFile:Landroid/util/AtomicFile;

.field public final mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerCallback:Lcom/android/server/net/NetworkPolicyManagerService$16;

.field public mHasEpdgCall:Z

.field public final mIPm:Landroid/content/pm/IPackageManager;

.field public final mInternetPermissionMap:Landroid/util/SparseBooleanArray;

.field public volatile mIsVideoCall:Z

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public mLoadedRestrictBackground:Z

.field public final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field public volatile mLowPowerStandbyActive:Z

.field public final mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

.field public mMergedSubscriberIds:Ljava/util/List;

.field public mMeteredIfaces:Landroid/util/ArraySet;

.field public final mMeteredIfacesLock:Ljava/lang/Object;

.field public final mMeteredRestrictedUids:Landroid/util/SparseArray;

.field public final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

.field public final mNetIdToSubId:Landroid/util/SparseIntArray;

.field public final mNetworkCallback:Lcom/android/server/net/NetworkPolicyManagerService$12;

.field public final mNetworkManager:Landroid/os/INetworkManagementService;

.field public volatile mNetworkManagerReady:Z

.field public final mNetworkMetered:Landroid/util/SparseBooleanArray;

.field public final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field public final mNetworkPolicy:Landroid/util/ArrayMap;

.field public final mNetworkRoaming:Landroid/util/SparseBooleanArray;

.field public final mNetworkStats:Landroid/app/usage/NetworkStatsManager;

.field public final mNetworkToIfaces:Landroid/util/SparseSetArray;

.field public mNextProcessBackgroundUidsTime:J

.field public mOffPeakContentObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

.field public final mOverLimitNotified:Landroid/util/ArraySet;

.field public final mPackageReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mPolicyFile:Landroid/util/AtomicFile;

.field public final mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mPowerSaveAllowlistReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field public volatile mRestrictBackground:Z

.field public final mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

.field public mRestrictBackgroundBeforeBsm:Z

.field public volatile mRestrictBackgroundChangedInBsm:Z

.field public mRestrictBackgroundLowPowerMode:Z

.field public volatile mRestrictPower:Z

.field public volatile mRestrictedNetworkingMode:Z

.field public mSetSubscriptionPlansIdCounter:I

.field public final mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

.field public final mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field public final mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

.field public final mSubIdToCarrierConfig:Landroid/util/SparseArray;

.field public final mSubIdToSubscriberId:Landroid/util/SparseArray;

.field public final mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

.field public final mSubscriptionPlans:Landroid/util/SparseArray;

.field public final mSubscriptionPlansOwner:Landroid/util/SparseArray;

.field public final mSupportSmartManagerForChina:Z

.field public final mSuppressDefaultPolicy:Z

.field public volatile mSystemReady:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mTetherListener:Lcom/android/server/net/NetworkPolicyManagerService$19;

.field public mTetheringNotiSnooze:J

.field public mTetheringState:Z

.field public final mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

.field public mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

.field public final mTmpUidBlockedState:Landroid/util/SparseArray;

.field public final mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mUidBlockedState:Landroid/util/SparseArray;

.field final mUidEventHandler:Landroid/os/Handler;

.field public final mUidEventHandlerCallback:Lcom/android/server/net/NetworkPolicyManagerService$16;

.field public final mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidObserver:Lcom/android/server/net/NetworkPolicyManagerService$4;

.field public final mUidPolicy:Landroid/util/SparseIntArray;

.field public final mUidRemovedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public final mUidRulesFirstLock:Ljava/lang/Object;

.field public final mUidState:Landroid/util/SparseArray;

.field public final mUidStateCallbackInfos:Landroid/util/SparseArray;

.field public mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUseMeteredFirewallChains:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public mVideoCallLimitAlreadySent:Z

.field public mVideoCallWarningAlreadySent:Z

.field public final mWifiReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

.field public preTotalBytes:J


# direct methods
.method public static -$$Nest$monUidDeletedUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 21
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 23
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 26
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 31
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 33
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 36
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 41
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 46
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 48
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 51
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 53
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 56
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 58
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 61
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 63
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 68
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 71
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 73
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 76
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 78
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 81
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 83
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 86
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 88
    monitor-enter v2

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 91
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 97
    const/16 v0, 0xf

    .line 99
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    throw p0

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    throw p0
.end method

.method public static -$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object v3

    .line 31
    const v4, 0x402000

    .line 34
    invoke-virtual {v3, v2, v4, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 37
    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    const/4 v2, -0x1

    .line 40
    :goto_1
    if-ltz v2, :cond_0

    .line 42
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/util/Set;

    .line 60
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p0
.end method

.method public static -$$Nest$msetNetworkTemplateEnabledInner(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 14
    move-result v0

    .line 15
    const/16 v2, 0xa

    .line 17
    if-ne v0, v2, :cond_3

    .line 19
    :cond_0
    new-instance v0, Landroid/util/IntArray;

    .line 21
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 26
    monitor-enter v2

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 34
    move-result v5

    .line 35
    if-ge v4, v5, :cond_2

    .line 37
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    move-result v5

    .line 43
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Ljava/lang/String;

    .line 51
    new-instance v7, Landroid/net/NetworkIdentity$Builder;

    .line 53
    invoke-direct {v7}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 56
    invoke-virtual {v7, v3}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v7, v6}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6, v1}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6, v1}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6, v5}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {p1, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_1

    .line 86
    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 98
    const-class p1, Landroid/telephony/TelephonyManager;

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 106
    :goto_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 109
    move-result p1

    .line 110
    if-ge v3, p1, :cond_3

    .line 112
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->get(I)I

    .line 115
    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(Z)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    return-void

    .line 127
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0
.end method

.method public static -$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 19
    move-result v0

    .line 20
    if-gez v0, :cond_1

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    :cond_1
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 32
    :cond_2
    return v1
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 3
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 5
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 7
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 16
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 18
    const-wide/16 v1, 0x14

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 23
    move-result-wide v0

    .line 24
    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    .line 26
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 29
    new-instance v0, Landroid/util/SparseIntArray;

    .line 31
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 34
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 41
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    const-string/jumbo v0, "unlimited_data_plan_warn_switch"

    .line 46
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_UNLIMITED_DATA_PLAN_WARN_SWITCH:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "usage_plan_choose"

    .line 51
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_USAGE_PLAN_LIST:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "off_peak_start_time"

    .line 56
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_START_TIME:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "off_peak_end_time"

    .line 61
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_END_TIME:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "off_peak_data_switch"

    .line 66
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_SWITCH:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "is_in_off_peak_time"

    .line 71
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "off_peak_data_limit"

    .line 76
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_LIMIT:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "content://com.samsung.android.sm.dcapi"

    .line 81
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "subId"

    .line 86
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_EXTRAS_SUBID:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "updatePolicyFromSM"

    .line 91
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_POLICY:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "updateAlarmFromSM"

    .line 96
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_ALARM:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "only_show_limit_alert"

    .line 101
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_ONLY_SHOW_LIMIT_ALERT:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;ZLcom/android/server/net/NetworkPolicyManagerService$Dependencies;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundRestrictionDelayMs:J

    const-wide/16 v1, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundRestrictionShortDelayMs:J

    const-wide/16 v1, 0x14

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundRestrictionLongDelayMs:J

    const-wide v0, 0x7fffffffffffffffL

    .line 17
    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNextProcessBackgroundUidsTime:J

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 23
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 24
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 25
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 26
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 27
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 28
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 29
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 30
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 31
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 32
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 33
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 34
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 35
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 36
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 37
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 38
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 39
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 41
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 42
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 43
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 46
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    .line 47
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 48
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 49
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 50
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 51
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 54
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 55
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 56
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 57
    new-instance v1, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v1}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 58
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 59
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakObserverRegisted:Landroid/util/SparseArray;

    .line 69
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 73
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v2, "updateNetworkEnabledNL()"

    const-string/jumbo v3, "isUidNetworkingBlocked()"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 74
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Lcom/android/server/net/NetworkPolicyManagerService$4;

    .line 75
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveAllowlistReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 76
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 77
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 78
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 79
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDisabledDataSaverReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 80
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 81
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 82
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 83
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Lcom/android/server/net/NetworkPolicyManagerService$12;

    .line 84
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Lcom/android/server/net/NetworkPolicyManagerService$13;

    .line 85
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 86
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 87
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$16;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 88
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$16;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 89
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 90
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetherListener:Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 91
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$5;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDdsChangedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 92
    const-string/jumbo v3, "missing context"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 93
    const-string/jumbo v3, "missing activityManager"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string/jumbo p2, "missing networkManagement"

    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 95
    const-class p2, Landroid/os/PowerExemptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerExemptionManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 96
    const-string/jumbo p2, "missing Clock"

    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 97
    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 98
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 99
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 100
    const-string p2, "NetworkPolicy"

    .line 101
    invoke-static {p2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p2

    .line 102
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 103
    const-string p2, "NetworkPolicy.uid"

    const/4 p4, -0x2

    .line 104
    invoke-static {p4, p2, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object p2

    .line 105
    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 106
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 107
    const-string/jumbo p2, "missing Dependencies"

    invoke-static {p8, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 108
    new-instance p2, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

    invoke-direct {p2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveDataSubIdListener:Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

    .line 109
    new-instance p2, Landroid/util/AtomicFile;

    new-instance p4, Ljava/io/File;

    const-string/jumbo p5, "netpolicy.xml"

    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p5, "net-policy"

    invoke-direct {p2, p4, p5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 110
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    const-string p4, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {p2, p4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 111
    const-string/jumbo p4, "com.samsung.android.sm_cn"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 112
    new-instance p2, Landroid/util/AtomicFile;

    new-instance p4, Ljava/io/File;

    const-string/jumbo p5, "firewallpolicy.xml"

    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p5, "firewall-policy"

    invoke-direct {p2, p4, p5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    .line 113
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result p2

    sput-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 114
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 115
    const-class p2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/NetworkStatsManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 116
    new-instance p2, Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p2, p1, p3}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 117
    new-instance p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const-class p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/server/net/NetworkManagementService;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 2
    new-instance v5, Landroid/os/BestClock;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/time/Clock;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v5, v0, v1}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 4
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    invoke-direct {v8, p1}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;ZLcom/android/server/net/NetworkPolicyManagerService$Dependencies;)V

    return-void
.end method

.method public static varargs addAll(Landroid/util/ArraySet;[I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_0

    .line 6
    aget v2, p1, v1

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    and-int/2addr v0, v2

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v0
.end method

.method public static buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 11
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const v1, 0x1040302

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    const/high16 p0, 0x10000000

    .line 22
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    const-string p0, "android.net.NETWORK_TEMPLATE"

    .line 27
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    return-object v0
.end method

.method public static collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public static getOrCreateUidBlockedStateForUid(ILandroid/util/SparseArray;)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 11
    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>()V

    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    :cond_0
    return-object v0
.end method

.method public static isDataSaverDisabledByCscFeature()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CscFeature_Settings_DisabledDataSaver"

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public static isKorOperator()Z
    .locals 13

    .line 1
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 4
    const-string v1, "NONE"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v9, "LGT"

    .line 12
    const-string v10, "LUO"

    .line 14
    const-string v1, "SKC"

    .line 16
    const-string v2, "KTC"

    .line 18
    const-string v3, "LUC"

    .line 20
    const-string v4, "KOO"

    .line 22
    const-string v5, "SKT"

    .line 24
    const-string v6, "SKO"

    .line 26
    const-string v7, "KTT"

    .line 28
    const-string v8, "KTO"

    .line 30
    const-string v11, "K06"

    .line 32
    const-string v12, "K01"

    .line 34
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda7;

    .line 48
    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public static isNaGsm(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    .line 8
    const-string v3, ""

    .line 10
    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v2, "ALL"

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    const-string p0, "GSM-USA"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 33
    return v3

    .line 34
    :cond_0
    const-string v2, "ATT"

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 42
    const-string v2, "TMO"

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 50
    const-string v2, "MTR"

    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 58
    const-string v2, "ASR"

    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 66
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_2

    .line 74
    return v3

    .line 75
    :cond_2
    return v1
.end method

.method public static normalizeTemplate(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [Ljava/lang/String;

    .line 28
    new-instance v1, Landroid/util/ArraySet;

    .line 30
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 36
    move-result v2

    .line 37
    array-length v3, v0

    .line 38
    if-eq v2, v3, :cond_2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "Duplicated merged list detected: "

    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    const-string v3, "NetworkPolicy"

    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v2

    .line 71
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/lang/String;

    .line 83
    invoke-static {v0, v3}, Lcom/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 89
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    .line 91
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 94
    move-result v0

    .line 95
    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 98
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMeteredness()I

    .line 113
    move-result p0

    .line 114
    invoke-virtual {p1, p0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 121
    move-result-object p0

    .line 122
    :cond_4
    return-object p0
.end method

.method public static updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 18
    move-result v2

    .line 19
    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public static writeNetstatsFiles()V
    .locals 10

    .line 1
    const-string v0, "NetworkPolicy"

    .line 3
    const-string v1, "Copy netStats files"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 10
    const-string v2, "/data/log/netstats"

    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v3, v2, [Ljava/nio/file/LinkOption;

    .line 22
    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 28
    const-string v3, "Dir doesn\'t exists. Make dir."

    .line 30
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    .line 35
    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 43
    const-string v4, "/data/misc/apexdata/com.android.tethering/netstats"

    .line 45
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 57
    move-result-object v3

    .line 58
    array-length v4, v3

    .line 59
    move v5, v2

    .line 60
    :goto_1
    if-ge v5, v4, :cond_1

    .line 62
    aget-object v6, v3, v5

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    invoke-interface {v1, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 75
    move-result-object v6

    .line 76
    const/4 v8, 0x1

    .line 77
    new-array v8, v8, [Ljava/nio/file/CopyOption;

    .line 79
    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 81
    aput-object v9, v8, v2

    .line 83
    invoke-static {v6, v7, v8}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 88
    goto :goto_1

    .line 89
    :goto_2
    const-string/jumbo v2, "writeNetstatsFiles, Copy error: "

    .line 92
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public final addDefaultRestrictBackgroundAllowlistUidsUL(I)Z
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v2

    .line 17
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 19
    move v3, v1

    .line 20
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 23
    move-result v4

    .line 24
    if-ge v1, v4, :cond_7

    .line 26
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 32
    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 34
    const-string v6, "NetworkPolicy"

    .line 36
    if-eqz v5, :cond_1

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v8, "checking restricted background exemption for package "

    .line 43
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v8, " and user "

    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v7

    .line 61
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    const/high16 v7, 0x100000

    .line 66
    :try_start_0
    invoke-virtual {v2, v4, v7, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 69
    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_2

    .line 76
    const-string v8, "addDefaultRestrictBackgroundAllowlistUidsUL(): skipping non-privileged app  "

    .line 78
    invoke-static {v8, v4, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 83
    invoke-static {p1, v7}, Landroid/os/UserHandle;->getUid(II)I

    .line 86
    move-result v7

    .line 87
    if-nez v7, :cond_3

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 92
    const/4 v9, 0x1

    .line 93
    invoke-virtual {v8, v7, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 96
    const/16 v8, 0xa

    .line 98
    invoke-virtual {p0, v8, v7, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 101
    if-eqz v5, :cond_4

    .line 103
    const-string v8, "Adding uid "

    .line 105
    const-string v10, " (user "

    .line 107
    const-string v11, ") to default restricted background allowlist. Revoked status: "

    .line 109
    invoke-static {v7, p1, v8, v10, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object v8

    .line 113
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 115
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 118
    move-result v10

    .line 119
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v8

    .line 126
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 131
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 134
    move-result v8

    .line 135
    if-nez v8, :cond_6

    .line 137
    if-eqz v5, :cond_5

    .line 139
    const-string v3, "adding default package "

    .line 141
    const-string v5, " (uid "

    .line 143
    const-string v8, " for user "

    .line 145
    invoke-static {v7, v3, v4, v5, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    move-result-object v3

    .line 149
    const-string v4, ") to restrict background allowlist"

    .line 151
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_5
    const/4 v3, 0x4

    .line 155
    invoke-virtual {p0, v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(II)V

    .line 158
    move v3, v9

    .line 159
    goto :goto_1

    .line 160
    :catch_0
    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 162
    if-eqz v5, :cond_6

    .line 164
    const-string v5, "No ApplicationInfo for package "

    .line 166
    invoke-static {v5, v4, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_7
    return v3
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 14
    return-void
.end method

.method public final addUidPolicy(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy_enforcePermission()V

    .line 4
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    move-result v1

    .line 20
    or-int/2addr p2, v1

    .line 21
    if-eq v1, p2, :cond_0

    .line 23
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(III)V

    .line 26
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 28
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string/jumbo p2, "cannot apply policy to UID "

    .line 43
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method

.method public final applyFirewallRules(II)V
    .locals 5

    .line 1
    const-string v0, "apply FIREWALL_POLICY_REJECT_WIFI for UID:"

    .line 3
    const-string v1, "apply FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    .line 5
    and-int/lit8 v2, p2, 0x1

    .line 7
    const-string v3, "NetworkPolicy"

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 14
    invoke-interface {v2, p1, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 34
    if-eqz p2, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 38
    invoke-interface {p0, p1, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    :cond_1
    return-void
.end method

.method public final bindConnectivityManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 11
    const-string/jumbo v1, "missing ConnectivityManager"

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 20
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 22
    return-void
.end method

.method public buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 13

    .line 1
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    .line 4
    move-result-object v1

    .line 5
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 12
    move-result p2

    .line 13
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p2, v0}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    .line 20
    move-result-object v2

    .line 21
    new-instance p2, Landroid/net/NetworkPolicy;

    .line 23
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    .line 26
    move-result-wide v3

    .line 27
    const/4 v11, 0x1

    .line 28
    const/4 v12, 0x1

    .line 29
    const-wide/16 v5, -0x1

    .line 31
    const-wide/16 v7, -0x1

    .line 33
    const-wide/16 v9, -0x1

    .line 35
    move-object v0, p2

    .line 36
    invoke-direct/range {v0 .. v12}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 39
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 44
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 48
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    return-object p2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    throw p0

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    throw p0
.end method

.method public final checkOffPeakEnable(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_SWITCH:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 32
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v2

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    sget-object v5, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_LIMIT:Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    const-wide/16 v5, 0x0

    .line 60
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 63
    move-result-wide v3

    .line 64
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p0

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v7

    .line 87
    invoke-static {p0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 90
    move-result p0

    .line 91
    if-ne p0, v1, :cond_1

    .line 93
    move p0, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move p0, v2

    .line 96
    :goto_1
    sget-object v7, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p1

    .line 102
    if-eqz v0, :cond_2

    .line 104
    if-eqz p0, :cond_2

    .line 106
    cmp-long p0, v3, v5

    .line 108
    if-lez p0, :cond_2

    .line 110
    move v2, v1

    .line 111
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v7, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "NetworkPolicy"

    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 14
    const-string v0, "  "

    .line 16
    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 19
    new-instance p2, Landroid/util/ArraySet;

    .line 21
    array-length v0, p3

    .line 22
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 25
    array-length v0, p3

    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    if-ge v2, v0, :cond_1

    .line 30
    aget-object v3, p3, v2

    .line 32
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->writeNetstatsFiles()V

    .line 41
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 43
    monitor-enter p3

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 46
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    const-string v2, "--unsnooze"

    .line 49
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 55
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 57
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 60
    move-result p2

    .line 61
    const/4 v1, 0x1

    .line 62
    sub-int/2addr p2, v1

    .line 63
    :goto_1
    if-ltz p2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/net/NetworkPolicy;

    .line 73
    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 76
    add-int/lit8 p2, p2, -0x1

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto/16 :goto_12

    .line 82
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 85
    const-string p0, "Cleared snooze timestamps"

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 90
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    return-void

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    goto/16 :goto_13

    .line 96
    :cond_3
    :try_start_3
    const-string p2, "System ready: "

    .line 98
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 101
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 103
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 106
    const-string p2, "Restrict background: "

    .line 108
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 111
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 113
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 116
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 118
    if-eqz p2, :cond_4

    .line 120
    const-string p2, "IsDisabledDataSaver: "

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 125
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 127
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 130
    :cond_4
    const-string p2, "Restrict power: "

    .line 132
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 137
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 140
    const-string p2, "Device idle: "

    .line 142
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 145
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 150
    const-string p2, "Restricted networking mode: "

    .line 152
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 157
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 160
    const-string p2, "Low Power Standby mode: "

    .line 162
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 167
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 170
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 172
    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    :try_start_4
    const-string v2, "Metered ifaces: "

    .line 175
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 180
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 183
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 184
    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 187
    const-string p2, "Flags:"

    .line 189
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string/jumbo v2, "com.android.server.net.network_blocked_for_top_sleeping_and_above: "

    .line 200
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 205
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    const-string/jumbo v2, "com.android.server.net.use_metered_firewall_chains: "

    .line 223
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUseMeteredFirewallChains:Z

    .line 228
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string/jumbo v2, "com.android.server.net.use_different_delays_for_background_chain: "

    .line 246
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    const-string/jumbo v2, "mRestrictBackgroundLowPowerMode: "

    .line 270
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 275
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    .line 287
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    const-string/jumbo v2, "mRestrictBackgroundBeforeBsm: "

    .line 293
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 298
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object p2

    .line 305
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p2, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    const-string/jumbo v2, "mLoadedRestrictBackground: "

    .line 316
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 321
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const-string/jumbo v2, "mRestrictBackgroundChangedInBsm: "

    .line 339
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 344
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 357
    const-string p2, "Network policies:"

    .line 359
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 365
    move p2, v1

    .line 366
    :goto_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 368
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 371
    move-result v2

    .line 372
    if-ge p2, v2, :cond_5

    .line 374
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 376
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 379
    move-result-object v2

    .line 380
    check-cast v2, Landroid/net/NetworkPolicy;

    .line 382
    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 389
    add-int/lit8 p2, p2, 0x1

    .line 391
    goto :goto_2

    .line 392
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 398
    const-string p2, "Subscription plans:"

    .line 400
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 406
    move p2, v1

    .line 407
    :goto_3
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 409
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 412
    move-result v2

    .line 413
    if-ge p2, v2, :cond_7

    .line 415
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 417
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 420
    move-result v2

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    .line 423
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    const-string v4, "Subscriber ID "

    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    const-string v2, ":"

    .line 436
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 449
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 451
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 454
    move-result-object v2

    .line 455
    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    .line 457
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 460
    move-result v3

    .line 461
    if-nez v3, :cond_6

    .line 463
    array-length v3, v2

    .line 464
    move v4, v1

    .line 465
    :goto_4
    if-ge v4, v3, :cond_6

    .line 467
    aget-object v5, v2, v4

    .line 469
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 472
    add-int/lit8 v4, v4, 0x1

    .line 474
    goto :goto_4

    .line 475
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 478
    add-int/lit8 p2, p2, 0x1

    .line 480
    goto :goto_3

    .line 481
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 484
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 487
    const-string p2, "Active subscriptions:"

    .line 489
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 495
    move p2, v1

    .line 496
    :goto_5
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 498
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 501
    move-result v2

    .line 502
    if-ge p2, v2, :cond_8

    .line 504
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 506
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 509
    move-result v2

    .line 510
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 512
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Ljava/lang/String;

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    .line 520
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    const-string v2, "="

    .line 528
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {v3}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 545
    add-int/lit8 p2, p2, 0x1

    .line 547
    goto :goto_5

    .line 548
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 551
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 554
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 556
    check-cast p2, Ljava/util/ArrayList;

    .line 558
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 561
    move-result-object p2

    .line 562
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 565
    move-result v2

    .line 566
    if-eqz v2, :cond_9

    .line 568
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 571
    move-result-object v2

    .line 572
    check-cast v2, [Ljava/lang/String;

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    .line 576
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    const-string v4, "Merged subscriptions: "

    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-static {v2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;

    .line 587
    move-result-object v2

    .line 588
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    move-result-object v2

    .line 599
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 602
    goto :goto_6

    .line 603
    :cond_9
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 605
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 608
    move-result p2

    .line 609
    if-lez p2, :cond_a

    .line 611
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    const-string/jumbo v2, "mTetheringWarningBytes: "

    .line 622
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 627
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 630
    move-result-object v2

    .line 631
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    move-result-object p2

    .line 638
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance p2, Ljava/lang/StringBuilder;

    .line 643
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    const-string/jumbo v2, "mTetheringNotiSnooze: "

    .line 649
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-wide v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    .line 654
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    move-result-object p2

    .line 661
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 664
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 667
    const-string p2, "Policy for UIDs:"

    .line 669
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 675
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 677
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 680
    move-result p2

    .line 681
    move v2, v1

    .line 682
    :goto_7
    if-ge v2, p2, :cond_b

    .line 684
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 686
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 689
    move-result v3

    .line 690
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 692
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 695
    move-result v4

    .line 696
    const-string v5, "UID="

    .line 698
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 704
    const-string v3, " policy="

    .line 706
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 709
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    .line 712
    move-result-object v3

    .line 713
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 719
    add-int/lit8 v2, v2, 0x1

    .line 721
    goto :goto_7

    .line 722
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 725
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 727
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 730
    move-result p2

    .line 731
    if-lez p2, :cond_d

    .line 733
    const-string v2, "Power save whitelist (except idle) app ids:"

    .line 735
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 741
    move v2, v1

    .line 742
    :goto_8
    if-ge v2, p2, :cond_c

    .line 744
    const-string v3, "UID="

    .line 746
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 751
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 754
    move-result v3

    .line 755
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 758
    const-string v3, ": "

    .line 760
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 763
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 765
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 768
    move-result v3

    .line 769
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 772
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 775
    add-int/lit8 v2, v2, 0x1

    .line 777
    goto :goto_8

    .line 778
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 781
    :cond_d
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 783
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 786
    move-result p2

    .line 787
    if-lez p2, :cond_f

    .line 789
    const-string v2, "Power save whitelist app ids:"

    .line 791
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 797
    move v2, v1

    .line 798
    :goto_9
    if-ge v2, p2, :cond_e

    .line 800
    const-string v3, "UID="

    .line 802
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 805
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 807
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 810
    move-result v3

    .line 811
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 814
    const-string v3, ": "

    .line 816
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 819
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 821
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 824
    move-result v3

    .line 825
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 828
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 831
    add-int/lit8 v2, v2, 0x1

    .line 833
    goto :goto_9

    .line 834
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 837
    :cond_f
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 839
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 842
    move-result p2

    .line 843
    if-lez p2, :cond_11

    .line 845
    const-string v2, "App idle whitelist app ids:"

    .line 847
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 853
    move v2, v1

    .line 854
    :goto_a
    if-ge v2, p2, :cond_10

    .line 856
    const-string v3, "UID="

    .line 858
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 861
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 863
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 866
    move-result v3

    .line 867
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 870
    const-string v3, ": "

    .line 872
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 875
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 877
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 880
    move-result v3

    .line 881
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 884
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 887
    add-int/lit8 v2, v2, 0x1

    .line 889
    goto :goto_a

    .line 890
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 893
    :cond_11
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 895
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 898
    move-result p2

    .line 899
    if-lez p2, :cond_13

    .line 901
    const-string v2, "Default restrict background allowlist uids:"

    .line 903
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 909
    move v2, v1

    .line 910
    :goto_b
    if-ge v2, p2, :cond_12

    .line 912
    const-string v3, "UID="

    .line 914
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 917
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 919
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 922
    move-result v3

    .line 923
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 926
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 929
    add-int/lit8 v2, v2, 0x1

    .line 931
    goto :goto_b

    .line 932
    :cond_12
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 935
    :cond_13
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 937
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 940
    move-result p2

    .line 941
    if-lez p2, :cond_15

    .line 943
    const-string v2, "Default restrict background allowlist uids revoked by users:"

    .line 945
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 951
    move v2, v1

    .line 952
    :goto_c
    if-ge v2, p2, :cond_14

    .line 954
    const-string v3, "UID="

    .line 956
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 959
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 961
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 964
    move-result v3

    .line 965
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 968
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 971
    add-int/lit8 v2, v2, 0x1

    .line 973
    goto :goto_c

    .line 974
    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 977
    :cond_15
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 979
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 982
    move-result p2

    .line 983
    if-lez p2, :cond_17

    .line 985
    const-string v2, "Low Power Standby allowlist uids:"

    .line 987
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 993
    move v2, v1

    .line 994
    :goto_d
    if-ge v2, p2, :cond_16

    .line 996
    const-string v3, "UID="

    .line 998
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 1003
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 1006
    move-result v3

    .line 1007
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1010
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1013
    add-int/lit8 v2, v2, 0x1

    .line 1015
    goto :goto_d

    .line 1016
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1019
    :cond_17
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 1021
    if-eqz p2, :cond_1a

    .line 1023
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1026
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 1028
    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    .line 1031
    move-result p2

    .line 1032
    if-lez p2, :cond_19

    .line 1034
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1037
    move-result-wide v2

    .line 1038
    const-string v4, "Uids transitioning to background:"

    .line 1040
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1046
    move v4, v1

    .line 1047
    :goto_e
    if-ge v4, p2, :cond_18

    .line 1049
    const-string v5, "UID="

    .line 1051
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 1056
    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 1059
    move-result v5

    .line 1060
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1063
    const-string v5, ", "

    .line 1065
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 1070
    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 1073
    move-result-wide v5

    .line 1074
    invoke-static {v5, v6, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1080
    add-int/lit8 v4, v4, 0x1

    .line 1082
    goto :goto_e

    .line 1083
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1086
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1089
    :cond_1a
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 1091
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1094
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 1096
    invoke-static {v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 1099
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 1101
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1102
    :try_start_6
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 1104
    invoke-static {v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 1107
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1108
    :try_start_7
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 1110
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1111
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 1113
    invoke-static {v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 1116
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1117
    :try_start_9
    const-string v2, "Status for all known UIDs:"

    .line 1119
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1125
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 1128
    move-result v2

    .line 1129
    move v3, v1

    .line 1130
    :goto_f
    if-ge v3, v2, :cond_1b

    .line 1132
    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 1135
    move-result v4

    .line 1136
    const-string v5, "UID"

    .line 1138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1141
    move-result-object v6

    .line 1142
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1145
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 1147
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1150
    move-result-object v5

    .line 1151
    check-cast v5, Landroid/net/NetworkPolicyManager$UidState;

    .line 1153
    const-string/jumbo v6, "state"

    .line 1156
    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1159
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 1161
    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1162
    :try_start_a
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 1164
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1167
    move-result-object v6

    .line 1168
    check-cast v6, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 1170
    const-string/jumbo v7, "blocked_state"

    .line 1173
    invoke-virtual {p1, v7, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1176
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1177
    :try_start_b
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 1179
    monitor-enter v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1180
    :try_start_c
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 1182
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1185
    move-result-object v4

    .line 1186
    check-cast v4, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 1188
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1191
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1194
    const-string/jumbo v6, "callback_info"

    .line 1197
    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1203
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1204
    :try_start_d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1207
    add-int/lit8 v3, v3, 0x1

    .line 1209
    goto :goto_f

    .line 1210
    :catchall_2
    move-exception p0

    .line 1211
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1212
    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1213
    :catchall_3
    move-exception p0

    .line 1214
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1215
    :try_start_11
    throw p0

    .line 1216
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1222
    const-string p2, "Admin restricted uids for metered data:"

    .line 1224
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1230
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 1232
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 1235
    move-result p2

    .line 1236
    move v2, v1

    .line 1237
    :goto_10
    if-ge v2, p2, :cond_1c

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1241
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1244
    const-string/jumbo v4, "u"

    .line 1247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 1252
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1255
    move-result v4

    .line 1256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1259
    const-string v4, ": "

    .line 1261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1267
    move-result-object v3

    .line 1268
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 1273
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1276
    move-result-object v3

    .line 1277
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1280
    add-int/lit8 v2, v2, 0x1

    .line 1282
    goto :goto_10

    .line 1283
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1286
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1289
    const-string p2, "Network to interfaces:"

    .line 1291
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1297
    :goto_11
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 1299
    invoke-virtual {p2}, Landroid/util/SparseSetArray;->size()I

    .line 1302
    move-result p2

    .line 1303
    if-ge v1, p2, :cond_1d

    .line 1305
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 1307
    invoke-virtual {p2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 1310
    move-result p2

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1313
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1319
    const-string v3, ": "

    .line 1321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 1326
    invoke-virtual {v3, p2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 1329
    move-result-object p2

    .line 1330
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1336
    move-result-object p2

    .line 1337
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    add-int/lit8 v1, v1, 0x1

    .line 1342
    goto :goto_11

    .line 1343
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1346
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1349
    const-string p2, "Active notifications: "

    .line 1351
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 1356
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1359
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1362
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 1364
    invoke-virtual {p2, p1}, Lcom/android/internal/util/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1367
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 1369
    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1372
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1373
    :try_start_12
    monitor-exit p3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1374
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1377
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1382
    return-void

    .line 1383
    :catchall_4
    move-exception p0

    .line 1384
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1385
    :try_start_14
    throw p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1386
    :catchall_5
    move-exception p0

    .line 1387
    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 1388
    :try_start_16
    throw p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1389
    :catchall_6
    move-exception p0

    .line 1390
    :try_start_17
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 1391
    :try_start_18
    throw p0

    .line 1392
    :goto_12
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1393
    :try_start_19
    throw p0

    .line 1394
    :goto_13
    monitor-exit p3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1395
    throw p0
.end method

.method public final enableFirewallChainUL(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 14
    move-result v0

    .line 15
    if-ne v0, p2, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 25
    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 28
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string p1, "NetworkPolicy"

    .line 37
    const-string/jumbo p2, "problem enable firewall chain"

    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :catch_1
    :goto_0
    return-void
.end method

.method public final varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    aget-object v2, p1, v1

    .line 7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Requires one of the following permissions: "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v1, ", "

    .line 30
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const-string v1, "."

    .line 36
    invoke-static {v0, p1, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public final enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 12
    invoke-virtual {p2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 15
    move-result-object p2

    .line 16
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 18
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 41
    const-string/jumbo v1, "config_plans_package_override_string"

    .line 44
    invoke-virtual {p2, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 54
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_1

    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 63
    invoke-virtual {p2}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 73
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 79
    return-void

    .line 80
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    .line 85
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_3

    .line 105
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_3

    .line 111
    return-void

    .line 112
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, "fw.sub_plan_owner."

    .line 117
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    move-result p2

    .line 135
    if-nez p2, :cond_4

    .line 137
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_4

    .line 143
    return-void

    .line 144
    :cond_4
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 146
    const-string p1, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    .line 148
    const-string p2, "NetworkPolicy"

    .line 150
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw p0
.end method

.method public final enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move/from16 v0, p2

    .line 7
    move-wide/from16 v3, p3

    .line 9
    move-object/from16 v5, p5

    .line 11
    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 13
    invoke-direct {v6, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(ILandroid/net/NetworkPolicy;)V

    .line 16
    new-instance v7, Landroid/app/Notification$Builder;

    .line 18
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 20
    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 22
    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    const/4 v8, 0x1

    .line 26
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 29
    const-wide/16 v9, 0x0

    .line 31
    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 34
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 36
    const v12, 0x106001c

    .line 39
    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    .line 42
    move-result v11

    .line 43
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 46
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v11

    .line 52
    const/high16 v12, 0x10000000

    .line 54
    const/4 v13, -0x5

    .line 55
    const v14, 0x104041c

    .line 58
    const v15, 0x1080078

    .line 61
    const/4 v9, 0x4

    .line 62
    if-eq v0, v13, :cond_1a

    .line 64
    const/16 v13, 0x2d

    .line 66
    const-string v10, "android.net.NETWORK_TEMPLATE"

    .line 68
    if-eq v0, v13, :cond_18

    .line 70
    const v5, 0x1040413

    .line 73
    const/16 v13, 0xa

    .line 75
    const-string/jumbo v19, "com.samsung.android.sm_cn/com.samsung.android.sm.datausage.ui.BillingCycle.BillingCycleSettingsActivity"

    .line 78
    packed-switch v0, :pswitch_data_0

    .line 81
    return-void

    .line 82
    :pswitch_0
    iget-object v0, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 84
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 87
    move-result v0

    .line 88
    if-eq v0, v8, :cond_1

    .line 90
    if-eq v0, v9, :cond_0

    .line 92
    if-eq v0, v13, :cond_1

    .line 94
    return-void

    .line 95
    :cond_0
    const v0, 0x104041f

    .line 98
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 101
    move-result-object v0

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const v0, 0x1040412

    .line 106
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 109
    move-result-object v0

    .line 110
    :goto_0
    iget-wide v12, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 112
    sub-long/2addr v3, v12

    .line 113
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {v5, v3, v4, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 122
    move-result-object v3

    .line 123
    const v4, 0x1040411

    .line 126
    invoke-virtual {v11, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 133
    invoke-virtual {v7, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 136
    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 138
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v2, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 143
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setContentIntent(Landroid/app/Notification$Builder;Landroid/content/Intent;)V

    .line 150
    :goto_1
    move-object/from16 v22, v6

    .line 152
    move-object v8, v7

    .line 153
    goto/16 :goto_14

    .line 155
    :pswitch_1
    iget-object v0, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 157
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 160
    move-result v0

    .line 161
    if-eq v0, v8, :cond_3

    .line 163
    if-eq v0, v9, :cond_2

    .line 165
    if-eq v0, v13, :cond_3

    .line 167
    return-void

    .line 168
    :cond_2
    const v0, 0x1040420

    .line 171
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 174
    move-result-object v0

    .line 175
    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 179
    move-result-object v0

    .line 180
    :goto_2
    const v3, 0x1040410

    .line 183
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 190
    const v4, 0x1080b70

    .line 193
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 196
    iget-boolean v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 198
    if-eqz v4, :cond_4

    .line 200
    iget-object v2, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 202
    new-instance v4, Landroid/content/Intent;

    .line 204
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 207
    invoke-static/range {v19 .. v19}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    goto :goto_3

    .line 221
    :cond_4
    iget-object v2, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 223
    new-instance v4, Landroid/content/Intent;

    .line 225
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 228
    const v5, 0x1040381

    .line 231
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 234
    move-result-object v5

    .line 235
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    :goto_3
    invoke-virtual {v1, v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setContentIntent(Landroid/app/Notification$Builder;Landroid/content/Intent;)V

    .line 251
    goto :goto_1

    .line 252
    :pswitch_2
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 255
    move-result-object v0

    .line 256
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {v13, v3, v4, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 261
    move-result-object v9

    .line 262
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 265
    move-result-object v9

    .line 266
    const v13, 0x104041b

    .line 269
    invoke-virtual {v11, v13, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    move-result-object v9

    .line 273
    invoke-virtual {v7, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 276
    const v14, 0x1040302

    .line 279
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 282
    move-result-object v14

    .line 283
    iget-boolean v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 285
    const-string v12, "NetworkPolicy"

    .line 287
    if-eqz v15, :cond_f

    .line 289
    iget-object v9, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 291
    invoke-virtual {v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    .line 294
    move-result v9

    .line 295
    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 300
    move-result-object v15

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    sget-object v13, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_UNLIMITED_DATA_PLAN_WARN_SWITCH:Ljava/lang/String;

    .line 308
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v5

    .line 318
    const/4 v13, 0x0

    .line 319
    invoke-static {v15, v5, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 322
    move-result v5

    .line 323
    if-ne v5, v8, :cond_5

    .line 325
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 330
    move-result-object v5

    .line 331
    new-instance v13, Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    sget-object v15, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_USAGE_PLAN_LIST:Ljava/lang/String;

    .line 338
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v13

    .line 348
    invoke-static {v5, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    move-result-object v5

    .line 352
    const-string/jumbo v13, "unlimited"

    .line 355
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_5

    .line 361
    move v5, v8

    .line 362
    goto :goto_4

    .line 363
    :cond_5
    const/4 v5, 0x0

    .line 364
    :goto_4
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 366
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 369
    move-result-object v13

    .line 370
    new-instance v15, Ljava/lang/StringBuilder;

    .line 372
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_ONLY_SHOW_LIMIT_ALERT:Ljava/lang/String;

    .line 377
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v8

    .line 387
    const/4 v15, 0x0

    .line 388
    invoke-static {v13, v8, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 391
    move-result v8

    .line 392
    const/4 v13, 0x1

    .line 393
    if-ne v8, v13, :cond_6

    .line 395
    const/4 v8, 0x1

    .line 396
    goto :goto_5

    .line 397
    :cond_6
    const/4 v8, 0x0

    .line 398
    :goto_5
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 400
    const/16 v15, 0x8

    .line 402
    invoke-static {v13, v3, v4, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 405
    move-result-object v3

    .line 406
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 409
    move-result-object v3

    .line 410
    const v4, 0x104041b

    .line 413
    invoke-virtual {v11, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    move-result-object v3

    .line 417
    if-gez v9, :cond_7

    .line 419
    const/4 v4, 0x0

    .line 420
    goto :goto_6

    .line 421
    :cond_7
    sget-object v4, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 423
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    move-result-object v13

    .line 427
    invoke-virtual {v4, v13}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 430
    move-result v13

    .line 431
    if-nez v13, :cond_8

    .line 433
    invoke-virtual {v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->checkOffPeakEnable(I)V

    .line 436
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    .line 438
    const-string/jumbo v15, "current subid: "

    .line 441
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    const-string v15, " isoffpeakEnable:"

    .line 449
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    move-result-object v13

    .line 459
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    move-result-object v13

    .line 466
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 468
    invoke-virtual {v4, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-result-object v4

    .line 472
    check-cast v4, Ljava/lang/Boolean;

    .line 474
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 477
    move-result v4

    .line 478
    :goto_6
    if-eqz v4, :cond_c

    .line 480
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    .line 483
    move-result-object v0

    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Landroid/util/Pair;

    .line 490
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 492
    check-cast v3, Ljava/time/ZonedDateTime;

    .line 494
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 501
    move-result-wide v3

    .line 502
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 504
    check-cast v0, Ljava/time/ZonedDateTime;

    .line 506
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 513
    move-result-wide v13

    .line 514
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 516
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 519
    move-result-object v0

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_START_TIME:Ljava/lang/String;

    .line 527
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    move-result-object v5

    .line 537
    move-wide/from16 p3, v3

    .line 539
    const-wide/32 v3, 0x4ef6d80

    .line 542
    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 545
    move-result-wide v3

    .line 546
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 548
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 551
    move-result-object v0

    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    .line 554
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_END_TIME:Ljava/lang/String;

    .line 559
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object v5

    .line 569
    const-wide/32 v8, 0x1808580

    .line 572
    invoke-static {v0, v5, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 575
    move-result-wide v8

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 579
    move-result-wide v20

    .line 580
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 587
    move-result v0

    .line 588
    move-object/from16 v22, v6

    .line 590
    int-to-long v5, v0

    .line 591
    add-long v5, v20, v5

    .line 593
    const-wide/32 v23, 0x5265c00

    .line 596
    rem-long v5, v5, v23

    .line 598
    sub-long v5, v20, v5

    .line 600
    move-wide/from16 v15, p3

    .line 602
    move-object/from16 v20, v10

    .line 604
    move-object/from16 v17, v11

    .line 606
    const-wide/16 v10, 0x0

    .line 608
    :goto_7
    cmp-long v0, v15, v5

    .line 610
    if-gtz v0, :cond_b

    .line 612
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 614
    move-object/from16 v21, v7

    .line 616
    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 618
    add-long v27, v3, v15

    .line 620
    cmp-long v19, v8, v3

    .line 622
    if-gez v19, :cond_9

    .line 624
    add-long v25, v8, v23

    .line 626
    add-long v29, v25, v5

    .line 628
    cmp-long v19, v29, v13

    .line 630
    if-lez v19, :cond_a

    .line 632
    move-wide/from16 v25, v23

    .line 634
    goto :goto_8

    .line 635
    :cond_9
    move-wide/from16 v25, v8

    .line 637
    :cond_a
    :goto_8
    add-long v29, v15, v25

    .line 639
    move-object/from16 v25, v0

    .line 641
    move-object/from16 v26, v7

    .line 643
    invoke-virtual/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 646
    move-result-wide v25

    .line 647
    add-long v10, v10, v25

    .line 649
    add-long v15, v15, v23

    .line 651
    move-object/from16 v7, v21

    .line 653
    goto :goto_7

    .line 654
    :cond_b
    move-object/from16 v21, v7

    .line 656
    const-string/jumbo v0, "getTotalBytesForOffPeak() for offpeak todayStartTime "

    .line 659
    const-string v3, " totalBytes "

    .line 661
    invoke-static {v0, v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    move-result-object v0

    .line 672
    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 677
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 680
    move-result-object v0

    .line 681
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 683
    const/16 v4, 0x8

    .line 685
    invoke-static {v3, v10, v11, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 688
    move-result-object v3

    .line 689
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 692
    move-result-object v3

    .line 693
    const v4, 0x104041d

    .line 696
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 699
    move-result-object v0

    .line 700
    const-string v3, ""

    .line 702
    const-string/jumbo v19, "com.samsung.android.sm_cn/com.samsung.android.sm.datausage.ui.BillingCycle.OffPeakDataWarningActivity"

    .line 705
    :goto_9
    move-object v9, v3

    .line 706
    move-object/from16 v6, v17

    .line 708
    :goto_a
    move-object v3, v0

    .line 709
    goto :goto_b

    .line 710
    :cond_c
    move-object/from16 v22, v6

    .line 712
    move-object/from16 v21, v7

    .line 714
    move-object/from16 v20, v10

    .line 716
    move-object/from16 v17, v11

    .line 718
    if-eqz v5, :cond_d

    .line 720
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 722
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 725
    move-result-object v0

    .line 726
    const v4, 0x104041e

    .line 729
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 732
    move-result-object v0

    .line 733
    goto :goto_9

    .line 734
    :cond_d
    move-object/from16 v6, v17

    .line 736
    if-eqz v8, :cond_e

    .line 738
    const v4, 0x1040413

    .line 741
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 744
    move-result-object v0

    .line 745
    move-object v9, v3

    .line 746
    goto :goto_a

    .line 747
    :cond_e
    move-object v9, v3

    .line 748
    move-object/from16 v19, v14

    .line 750
    goto :goto_a

    .line 751
    :cond_f
    move-object/from16 v22, v6

    .line 753
    move-object/from16 v21, v7

    .line 755
    move-object/from16 v20, v10

    .line 757
    move-object v6, v11

    .line 758
    move-object v3, v0

    .line 759
    move-object/from16 v19, v14

    .line 761
    :goto_b
    iget-object v0, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 763
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 768
    move-result-object v4

    .line 769
    new-instance v5, Landroid/content/Intent;

    .line 771
    const-string/jumbo v7, "com.android.server.net.action.SNOOZE_WARNING"

    .line 774
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    const/high16 v7, 0x10000000

    .line 779
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 782
    move-object/from16 v7, v20

    .line 784
    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 787
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 792
    const/high16 v4, 0xc000000

    .line 794
    const/4 v8, 0x0

    .line 795
    invoke-static {v0, v8, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 798
    move-result-object v0

    .line 799
    move-object/from16 v8, v21

    .line 801
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 804
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 806
    if-eqz v0, :cond_10

    .line 808
    iget-object v0, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 810
    new-instance v4, Landroid/content/Intent;

    .line 812
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 815
    invoke-static/range {v19 .. v19}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 818
    move-result-object v5

    .line 819
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 822
    const/high16 v5, 0x10000000

    .line 824
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 827
    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 830
    goto :goto_c

    .line 831
    :cond_10
    iget-object v0, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 833
    invoke-static {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    .line 836
    move-result-object v4

    .line 837
    :goto_c
    invoke-virtual {v1, v8, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setContentIntent(Landroid/app/Notification$Builder;Landroid/content/Intent;)V

    .line 840
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 842
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 845
    move-result-object v0

    .line 846
    const-string/jumbo v4, "udsState"

    .line 849
    const/4 v5, 0x0

    .line 850
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 853
    move-result v0

    .line 854
    const/4 v4, 0x1

    .line 855
    if-ne v0, v4, :cond_11

    .line 857
    const/16 v18, 0x1

    .line 859
    goto :goto_d

    .line 860
    :cond_11
    move/from16 v18, v5

    .line 862
    :goto_d
    if-nez v18, :cond_15

    .line 864
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 866
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 869
    move-result-object v0

    .line 870
    const-string/jumbo v4, "com.samsung.android.uds"

    .line 873
    if-nez v0, :cond_12

    .line 875
    goto :goto_e

    .line 876
    :cond_12
    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    const/4 v5, 0x1

    .line 880
    goto :goto_e

    .line 881
    :catch_0
    const-string v0, "Package isnt existed"

    .line 883
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v5, 0x0

    .line 887
    :goto_e
    if-eqz v5, :cond_15

    .line 889
    new-instance v0, Landroid/content/Intent;

    .line 891
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 894
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 896
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 899
    move-result-object v0

    .line 900
    const/4 v5, 0x0

    .line 901
    :try_start_1
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 904
    move-result-object v0

    .line 905
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 907
    and-int/lit8 v10, v5, 0x1

    .line 909
    if-nez v10, :cond_13

    .line 911
    and-int/lit16 v5, v5, 0x80

    .line 913
    if-nez v5, :cond_13

    .line 915
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 917
    const/16 v5, 0x2710

    .line 919
    if-ge v0, v5, :cond_14

    .line 921
    goto :goto_f

    .line 922
    :catch_1
    move-exception v0

    .line 923
    goto :goto_10

    .line 924
    :cond_13
    :goto_f
    const/4 v0, 0x1

    .line 925
    goto :goto_11

    .line 926
    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 928
    const-string/jumbo v10, "isSystemApp NameNotFoundException : "

    .line 931
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    move-result-object v0

    .line 941
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_14
    const/4 v0, 0x0

    .line 945
    :goto_11
    if-eqz v0, :cond_16

    .line 947
    const-string v0, "Ultra data saving mode installed then go to Devicecare"

    .line 949
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 954
    new-instance v2, Landroid/content/Intent;

    .line 956
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 959
    const-string/jumbo v5, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    .line 962
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const/high16 v5, 0x10000000

    .line 967
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 970
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 976
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 978
    const/high16 v4, 0xc000000

    .line 980
    const/4 v5, 0x0

    .line 981
    invoke-static {v0, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 984
    move-result-object v0

    .line 985
    const v2, 0x1040f3f

    .line 988
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 991
    move-result-object v2

    .line 992
    const v4, 0x1080cfc

    .line 995
    invoke-virtual {v8, v4, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 998
    move-result-object v0

    .line 999
    const/4 v2, 0x1

    .line 1000
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1003
    goto :goto_12

    .line 1004
    :cond_15
    const-string v0, "Ultra data saving mode didn\'t install"

    .line 1006
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_16
    :goto_12
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 1011
    if-nez v0, :cond_17

    .line 1013
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 1015
    if-eqz v0, :cond_17

    .line 1017
    new-instance v0, Landroid/content/Intent;

    .line 1019
    const-string/jumbo v2, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    .line 1022
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1027
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    const/4 v2, 0x1

    .line 1031
    iput-boolean v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 1033
    :cond_17
    move-object v0, v3

    .line 1034
    move-object v3, v9

    .line 1035
    goto/16 :goto_14

    .line 1037
    :cond_18
    move-object/from16 v22, v6

    .line 1039
    move-object v8, v7

    .line 1040
    move-object v7, v10

    .line 1041
    move-object v6, v11

    .line 1042
    const v0, 0x1040416

    .line 1045
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 1048
    move-result-object v0

    .line 1049
    if-eqz v5, :cond_19

    .line 1051
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1053
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1056
    move-result-object v3

    .line 1057
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1060
    move-result-object v3

    .line 1061
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1064
    move-result-object v3

    .line 1065
    const v4, 0x1040414

    .line 1068
    invoke-virtual {v6, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1071
    move-result-object v3

    .line 1072
    goto :goto_13

    .line 1073
    :cond_19
    const v3, 0x1040415

    .line 1076
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1079
    move-result-object v3

    .line 1080
    :goto_13
    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1083
    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1085
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1087
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1090
    move-result-object v5

    .line 1091
    new-instance v9, Landroid/content/Intent;

    .line 1093
    const-string/jumbo v10, "com.android.server.net.action.SNOOZE_RAPID"

    .line 1096
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    const/high16 v10, 0x10000000

    .line 1101
    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1104
    invoke-virtual {v9, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1107
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1112
    const/high16 v5, 0xc000000

    .line 1114
    const/4 v7, 0x0

    .line 1115
    invoke-static {v4, v7, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1118
    move-result-object v4

    .line 1119
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1122
    iget-object v2, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1124
    invoke-static {v6, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    .line 1127
    move-result-object v2

    .line 1128
    invoke-virtual {v1, v8, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setContentIntent(Landroid/app/Notification$Builder;Landroid/content/Intent;)V

    .line 1131
    goto/16 :goto_14

    .line 1133
    :cond_1a
    move-object/from16 v22, v6

    .line 1135
    move-object v8, v7

    .line 1136
    move-object v6, v11

    .line 1137
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 1140
    move-result-object v0

    .line 1141
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1143
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1148
    invoke-static {v7, v3, v4, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 1151
    move-result-object v3

    .line 1152
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1155
    move-result-object v3

    .line 1156
    const v4, 0x1040419

    .line 1159
    invoke-virtual {v6, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1162
    move-result-object v3

    .line 1163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    const-string v3, " "

    .line 1168
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const v3, 0x104041a

    .line 1174
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1177
    move-result-object v3

    .line 1178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    move-result-object v3

    .line 1185
    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1188
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1190
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1193
    move-result-object v4

    .line 1194
    new-instance v5, Landroid/content/Intent;

    .line 1196
    const-string/jumbo v7, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    .line 1199
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    const/high16 v7, 0x10000000

    .line 1204
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1207
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1212
    const/high16 v7, 0xc000000

    .line 1214
    const/4 v9, 0x0

    .line 1215
    invoke-static {v4, v9, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1218
    move-result-object v4

    .line 1219
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1222
    iget-object v2, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1224
    invoke-static {v6, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    .line 1227
    move-result-object v11

    .line 1228
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 1231
    move-result v2

    .line 1232
    if-eqz v2, :cond_1b

    .line 1234
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1236
    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1238
    const/4 v10, 0x0

    .line 1239
    const/high16 v12, 0xc000000

    .line 1241
    const/4 v13, 0x0

    .line 1242
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1245
    move-result-object v2

    .line 1246
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1249
    goto :goto_14

    .line 1250
    :cond_1b
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1252
    const/high16 v4, 0xc000000

    .line 1254
    const/4 v5, 0x0

    .line 1255
    invoke-static {v2, v5, v11, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1258
    move-result-object v2

    .line 1259
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1262
    :goto_14
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1265
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1268
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1271
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 1273
    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1276
    invoke-virtual {v0, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 1279
    move-result-object v0

    .line 1280
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1283
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1285
    const-class v2, Landroid/app/NotificationManager;

    .line 1287
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1290
    move-result-object v0

    .line 1291
    check-cast v0, Landroid/app/NotificationManager;

    .line 1293
    move-object/from16 v2, v22

    .line 1295
    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 1297
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    .line 1299
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1302
    move-result-object v5

    .line 1303
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1305
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1308
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 1310
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1313
    return-void

    .line 1314
    nop

    .line 1315
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Landroid/net/NetworkIdentity$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v2}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 31
    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 37
    move-result v3

    .line 38
    sub-int/2addr v3, v2

    .line 39
    :goto_0
    const-string v4, "NetworkPolicy"

    .line 41
    if-ltz v3, :cond_2

    .line 43
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 45
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/net/NetworkTemplate;

    .line 51
    invoke-virtual {v5, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 57
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 59
    if-eqz p0, :cond_0

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    const-string p1, "Found template "

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string p1, " which matches subscriber "

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return v1

    .line 91
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "No policy for subscriber "

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "; generating default policy"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    .line 123
    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    .line 133
    move-result-object p2

    .line 134
    const-class v0, Landroid/net/NetworkPolicy;

    .line 136
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    move-result-object p1

    .line 140
    check-cast p1, [Landroid/net/NetworkPolicy;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 145
    return v2
.end method

.method public final factoryReset(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 6
    const-string/jumbo v1, "no_network_reset"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v1

    .line 35
    :goto_0
    const/4 v3, 0x1

    .line 36
    if-eqz p1, :cond_2

    .line 38
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    .line 40
    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 43
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 58
    move-result-object v1

    .line 59
    :cond_2
    array-length p1, v0

    .line 60
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    :goto_1
    if-ge v5, p1, :cond_5

    .line 64
    aget-object v6, v0, v5

    .line 66
    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 68
    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_3

    .line 74
    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 76
    invoke-virtual {v7, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_4

    .line 82
    :cond_3
    const-wide/16 v7, -0x1

    .line 84
    iput-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 86
    iput-boolean v4, v6, Landroid/net/NetworkPolicy;->inferred:Z

    .line 88
    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 91
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 102
    const-string/jumbo v0, "no_control_apps"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_6

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    .line 114
    move-result-object p1

    .line 115
    array-length v0, p1

    .line 116
    move v1, v4

    .line 117
    :goto_2
    if-ge v1, v0, :cond_6

    .line 119
    aget v2, p1, v1

    .line 121
    invoke-virtual {p0, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    const-string p0, "NetworkPolicy"

    .line 129
    const-string/jumbo p1, "remove tag file  in netStats"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 137
    const-string v0, "/data/misc/apexdata/com.android.tethering/netstats"

    .line 139
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_8

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 151
    move-result-object p1

    .line 152
    array-length v0, p1

    .line 153
    :goto_3
    if-ge v4, v0, :cond_8

    .line 155
    aget-object v1, p1, v4

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    const-string/jumbo v3, "uid_tag"

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_7

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_4

    .line 178
    :catch_0
    move-exception p1

    .line 179
    goto :goto_5

    .line 180
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 182
    goto :goto_3

    .line 183
    :goto_5
    const-string/jumbo v0, "writeNetstatsFiles, Copy error: "

    .line 186
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    :cond_8
    return-void
.end method

.method public final findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 25
    new-instance v4, Landroid/net/NetworkIdentity$Builder;

    .line 27
    invoke-direct {v4}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 30
    invoke-virtual {v4, v0}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v3}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, v4}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, v2}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 61
    return v2

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p0, -0x1

    .line 66
    return p0
.end method

.method public final forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .locals 7

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string/jumbo v2, "forEachUid-"

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    :cond_0
    :try_start_0
    const-string/jumbo p1, "list-users"

    .line 23
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 28
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 31
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 35
    const-string/jumbo p1, "iterate-uids"

    .line 38
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 43
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    if-ge v3, v2, :cond_1

    .line 56
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 62
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 64
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 66
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 69
    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;

    .line 71
    invoke-direct {v6, v5, v4, p2}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;)V

    .line 74
    invoke-virtual {p1, v4, v6}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 88
    return-void

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :goto_1
    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    throw p0

    .line 95
    :catchall_2
    move-exception p0

    .line 96
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 99
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    throw p0
.end method

.method public final getAllFirewallRuleMobileData()[I
    .locals 6

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "NetworkPolicy"

    .line 11
    const-string/jumbo v2, "return WifiOnlyUidList"

    .line 14
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 23
    move-result v3

    .line 24
    if-ge v1, v3, :cond_1

    .line 26
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 29
    move-result v3

    .line 30
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 33
    move-result v2

    .line 34
    const/4 v4, 0x1

    .line 35
    and-int/2addr v2, v4

    .line 36
    if-ne v2, v4, :cond_0

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v2, "NetworkPolicy"

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string/jumbo v5, "wifiOnlyUidList uid : "

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 85
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p0
.end method

.method public getAppIdleWhitelist()[I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    .line 5
    const-string v2, "NetworkPolicy"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 18
    move-result v1

    .line 19
    new-array v2, v1, [I

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_0

    .line 24
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 26
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 29
    move-result v4

    .line 30
    aput v4, v2, v3

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-object v2

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    return p2

    .line 4
    :cond_0
    const-string/jumbo p0, "monthly_data_cycle_day_int"

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 11
    const/4 p1, -0x1

    .line 12
    if-ne p0, p1, :cond_1

    .line 14
    return p2

    .line 15
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x5

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMinimum(I)I

    .line 23
    move-result v1

    .line 24
    if-lt p0, v1, :cond_3

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    .line 29
    move-result p1

    .line 30
    if-le p0, p1, :cond_2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return p0

    .line 34
    :cond_3
    :goto_0
    const-string p1, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    .line 36
    const-string v0, "NetworkPolicy"

    .line 38
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return p2
.end method

.method public final getEffectiveBlockedReasons(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 18
    :goto_0
    monitor-exit v0

    .line 19
    return p0

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

.method public final getFirewallRuleMobileData(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "getFirewallRuleMobileData UID:"

    .line 4
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    .line 8
    const-string v2, "NetworkPolicy"

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    move-result v1

    .line 23
    const-string v3, "NetworkPolicy"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, " policy:"

    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 p1, 0x1

    .line 49
    and-int/lit8 v0, v1, 0x1

    .line 51
    if-nez v0, :cond_0

    .line 53
    move v2, p1

    .line 54
    :cond_0
    monitor-exit p0

    .line 55
    return v2

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public final getFirewallRuleWifi(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "getFirewallRuleWifi UID:"

    .line 4
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    .line 8
    const-string v2, "NetworkPolicy"

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    move-result v1

    .line 23
    const-string v3, "NetworkPolicy"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, " policy:"

    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    and-int/lit8 p1, v1, 0x2

    .line 50
    if-nez p1, :cond_0

    .line 52
    const/4 v2, 0x1

    .line 53
    :cond_0
    monitor-exit p0

    .line 54
    return v2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method

.method public getHandlerForTesting()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-wide p2

    .line 4
    :cond_0
    const-string/jumbo p0, "data_limit_threshold_bytes_long"

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 10
    move-result-wide p0

    .line 11
    const-wide/16 v0, -0x2

    .line 13
    cmp-long v0, p0, v0

    .line 15
    const-wide/16 v1, -0x1

    .line 17
    if-nez v0, :cond_1

    .line 19
    return-wide v1

    .line 20
    :cond_1
    cmp-long v0, p0, v1

    .line 22
    if-nez v0, :cond_2

    .line 24
    return-wide v1

    .line 25
    :cond_2
    const-wide/16 v0, 0x0

    .line 27
    cmp-long v0, p0, v0

    .line 29
    if-gez v0, :cond_3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    const-string p1, "NetworkPolicy"

    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-wide p2

    .line 51
    :cond_3
    return-wide p0
.end method

.method public final getMultipathPreference(Landroid/net/Network;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 24
    if-eqz p0, :cond_2

    .line 26
    iget-wide p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 28
    const-wide/16 v1, 0x0

    .line 30
    cmp-long p0, p0, v1

    .line 32
    if-lez p0, :cond_1

    .line 34
    const/4 p0, 0x3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move p0, v0

    .line 37
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_3
    return v0
.end method

.method public final getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies_enforcePermission()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 9
    const-string v3, "NetworkPolicy"

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 17
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 19
    const-string v3, "NetworkPolicy"

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 26
    const/16 v2, 0x33

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 38
    new-array p0, v0, [Landroid/net/NetworkPolicy;

    .line 40
    return-object p0

    .line 41
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 43
    monitor-enter p1

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 49
    move-result v1

    .line 50
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    .line 52
    :goto_1
    if-ge v0, v1, :cond_1

    .line 54
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/net/NetworkPolicy;

    .line 62
    aput-object v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    monitor-exit p1

    .line 70
    return-object v2

    .line 71
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public final getPlatformDefaultWarningBytes()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 7
    const v0, 0x10e00f5

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    const-wide/16 v2, -0x1

    .line 17
    cmp-long v0, v0, v2

    .line 19
    if-nez v0, :cond_0

    .line 21
    return-wide v2

    .line 22
    :cond_0
    sget-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    .line 24
    div-int/lit16 p0, p0, 0x400

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method public final getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [Landroid/telephony/SubscriptionPlan;

    .line 9
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 15
    array-length v0, p1

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 19
    aget-object v2, p1, v1

    .line 21
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/util/RecurrenceRule;->isRecurring()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 31
    return-object v2

    .line 32
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/util/Range;

    .line 42
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 44
    invoke-static {v4}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 54
    return-object v2

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public final getRestrictBackground()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 9
    monitor-exit v0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final getRestrictBackgroundByCaller()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getRestrictBackgroundStatus(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getRestrictBackgroundStatusInternal(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    .line 11
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    const/4 v1, 0x3

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v3, v2, :cond_0

    .line 19
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 25
    if-nez v3, :cond_1

    .line 27
    monitor-exit v0

    .line 28
    return v2

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 31
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 34
    move-result p0

    .line 35
    and-int/lit8 p0, p0, 0x4

    .line 37
    if-eqz p0, :cond_2

    .line 39
    const/4 v1, 0x2

    .line 40
    :cond_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw p0
.end method

.method public final getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .locals 1

    .line 1
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    .line 20
    move-result-object p0

    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    const-string v3, "Not returning plans because caller "

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v4

    .line 12
    invoke-virtual {p0, v1, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 15
    const-string/jumbo v4, "fw.fake_plan"

    .line 18
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_7

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const-string/jumbo v1, "month_hard"

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    const-wide v2, 0x7fffffffffffffffL

    .line 45
    const-wide/16 v5, 0x1

    .line 47
    const-wide/16 v7, 0x5

    .line 49
    if-eqz v1, :cond_0

    .line 51
    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 53
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 60
    move-result-object v1

    .line 61
    const-string v4, "G-Mobile"

    .line 63
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 66
    move-result-object v1

    .line 67
    sget-object v4, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 69
    invoke-virtual {v4, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 72
    move-result-wide v9

    .line 73
    const/4 v11, 0x1

    .line 74
    invoke-virtual {v1, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v4, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    .line 81
    move-result-wide v5

    .line 82
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 85
    move-result-object v9

    .line 86
    const-wide/16 v12, 0x24

    .line 88
    invoke-virtual {v9, v12, v13}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    .line 99
    move-result-wide v9

    .line 100
    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 113
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 120
    move-result-object v1

    .line 121
    const-string v5, "G-Mobile Happy"

    .line 123
    invoke-virtual {v1, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1, v2, v3, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v4, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 134
    move-result-wide v2

    .line 135
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5, v12, v13}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    .line 150
    move-result-wide v5

    .line 151
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 164
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 171
    move-result-object v1

    .line 172
    const-string v2, "G-Mobile, Charged after limit"

    .line 174
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v4, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 181
    move-result-wide v2

    .line 182
    invoke-virtual {v1, v2, v3, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v4, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 189
    move-result-wide v2

    .line 190
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v4, v12, v13}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 205
    move-result-wide v4

    .line 206
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_0
    const-string/jumbo v1, "month_soft"

    .line 222
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v1

    .line 226
    const/4 v9, 0x0

    .line 227
    const/4 v10, 0x2

    .line 228
    if-eqz v1, :cond_1

    .line 230
    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 232
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 235
    move-result-object v1

    .line 236
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 239
    move-result-object v1

    .line 240
    const-string v2, "G-Mobile is the carriers name who this plan belongs to"

    .line 242
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 245
    move-result-object v1

    .line 246
    const-string v2, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    .line 248
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 251
    move-result-object v1

    .line 252
    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 254
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 257
    move-result-wide v3

    .line 258
    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v2, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    .line 265
    move-result-wide v3

    .line 266
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 269
    move-result-object v11

    .line 270
    invoke-virtual {v11, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 273
    move-result-object v11

    .line 274
    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 277
    move-result-object v11

    .line 278
    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    .line 281
    move-result-wide v11

    .line 282
    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 295
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 302
    move-result-object v1

    .line 303
    const-string v3, "G-Mobile, Throttled after limit"

    .line 305
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 312
    move-result-wide v3

    .line 313
    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 320
    move-result-wide v3

    .line 321
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v10, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    .line 336
    move-result-wide v10

    .line 337
    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 350
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 353
    move-result-object v1

    .line 354
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 357
    move-result-object v1

    .line 358
    const-string v3, "G-Mobile, No data connection after limit"

    .line 360
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 367
    move-result-wide v3

    .line 368
    invoke-virtual {v1, v3, v4, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 375
    move-result-wide v2

    .line 376
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 391
    move-result-wide v4

    .line 392
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    goto/16 :goto_0

    .line 405
    :cond_1
    const-string/jumbo v1, "month_over"

    .line 408
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_2

    .line 414
    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 416
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 419
    move-result-object v1

    .line 420
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 423
    move-result-object v1

    .line 424
    const-string v2, "G-Mobile is the carriers name who this plan belongs to"

    .line 426
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 429
    move-result-object v1

    .line 430
    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 432
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 435
    move-result-wide v3

    .line 436
    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 439
    move-result-object v1

    .line 440
    const-wide/16 v3, 0x6

    .line 442
    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    .line 445
    move-result-wide v3

    .line 446
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 449
    move-result-object v11

    .line 450
    invoke-virtual {v11, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 453
    move-result-object v11

    .line 454
    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 457
    move-result-object v11

    .line 458
    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    .line 461
    move-result-wide v11

    .line 462
    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 475
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 478
    move-result-object v1

    .line 479
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 482
    move-result-object v1

    .line 483
    const-string v3, "G-Mobile, Throttled after limit"

    .line 485
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 492
    move-result-wide v3

    .line 493
    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 500
    move-result-wide v3

    .line 501
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 504
    move-result-object v10

    .line 505
    invoke-virtual {v10, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 508
    move-result-object v10

    .line 509
    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 512
    move-result-object v10

    .line 513
    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    .line 516
    move-result-wide v10

    .line 517
    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 524
    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 530
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 533
    move-result-object v1

    .line 534
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 537
    move-result-object v1

    .line 538
    const-string v3, "G-Mobile, No data connection after limit"

    .line 540
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 547
    move-result-wide v3

    .line 548
    invoke-virtual {v1, v3, v4, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 551
    move-result-object v1

    .line 552
    invoke-virtual {v2, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    .line 555
    move-result-wide v2

    .line 556
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 559
    move-result-object v4

    .line 560
    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 563
    move-result-object v4

    .line 564
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 567
    move-result-object v4

    .line 568
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 571
    move-result-wide v4

    .line 572
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 579
    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    goto/16 :goto_0

    .line 585
    :cond_2
    const-string/jumbo v1, "month_none"

    .line 588
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    move-result v1

    .line 592
    if-eqz v1, :cond_3

    .line 594
    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 596
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 599
    move-result-object v1

    .line 600
    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 603
    move-result-object v1

    .line 604
    const-string v2, "G-Mobile"

    .line 606
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 613
    move-result-object v1

    .line 614
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    goto/16 :goto_0

    .line 619
    :cond_3
    const-string/jumbo v1, "prepaid"

    .line 622
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    move-result v1

    .line 626
    const-wide/16 v11, 0x64

    .line 628
    const-wide/16 v13, 0x200

    .line 630
    const-wide/16 v2, 0x3

    .line 632
    const-wide/16 v5, 0xa

    .line 634
    const-wide/16 v7, 0x14

    .line 636
    if-eqz v1, :cond_4

    .line 638
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {v1, v7, v8}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    .line 645
    move-result-object v1

    .line 646
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 649
    move-result-object v4

    .line 650
    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    .line 653
    move-result-object v4

    .line 654
    invoke-static {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 657
    move-result-object v1

    .line 658
    const-string v4, "G-Mobile"

    .line 660
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 663
    move-result-object v1

    .line 664
    sget-object v4, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 666
    invoke-virtual {v4, v13, v14}, Landroid/util/DataUnit;->toBytes(J)J

    .line 669
    move-result-wide v5

    .line 670
    invoke-virtual {v1, v5, v6, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v4, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    .line 677
    move-result-wide v4

    .line 678
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 681
    move-result-object v6

    .line 682
    invoke-virtual {v6, v2, v3}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 689
    move-result-object v2

    .line 690
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 693
    move-result-wide v2

    .line 694
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 701
    move-result-object v1

    .line 702
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    goto/16 :goto_0

    .line 707
    :cond_4
    const-string/jumbo v1, "prepaid_crazy"

    .line 710
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    move-result v1

    .line 714
    if-eqz v1, :cond_5

    .line 716
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 719
    move-result-object v1

    .line 720
    invoke-virtual {v1, v7, v8}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    .line 723
    move-result-object v1

    .line 724
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    .line 731
    move-result-object v4

    .line 732
    invoke-static {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 735
    move-result-object v1

    .line 736
    const-string v4, "G-Mobile Anytime"

    .line 738
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 741
    move-result-object v1

    .line 742
    sget-object v4, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 744
    invoke-virtual {v4, v13, v14}, Landroid/util/DataUnit;->toBytes(J)J

    .line 747
    move-result-wide v13

    .line 748
    invoke-virtual {v1, v13, v14, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 751
    move-result-object v1

    .line 752
    invoke-virtual {v4, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    .line 755
    move-result-wide v11

    .line 756
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 759
    move-result-object v9

    .line 760
    invoke-virtual {v9, v2, v3}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 767
    move-result-object v2

    .line 768
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 771
    move-result-wide v2

    .line 772
    invoke-virtual {v1, v11, v12, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 775
    move-result-object v1

    .line 776
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 786
    move-result-object v1

    .line 787
    invoke-virtual {v1, v5, v6}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    .line 790
    move-result-object v1

    .line 791
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 794
    move-result-object v2

    .line 795
    invoke-virtual {v2, v7, v8}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    .line 798
    move-result-object v2

    .line 799
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 802
    move-result-object v1

    .line 803
    const-string v2, "G-Mobile Nickel Nights"

    .line 805
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 808
    move-result-object v1

    .line 809
    const-string v2, "5\u00a2/GB between 1-5AM"

    .line 811
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 814
    move-result-object v1

    .line 815
    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 817
    const-wide/16 v11, 0x5

    .line 819
    invoke-virtual {v2, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    .line 822
    move-result-wide v11

    .line 823
    invoke-virtual {v1, v11, v12, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 826
    move-result-object v1

    .line 827
    const-wide/16 v11, 0xf

    .line 829
    invoke-virtual {v4, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    .line 832
    move-result-wide v11

    .line 833
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 836
    move-result-object v3

    .line 837
    const-wide/16 v13, 0x1e

    .line 839
    invoke-virtual {v3, v13, v14}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 842
    move-result-object v3

    .line 843
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 850
    move-result-wide v13

    .line 851
    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 858
    move-result-object v1

    .line 859
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 865
    move-result-object v1

    .line 866
    invoke-virtual {v1, v5, v6}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    .line 869
    move-result-object v1

    .line 870
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 873
    move-result-object v3

    .line 874
    invoke-virtual {v3, v7, v8}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    .line 877
    move-result-object v3

    .line 878
    invoke-static {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 881
    move-result-object v1

    .line 882
    const-string v3, "G-Mobile Bonus 3G"

    .line 884
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 887
    move-result-object v1

    .line 888
    const-string v3, "Unlimited 3G data"

    .line 890
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 893
    move-result-object v1

    .line 894
    const-wide/16 v5, 0x1

    .line 896
    invoke-virtual {v2, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    .line 899
    move-result-wide v2

    .line 900
    invoke-virtual {v1, v2, v3, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 903
    move-result-object v1

    .line 904
    const-wide/16 v2, 0x12c

    .line 906
    invoke-virtual {v4, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    .line 909
    move-result-wide v2

    .line 910
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 913
    move-result-object v4

    .line 914
    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 917
    move-result-object v4

    .line 918
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 921
    move-result-object v4

    .line 922
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 925
    move-result-wide v4

    .line 926
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 929
    move-result-object v1

    .line 930
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 933
    move-result-object v1

    .line 934
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    goto :goto_0

    .line 938
    :cond_5
    const-string/jumbo v1, "unlimited"

    .line 941
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 944
    move-result v1

    .line 945
    if-eqz v1, :cond_6

    .line 947
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 950
    move-result-object v1

    .line 951
    invoke-virtual {v1, v7, v8}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    .line 954
    move-result-object v1

    .line 955
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 958
    move-result-object v4

    .line 959
    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    .line 962
    move-result-object v4

    .line 963
    invoke-static {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 966
    move-result-object v1

    .line 967
    const-string v4, "G-Mobile Awesome"

    .line 969
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 972
    move-result-object v1

    .line 973
    const-wide v4, 0x7fffffffffffffffL

    .line 978
    invoke-virtual {v1, v4, v5, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 981
    move-result-object v1

    .line 982
    sget-object v4, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 984
    const-wide/16 v5, 0x32

    .line 986
    invoke-virtual {v4, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    .line 989
    move-result-wide v4

    .line 990
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 993
    move-result-object v6

    .line 994
    invoke-virtual {v6, v2, v3}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    .line 997
    move-result-object v2

    .line 998
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 1001
    move-result-object v2

    .line 1002
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 1005
    move-result-wide v2

    .line 1006
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 1009
    move-result-object v1

    .line 1010
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    .line 1013
    move-result-object v1

    .line 1014
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1020
    move-result v1

    .line 1021
    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    .line 1023
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1026
    move-result-object v0

    .line 1027
    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 1029
    return-object v0

    .line 1030
    :cond_7
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 1032
    monitor-enter v4

    .line 1033
    :try_start_0
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 1035
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1038
    move-result-object v5

    .line 1039
    check-cast v5, Ljava/lang/String;

    .line 1041
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1044
    move-result v6

    .line 1045
    if-nez v6, :cond_9

    .line 1047
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 1050
    move-result v6

    .line 1051
    const/16 v7, 0x3e8

    .line 1053
    if-eq v6, v7, :cond_9

    .line 1055
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 1058
    move-result v6

    .line 1059
    const/16 v7, 0x3e9

    .line 1061
    if-ne v6, v7, :cond_8

    .line 1063
    goto :goto_1

    .line 1064
    :cond_8
    const-string v0, "NetworkPolicy"

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1068
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    const-string v2, " doesn\'t match owner "

    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1085
    move-result-object v1

    .line 1086
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    monitor-exit v4

    .line 1090
    const/4 v0, 0x0

    .line 1091
    return-object v0

    .line 1092
    :catchall_0
    move-exception v0

    .line 1093
    goto :goto_2

    .line 1094
    :cond_9
    :goto_1
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 1096
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1099
    move-result-object v0

    .line 1100
    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 1102
    monitor-exit v4

    .line 1103
    return-object v0

    .line 1104
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    throw v0
.end method

.method public final getSubscriptionPlansOwner(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 30
    throw p0
.end method

.method public final getTetheringWarningBytes(Ljava/lang/String;)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const-wide/16 p0, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    move-result-wide p0

    .line 24
    :goto_0
    return-wide p0
.end method

.method public final getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-wide/16 p0, 0x0

    .line 9
    return-wide p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 12
    move-object v1, p1

    .line 13
    move-wide v2, p2

    .line 14
    move-wide v4, p4

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 18
    move-result-wide p0

    .line 19
    return-wide p0
.end method

.method public final getUidPolicy(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public getUidStateForTest(I)Landroid/net/NetworkPolicyManager$UidState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/net/NetworkPolicyManager$UidState;

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getUidsWithPolicy(I)[I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy_enforcePermission()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [I

    .line 7
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 29
    move-result v4

    .line 30
    if-nez p1, :cond_0

    .line 32
    if-eqz v4, :cond_1

    .line 34
    :cond_0
    and-int/2addr v4, p1

    .line 35
    if-eqz v4, :cond_2

    .line 37
    :cond_1
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 40
    move-result-object v1

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    monitor-exit v2

    .line 48
    return-object v1

    .line 49
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-wide p2

    .line 4
    :cond_0
    const-string/jumbo v0, "data_warning_threshold_bytes_long"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, -0x2

    .line 13
    cmp-long p1, v0, v2

    .line 15
    const-wide/16 v2, -0x1

    .line 17
    if-nez p1, :cond_1

    .line 19
    return-wide v2

    .line 20
    :cond_1
    cmp-long p1, v0, v2

    .line 22
    if-nez p1, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    .line 27
    move-result-wide p0

    .line 28
    return-wide p0

    .line 29
    :cond_2
    const-wide/16 p0, 0x0

    .line 31
    cmp-long p0, v0, p0

    .line 33
    if-gez p0, :cond_3

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    const-string p1, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    const-string p1, "NetworkPolicy"

    .line 51
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-wide p2

    .line 55
    :cond_3
    return-wide v0
.end method

.method public final handleBlockedReasonsChanged(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p3

    .line 12
    const/16 v0, 0x15

    .line 14
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    return-void
.end method

.method public final handleDeviceIdleModeDisabledUL()V
    .locals 12

    .line 1
    const-string/jumbo v0, "handleDeviceIdleModeDisabledUL"

    .line 4
    const-wide/32 v1, 0x200000

    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    if-ge v5, v4, :cond_3

    .line 27
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    move-result v6

    .line 33
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 41
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 43
    and-int/lit8 v9, v8, 0x2

    .line 45
    if-nez v9, :cond_0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    and-int/lit8 v8, v8, -0x3

    .line 50
    iput v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 52
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 54
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 57
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 59
    if-eqz v9, :cond_1

    .line 61
    const-string v9, "NetworkPolicy"

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string/jumbo v11, "handleDeviceIdleModeDisabled("

    .line 71
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v11, "); newUidBlockedState="

    .line 79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v11, ", oldEffectiveBlockedReasons="

    .line 87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v10

    .line 97
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_4

    .line 103
    :cond_1
    :goto_1
    iget v9, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 105
    if-eq v8, v9, :cond_2

    .line 107
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 110
    move-result-object v9

    .line 111
    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 113
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 115
    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 117
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    .line 120
    move-result v8

    .line 121
    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 123
    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 126
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 128
    iget v7, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 130
    invoke-virtual {v8, v6, v7}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 133
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_4

    .line 143
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 145
    const/16 v3, 0x17

    .line 147
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    goto :goto_3

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    goto :goto_5

    .line 157
    :cond_4
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    return-void

    .line 161
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    throw p0
.end method

.method public final handleNetworkPoliciesUpdateAL(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 19
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 28
    return-void
.end method

.method public final handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_2

    .line 8
    check-cast p2, Landroid/util/ArraySet;

    .line 10
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/Integer;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v2

    .line 55
    move-object v3, p2

    .line 56
    check-cast v3, Landroid/util/ArraySet;

    .line 58
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    check-cast p2, Landroid/util/ArraySet;

    .line 70
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p2

    .line 74
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Integer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result v1

    .line 90
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 99
    goto :goto_2

    .line 100
    :cond_6
    return-void
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    move-result-object v4

    .line 20
    move-object v1, p0

    .line 21
    move-object v5, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final hasInternetPermissionUL(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 13
    const-string v2, "android.permission.INTERNET"

    .line 15
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 21
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 26
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v1

    .line 30
    :catch_0
    return v0
.end method

.method public final isAllowlistedFromPowerSaveUL(IZ)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v0, v2

    .line 27
    :goto_1
    if-nez p2, :cond_4

    .line 29
    if-nez v0, :cond_3

    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 34
    move-result p1

    .line 35
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v2, v3

    .line 45
    :cond_3
    :goto_2
    move v0, v2

    .line 46
    :cond_4
    return v0
.end method

.method public isRestrictedModeEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 9
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-wide v2, v0, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-wide/16 v2, -0x1

    .line 37
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 41
    if-eqz p1, :cond_2

    .line 43
    iget-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 45
    cmp-long p1, v4, v2

    .line 47
    if-ltz p1, :cond_2

    .line 49
    iget p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 51
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    .line 53
    invoke-static {p1, p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 56
    move-result p0

    .line 57
    monitor-exit v1

    .line 58
    return p0

    .line 59
    :cond_2
    monitor-exit v1

    .line 60
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public isUidForegroundOnRestrictPowerUL(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 9
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-wide v2, v0, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-wide/16 v2, -0x1

    .line 37
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 41
    if-eqz p1, :cond_2

    .line 43
    iget-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 45
    cmp-long p1, v4, v2

    .line 47
    if-ltz p1, :cond_2

    .line 49
    iget p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 51
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    .line 53
    invoke-static {p1, p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    .line 56
    move-result p0

    .line 57
    monitor-exit v1

    .line 58
    return p0

    .line 59
    :cond_2
    monitor-exit v1

    .line 60
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public isUidIdle(I)Z
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result p0

    return p0
.end method

.method public final isUidIdle(II)Z
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    monitor-exit v0

    return v2

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz p2, :cond_3

    .line 10
    array-length v1, p2

    move v9, v2

    :goto_0
    if-ge v9, v1, :cond_3

    aget-object v4, p2, v9

    .line 11
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    check-cast v3, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 12
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 13
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move v5, p1

    move v6, v0

    .line 15
    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 16
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isUidNetworkingBlocked(IZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 9
    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    .line 11
    const-string v4, "NetworkPolicy"

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 27
    const/4 v4, 0x0

    .line 28
    if-nez v3, :cond_0

    .line 30
    move v5, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v5, v3, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 34
    :goto_0
    if-nez p2, :cond_1

    .line 36
    const p2, 0xffff

    .line 39
    and-int/2addr v5, p2

    .line 40
    :cond_1
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 42
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 45
    const/4 v7, 0x1

    .line 46
    if-ne v6, v7, :cond_2

    .line 48
    sget-object v6, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 50
    invoke-virtual {v6, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 53
    move-result v6

    .line 54
    and-int/lit8 v6, v6, 0x2

    .line 56
    if-eqz v6, :cond_2

    .line 58
    and-int/lit16 v5, v5, 0x100

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    iget v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    .line 65
    if-nez v6, :cond_3

    .line 67
    sget-object v6, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 69
    invoke-virtual {v6, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 72
    move-result v6

    .line 73
    and-int/2addr v6, v7

    .line 74
    if-eqz v6, :cond_3

    .line 76
    and-int/lit16 v5, v5, 0x200

    .line 78
    :cond_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 81
    invoke-virtual {p2, p1, v3}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(ILcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 84
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 87
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 90
    if-eqz v5, :cond_4

    .line 92
    move v4, v7

    .line 93
    :cond_4
    return v4

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    throw p0

    .line 98
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    throw p0
.end method

.method public final isUidRestrictedOnMeteredNetworks(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 15
    const/4 p1, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 18
    move p0, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 22
    :goto_0
    const/high16 v1, -0x10000

    .line 24
    and-int/2addr p0, v1

    .line 25
    if-eqz p0, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final isUidValidForAllowlistRulesUL(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isUidValidForDenylistRulesUL(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x3f5

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const/16 v0, 0x3fb

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "NetworkPolicy"

    .line 7
    const-string/jumbo v1, "maybeUpdateCarrierPolicyCycleAL()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    new-instance v0, Landroid/net/NetworkIdentity$Builder;

    .line 15
    invoke-direct {v0}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p2}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p2, v0}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, v0}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 43
    move-result-object p2

    .line 44
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 49
    move-result v2

    .line 50
    sub-int/2addr v2, v0

    .line 51
    :goto_0
    if-ltz v2, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/net/NetworkTemplate;

    .line 61
    invoke-virtual {v0, p2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/net/NetworkPolicy;

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 78
    move-result v0

    .line 79
    or-int/2addr v0, v1

    .line 80
    move v1, v0

    .line 81
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return v1
.end method

.method public final normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_4

    .line 10
    aget-object v2, p1, v1

    .line 12
    if-nez v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 17
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 19
    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizeTemplate(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    .line 22
    move-result-object v3

    .line 23
    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 25
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/net/NetworkPolicy;

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    .line 38
    move-result v4

    .line 39
    if-lez v4, :cond_3

    .line 41
    :cond_1
    if-eqz v3, :cond_2

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    const-string v5, "Normalization replaced "

    .line 47
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, " with "

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    const-string v4, "NetworkPolicy"

    .line 67
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 72
    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 74
    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    return-void
.end method

.method public final notifyStatsProviderWarningOrLimitReached()V
    .locals 2

    .line 1
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 15
    if-nez v1, :cond_0

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 24
    const/16 v0, 0x14

    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "unable to find policy for "

    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 6
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 9
    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 15
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/net/NetworkPolicy;

    .line 24
    if-eqz v5, :cond_3

    .line 26
    const/16 p1, 0x22

    .line 28
    if-eq p2, p1, :cond_2

    .line 30
    const/16 p1, 0x23

    .line 32
    if-eq p2, p1, :cond_1

    .line 34
    const/16 p1, 0x2d

    .line 36
    if-ne p2, p1, :cond_0

    .line 38
    iput-wide v1, v5, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string/jumbo p1, "unexpected type"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    :cond_1
    iput-wide v1, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput-wide v1, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 57
    :goto_0
    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 61
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    return-void

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    throw p0

    .line 86
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    throw p0
.end method

.method public final readFirewallPolicyAL()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3
    const-string v1, "NetworkPolicy"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "readFirewallPolicyAL"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 15
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 18
    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    .line 21
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 28
    move-result-object v2

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eq v3, v4, :cond_3

    .line 36
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x2

    .line 41
    if-ne v3, v5, :cond_1

    .line 43
    const-string/jumbo v3, "firewall-policy"

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 52
    const-string/jumbo v3, "uid"

    .line 55
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 58
    move-result v3

    .line 59
    const-string/jumbo v4, "policy"

    .line 62
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 65
    move-result v4

    .line 66
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 76
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_4

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string/jumbo v5, "unable to apply policy to UID "

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "; ignoring"

    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 114
    goto :goto_3

    .line 115
    :goto_2
    :try_start_1
    const-string/jumbo v2, "problem reading firewall policy"

    .line 118
    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    goto :goto_1

    .line 122
    :catch_1
    const-string/jumbo p0, "miss firewall policy file"

    .line 125
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_1

    .line 129
    :goto_3
    return-void

    .line 130
    :goto_4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 133
    throw p0
.end method

.method public final readPolicyAL()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 5
    const-string v2, "NetworkPolicy"

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string/jumbo v1, "readPolicyAL()"

    .line 12
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 20
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 25
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 30
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 32
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    :try_start_0
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 39
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 42
    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 46
    move-result-object v6

    .line 47
    new-instance v7, Landroid/util/SparseBooleanArray;

    .line 49
    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 52
    move v8, v1

    .line 53
    const/4 v9, 0x0

    .line 54
    :goto_0
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 57
    move-result v10

    .line 58
    if-eq v10, v1, :cond_1d

    .line 60
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 63
    move-result-object v11
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const-string/jumbo v12, "whitelist"

    .line 67
    const/4 v13, 0x3

    .line 68
    const/4 v14, 0x2

    .line 69
    if-ne v10, v14, :cond_1c

    .line 71
    :try_start_2
    const-string/jumbo v10, "policy-list"

    .line 74
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_3

    .line 80
    const-string/jumbo v8, "version"

    .line 83
    invoke-static {v6, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 86
    move-result v8

    .line 87
    sget-boolean v10, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 89
    if-eqz v10, :cond_1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    if-lt v8, v13, :cond_2

    .line 94
    const-string/jumbo v10, "restrictBackground"

    .line 97
    invoke-static {v6, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 100
    move-result v10

    .line 101
    if-eqz v10, :cond_2

    .line 103
    move v10, v1

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    move-object v3, v5

    .line 107
    goto/16 :goto_14

    .line 109
    :catch_0
    move-exception v0

    .line 110
    move-object v3, v5

    .line 111
    goto/16 :goto_f

    .line 113
    :catch_1
    move-object v3, v5

    .line 114
    goto/16 :goto_11

    .line 116
    :cond_2
    const/4 v10, 0x0

    .line 117
    :goto_1
    iput-boolean v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 119
    move-object v4, v3

    .line 120
    goto/16 :goto_c

    .line 122
    :cond_3
    const-string/jumbo v10, "network-policy"

    .line 125
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v10

    .line 129
    if-eqz v10, :cond_11

    .line 131
    const-string/jumbo v10, "networkTemplate"

    .line 134
    invoke-static {v6, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 137
    move-result v10

    .line 138
    const-string/jumbo v11, "subscriberId"

    .line 141
    invoke-interface {v6, v3, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v11

    .line 145
    const/16 v12, 0x9

    .line 147
    if-lt v8, v12, :cond_4

    .line 149
    const-string/jumbo v12, "networkId"

    .line 152
    invoke-interface {v6, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v12

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    move-object v12, v3

    .line 158
    :goto_2
    const/16 v13, 0xd

    .line 160
    if-lt v8, v13, :cond_5

    .line 162
    const-string/jumbo v13, "subscriberIdMatchRule"

    .line 165
    invoke-static {v6, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 168
    move-result v13

    .line 169
    const-string/jumbo v15, "templateMetered"

    .line 172
    invoke-static {v6, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 175
    move-result v15

    .line 176
    goto :goto_4

    .line 177
    :cond_5
    if-ne v10, v1, :cond_6

    .line 179
    const-string v10, "Update template match rule from mobile to carrier and force to metered"

    .line 181
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v10, 0xa

    .line 186
    move v15, v1

    .line 187
    :goto_3
    const/4 v13, 0x0

    .line 188
    goto :goto_4

    .line 189
    :cond_6
    const/4 v15, -0x1

    .line 190
    goto :goto_3

    .line 191
    :goto_4
    const/16 v4, 0xb

    .line 193
    if-lt v8, v4, :cond_7

    .line 195
    const-string/jumbo v4, "cycleStart"

    .line 198
    invoke-static {v6, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v4

    .line 202
    const-string/jumbo v1, "cycleEnd"

    .line 205
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    const-string/jumbo v14, "cyclePeriod"

    .line 212
    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v14

    .line 216
    new-instance v3, Landroid/util/RecurrenceRule;

    .line 218
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    .line 221
    move-result-object v4

    .line 222
    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    .line 225
    move-result-object v1

    .line 226
    invoke-static {v14}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    .line 229
    move-result-object v14

    .line 230
    invoke-direct {v3, v4, v1, v14}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 233
    move-object/from16 v19, v3

    .line 235
    const/4 v4, 0x0

    .line 236
    goto :goto_6

    .line 237
    :cond_7
    const-string/jumbo v1, "cycleDay"

    .line 240
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 243
    move-result v1

    .line 244
    const/4 v3, 0x6

    .line 245
    if-lt v8, v3, :cond_8

    .line 247
    const-string/jumbo v3, "cycleTimezone"

    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-interface {v6, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    move-result-object v3

    .line 255
    goto :goto_5

    .line 256
    :cond_8
    const/4 v4, 0x0

    .line 257
    const-string v3, "UTC"

    .line 259
    :goto_5
    invoke-static {v3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 262
    move-result-object v3

    .line 263
    invoke-static {v1, v3}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    .line 266
    move-result-object v3

    .line 267
    move-object/from16 v19, v3

    .line 269
    :goto_6
    const-string/jumbo v1, "warningBytes"

    .line 272
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 275
    move-result-wide v20

    .line 276
    const-string/jumbo v1, "limitBytes"

    .line 279
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 282
    move-result-wide v22

    .line 283
    const-wide/16 v17, -0x1

    .line 285
    const/4 v1, 0x5

    .line 286
    if-lt v8, v1, :cond_9

    .line 288
    const-string/jumbo v3, "lastLimitSnooze"

    .line 291
    invoke-static {v6, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 294
    move-result-wide v24

    .line 295
    :goto_7
    move-wide/from16 v26, v24

    .line 297
    goto :goto_8

    .line 298
    :cond_9
    const/4 v3, 0x2

    .line 299
    if-lt v8, v3, :cond_a

    .line 301
    const-string/jumbo v3, "lastSnooze"

    .line 304
    invoke-static {v6, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 307
    move-result-wide v24

    .line 308
    goto :goto_7

    .line 309
    :cond_a
    move-wide/from16 v26, v17

    .line 311
    :goto_8
    const/4 v3, 0x4

    .line 312
    if-lt v8, v3, :cond_b

    .line 314
    const-string/jumbo v3, "metered"

    .line 317
    invoke-static {v6, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 320
    move-result v3

    .line 321
    move/from16 v28, v3

    .line 323
    goto :goto_9

    .line 324
    :cond_b
    const/4 v3, 0x1

    .line 325
    if-eq v10, v3, :cond_c

    .line 327
    const/16 v28, 0x0

    .line 329
    goto :goto_9

    .line 330
    :cond_c
    const/16 v28, 0x1

    .line 332
    :goto_9
    if-lt v8, v1, :cond_d

    .line 334
    const-string/jumbo v1, "lastWarningSnooze"

    .line 337
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 340
    move-result-wide v16

    .line 341
    move-wide/from16 v24, v16

    .line 343
    goto :goto_a

    .line 344
    :cond_d
    move-wide/from16 v24, v17

    .line 346
    :goto_a
    const/4 v1, 0x7

    .line 347
    if-lt v8, v1, :cond_e

    .line 349
    const-string/jumbo v1, "inferred"

    .line 352
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 355
    move-result v1

    .line 356
    move/from16 v29, v1

    .line 358
    goto :goto_b

    .line 359
    :cond_e
    const/16 v29, 0x0

    .line 361
    :goto_b
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    .line 363
    invoke-direct {v1, v10}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 366
    invoke-virtual {v1, v15}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 369
    move-result-object v1

    .line 370
    if-nez v13, :cond_f

    .line 372
    new-instance v3, Landroid/util/ArraySet;

    .line 374
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 377
    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v1, v3}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 383
    :cond_f
    if-eqz v12, :cond_10

    .line 385
    invoke-static {v12}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v1, v3}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 392
    :cond_10
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_18

    .line 402
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 404
    new-instance v10, Landroid/net/NetworkPolicy;

    .line 406
    move-object/from16 v17, v10

    .line 408
    move-object/from16 v18, v1

    .line 410
    invoke-direct/range {v17 .. v29}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 413
    invoke-virtual {v3, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    goto/16 :goto_c

    .line 418
    :cond_11
    move-object v4, v3

    .line 419
    const-string/jumbo v1, "uid-policy"

    .line 422
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    move-result v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    const-string v3, "; ignoring"

    .line 428
    const-string/jumbo v10, "unable to apply policy to UID "

    .line 431
    const-string/jumbo v13, "policy"

    .line 434
    const-string/jumbo v14, "uid"

    .line 437
    if-eqz v1, :cond_14

    .line 439
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 441
    if-eqz v1, :cond_12

    .line 443
    goto/16 :goto_c

    .line 445
    :cond_12
    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 448
    move-result v1

    .line 449
    invoke-static {v6, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 452
    move-result v11

    .line 453
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 456
    move-result v12

    .line 457
    if-eqz v12, :cond_13

    .line 459
    invoke-virtual {v0, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(II)V

    .line 462
    goto :goto_c

    .line 463
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    .line 465
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    move-result-object v1

    .line 481
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    goto :goto_c

    .line 485
    :cond_14
    const-string v1, "app-policy"

    .line 487
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_17

    .line 493
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 495
    if-eqz v1, :cond_15

    .line 497
    goto :goto_c

    .line 498
    :cond_15
    const-string v1, "appId"

    .line 500
    invoke-static {v6, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 503
    move-result v1

    .line 504
    invoke-static {v6, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 507
    move-result v11

    .line 508
    const/4 v12, 0x0

    .line 509
    invoke-static {v12, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 512
    move-result v1

    .line 513
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 516
    move-result v12

    .line 517
    if-eqz v12, :cond_16

    .line 519
    invoke-virtual {v0, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(II)V

    .line 522
    goto :goto_c

    .line 523
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    .line 525
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    move-result-object v1

    .line 541
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    goto :goto_c

    .line 545
    :cond_17
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_1a

    .line 551
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 553
    if-eqz v1, :cond_19

    .line 555
    :cond_18
    :goto_c
    move-object v3, v4

    .line 556
    const/4 v1, 0x1

    .line 557
    goto/16 :goto_0

    .line 559
    :cond_19
    const/4 v9, 0x1

    .line 560
    goto :goto_c

    .line 561
    :cond_1a
    const-string/jumbo v1, "restrict-background"

    .line 564
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    move-result v1

    .line 568
    if-eqz v1, :cond_1b

    .line 570
    if-eqz v9, :cond_1b

    .line 572
    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 575
    move-result v1

    .line 576
    const/4 v3, 0x1

    .line 577
    invoke-virtual {v7, v1, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 580
    goto :goto_c

    .line 581
    :cond_1b
    const-string/jumbo v1, "revoked-restrict-background"

    .line 584
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_18

    .line 590
    if-eqz v9, :cond_18

    .line 592
    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 595
    move-result v1

    .line 596
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 598
    const/4 v10, 0x1

    .line 599
    invoke-virtual {v3, v1, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 602
    goto :goto_c

    .line 603
    :cond_1c
    move-object v4, v3

    .line 604
    if-ne v10, v13, :cond_18

    .line 606
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_18

    .line 612
    const/4 v9, 0x0

    .line 613
    goto :goto_c

    .line 614
    :cond_1d
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 617
    move-result v1

    .line 618
    const/4 v12, 0x0

    .line 619
    :goto_d
    if-ge v12, v1, :cond_21

    .line 621
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 624
    move-result v3

    .line 625
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 627
    const/4 v6, 0x0

    .line 628
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 631
    move-result v4

    .line 632
    and-int/lit8 v6, v4, 0x1

    .line 634
    if-eqz v6, :cond_1e

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    .line 638
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    const-string/jumbo v8, "ignoring restrict-background-allowlist for "

    .line 644
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    const-string v3, " because its policy is "

    .line 652
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    .line 658
    move-result-object v3

    .line 659
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    move-result-object v3

    .line 666
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    goto :goto_e

    .line 670
    :cond_1e
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    .line 673
    move-result v6

    .line 674
    if-eqz v6, :cond_20

    .line 676
    or-int/lit8 v4, v4, 0x4

    .line 678
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 680
    if-eqz v6, :cond_1f

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    .line 684
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    const-string/jumbo v8, "new policy for "

    .line 690
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    const-string v8, ": "

    .line 698
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    .line 704
    move-result-object v8

    .line 705
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    move-result-object v6

    .line 712
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_1f
    invoke-virtual {v0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(II)V

    .line 718
    goto :goto_e

    .line 719
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 721
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    const-string/jumbo v6, "unable to update policy on UID "

    .line 727
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    move-result-object v3

    .line 737
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 742
    goto :goto_d

    .line 743
    :cond_21
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 746
    goto :goto_13

    .line 747
    :catchall_1
    move-exception v0

    .line 748
    move-object v4, v3

    .line 749
    goto :goto_14

    .line 750
    :catch_2
    move-exception v0

    .line 751
    move-object v4, v3

    .line 752
    goto :goto_f

    .line 753
    :catch_3
    move-object v4, v3

    .line 754
    goto :goto_11

    .line 755
    :goto_f
    :try_start_4
    const-string/jumbo v1, "problem reading network policy"

    .line 758
    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 761
    :goto_10
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 764
    goto :goto_13

    .line 765
    :catchall_2
    move-exception v0

    .line 766
    goto :goto_14

    .line 767
    :goto_11
    :try_start_5
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 769
    if-eqz v1, :cond_22

    .line 771
    goto :goto_10

    .line 772
    :cond_22
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 774
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 777
    move-result-object v1

    .line 778
    const-string/jumbo v2, "default_restrict_background_data"

    .line 781
    const/4 v4, 0x0

    .line 782
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 785
    move-result v1

    .line 786
    const/4 v2, 0x1

    .line 787
    if-ne v1, v2, :cond_23

    .line 789
    move v1, v2

    .line 790
    goto :goto_12

    .line 791
    :cond_23
    move v1, v4

    .line 792
    :goto_12
    iput-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 794
    goto :goto_10

    .line 795
    :goto_13
    return-void

    .line 796
    :goto_14
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 799
    throw v0
.end method

.method public final registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    .line 6
    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 20
    return-void
.end method

.method public final removeFirewallRules(II)V
    .locals 5

    .line 1
    const-string/jumbo v0, "remove FIREWALL_POLICY_REJECT_WIFI for UID:"

    .line 4
    const-string/jumbo v1, "remove FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    .line 7
    and-int/lit8 v2, p2, 0x1

    .line 9
    const-string v3, "NetworkPolicy"

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 16
    invoke-interface {v2, p1, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 36
    if-eqz p2, :cond_1

    .line 38
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 40
    invoke-interface {p0, p1, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    :cond_1
    return-void
.end method

.method public final removeUidPolicy(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy_enforcePermission()V

    .line 4
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    move-result v1

    .line 20
    not-int p2, p2

    .line 21
    and-int/2addr p2, v1

    .line 22
    if-eq v1, p2, :cond_0

    .line 24
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(III)V

    .line 27
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 29
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string/jumbo p2, "cannot apply policy to UID "

    .line 44
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public final removeUidStateUL(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_9

    .line 10
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/net/NetworkPolicyManager$UidState;

    .line 18
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 23
    if-eqz v2, :cond_9

    .line 25
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 33
    move-result v2

    .line 34
    if-eq v0, v2, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz v0, :cond_3

    .line 44
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 68
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 70
    if-eqz v0, :cond_6

    .line 72
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 74
    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 79
    move-result v0

    .line 80
    const/4 v3, 0x3

    .line 81
    if-nez v0, :cond_5

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    :goto_2
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 97
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 99
    if-eqz v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 103
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForBackgroundUL(I)V

    .line 109
    :cond_7
    const/4 v0, -0x1

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 113
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 115
    if-eqz v0, :cond_8

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    .line 120
    :cond_8
    return v2

    .line 121
    :cond_9
    return v1
.end method

.method public final removeUserStateUL(IZZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 3
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 8
    if-nez v2, :cond_0

    .line 10
    iget v2, v0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_7

    .line 19
    :cond_0
    :goto_0
    const-string v2, "NetworkPolicy"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    const-string v4, "Remove state for u"

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 40
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 50
    const/4 v2, 0x5

    .line 51
    iput v2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 53
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    move-result-wide v2

    .line 59
    iput-wide v2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 64
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x1

    .line 69
    sub-int/2addr v0, v1

    .line 70
    const/4 v2, 0x0

    .line 71
    move v3, v2

    .line 72
    :goto_2
    if-ltz v0, :cond_4

    .line 74
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 76
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 79
    move-result v4

    .line 80
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 83
    move-result v4

    .line 84
    if-ne v4, p1, :cond_3

    .line 86
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 88
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 91
    move v3, v1

    .line 92
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    new-array v0, v2, [I

    .line 97
    move v4, v2

    .line 98
    :goto_3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 100
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 103
    move-result v5

    .line 104
    if-ge v4, v5, :cond_6

    .line 106
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 108
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 111
    move-result v5

    .line 112
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 115
    move-result v6

    .line 116
    if-ne v6, p1, :cond_5

    .line 118
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 121
    move-result-object v0

    .line 122
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    array-length p1, v0

    .line 126
    if-lez p1, :cond_8

    .line 128
    array-length p1, v0

    .line 129
    :goto_4
    if-ge v2, p1, :cond_7

    .line 131
    aget v3, v0, v2

    .line 133
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 135
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    move v3, v1

    .line 142
    :cond_8
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 144
    monitor-enter p1

    .line 145
    if-eqz p3, :cond_9

    .line 147
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 150
    goto :goto_5

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    goto :goto_6

    .line 153
    :cond_9
    :goto_5
    if-eqz p2, :cond_a

    .line 155
    if-eqz v3, :cond_a

    .line 157
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 160
    :cond_a
    monitor-exit p1

    .line 161
    return v3

    .line 162
    :goto_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    throw p0

    .line 164
    :goto_7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    throw p0
.end method

.method public final resetUidFirewallRules(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 14
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 20
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 26
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 28
    const/4 v1, 0x5

    .line 29
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 32
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 34
    const/4 v1, 0x6

    .line 35
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 38
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUseMeteredFirewallChains:Z

    .line 40
    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 44
    const/16 v1, 0xc

    .line 46
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 49
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 51
    const/16 v1, 0xb

    .line 53
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 56
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 58
    const/16 v1, 0xa

    .line 60
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 68
    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 71
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 73
    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V

    .line 76
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 78
    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 81
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 83
    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 88
    const/4 v1, 0x7

    .line 89
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    goto :goto_2

    .line 93
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v2, "problem resetting firewall uid rules for "

    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    const-string v2, "NetworkPolicy"

    .line 110
    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :catch_1
    :goto_2
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_1

    .line 119
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 122
    move-result p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    .line 126
    :cond_1
    return-void
.end method

.method public setAppIdleWhitelist(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    .line 5
    const-string v2, "NetworkPolicy"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 18
    move-result v1

    .line 19
    if-ne v1, p2, :cond_0

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 31
    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    .line 34
    if-eqz p2, :cond_1

    .line 36
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 47
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 50
    :goto_0
    const/4 p2, -0x1

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw p0
.end method

.method public final setContentIntent(Landroid/app/Notification$Builder;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 9
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/high16 v4, 0xc000000

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v3, p2

    .line 16
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    .line 27
    const/high16 v1, 0xc000000

    .line 29
    invoke-static {p0, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 36
    :goto_0
    return-void
.end method

.method public final setDeviceIdleMode(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode_enforcePermission()V

    .line 4
    const-string/jumbo v0, "setDeviceIdleMode"

    .line 7
    const-wide/32 v1, 0x200000

    .line 10
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 18
    if-ne v3, p1, :cond_0

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_4

    .line 27
    :cond_0
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 29
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 31
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 34
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 36
    if-eqz v3, :cond_2

    .line 38
    const-string/jumbo v3, "updateRulesForRestrictPowerUL"

    .line 41
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 47
    if-eqz p1, :cond_1

    .line 49
    const-string/jumbo v3, "updateRulesForRestrictPower"

    .line 52
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    .line 54
    const/4 v5, 0x2

    .line 55
    invoke-direct {v4, v5, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleDeviceIdleModeDisabledUL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    throw p0

    .line 75
    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    if-eqz p1, :cond_3

    .line 78
    :try_start_5
    const-string/jumbo p0, "net"

    .line 81
    const p1, 0x84d4

    .line 84
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 87
    goto :goto_3

    .line 88
    :catchall_2
    move-exception p0

    .line 89
    goto :goto_5

    .line 90
    :cond_3
    const-string/jumbo p0, "net"

    .line 93
    const p1, 0x84d7

    .line 96
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 102
    return-void

    .line 103
    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 105
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    throw p0
.end method

.method public final setFirewallPolicyNL(IIZ)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 5
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    :goto_0
    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writeFirewallPolicyAL()V

    .line 19
    :cond_1
    return-void
.end method

.method public final setFirewallRuleMobileData(IZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setFirewallRuleMobileData UID:"

    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    .line 8
    const-string v3, "NetworkPolicy"

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    move-result v2

    .line 23
    const-string v3, "NetworkPolicy"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, " allow:"

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, " policy:"

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    .line 57
    if-nez p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    and-int/lit8 p2, v2, 0x1

    .line 70
    if-nez p2, :cond_1

    .line 72
    or-int/lit8 p2, v2, 0x1

    .line 74
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    and-int/lit8 p2, v2, 0x1

    .line 85
    if-eqz p2, :cond_1

    .line 87
    and-int/lit8 p2, v2, -0x2

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 95
    :cond_1
    :goto_0
    monitor-exit v1

    .line 96
    return-void

    .line 97
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    .line 5
    const-string v2, "NetworkPolicy"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v1

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleMobileData(IZ)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public final setFirewallRuleWifi(IZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setFirewallRuleWifi UID:"

    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    .line 8
    const-string v3, "NetworkPolicy"

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    move-result v2

    .line 23
    const-string v3, "NetworkPolicy"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, " allow:"

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, " policy:"

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    .line 57
    const/4 v3, 0x2

    .line 58
    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    and-int/lit8 p2, v2, 0x2

    .line 71
    if-nez p2, :cond_1

    .line 73
    or-int/lit8 p2, v2, 0x2

    .line 75
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 78
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    and-int/lit8 p2, v2, 0x2

    .line 86
    if-eqz p2, :cond_1

    .line 88
    and-int/lit8 p2, v2, -0x3

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 93
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 96
    :cond_1
    :goto_0
    monitor-exit v1

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final setFirewallRuleWifiMap(Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    .line 5
    const-string v2, "NetworkPolicy"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v1

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleWifi(IZ)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public final setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 13
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 21
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31
    :try_start_5
    throw p0

    .line 32
    :goto_0
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 33
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 34
    :catchall_2
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p0
.end method

.method public final setRestrictBackground(Z)V
    .locals 8

    .line 1
    const-string/jumbo v0, "uid:"

    .line 4
    const-string/jumbo v1, "setRestrictBackground"

    .line 7
    const-wide/32 v2, 0x200000

    .line 10
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 15
    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    .line 17
    const-string v5, "NetworkPolicy"

    .line 19
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    move-result v1

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 32
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Ljava/lang/String;Z)V

    .line 48
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 66
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 69
    throw p0
.end method

.method public final setRestrictBackgroundUL(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-string v0, "Could not change Data Saver Mode on NMS to "

    .line 3
    const-string/jumbo v1, "setRestrictBackgroundUL(): "

    .line 6
    const-string/jumbo v2, "setRestrictBackgroundUL: already "

    .line 9
    const-string/jumbo v3, "setRestrictBackgroundUL"

    .line 12
    const-wide/32 v4, 0x200000

    .line 15
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 20
    if-ne p2, v3, :cond_0

    .line 22
    const-string p0, "NetworkPolicy"

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    const-string v2, "NetworkPolicy"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "; reason: "

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 72
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 79
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 81
    invoke-interface {p2, v1}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_1

    .line 87
    const-string p2, "NetworkPolicy"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 111
    return-void

    .line 112
    :catch_0
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 114
    const/4 v0, 0x6

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 120
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 130
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 132
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 134
    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 137
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 139
    if-eqz p1, :cond_2

    .line 141
    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 146
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 153
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 157
    return-void

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    throw p0
.end method

.method public final setSubscriptionOverride(III[IJLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0, p7}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 8
    new-instance p7, Landroid/util/ArraySet;

    .line 10
    invoke-direct {p7}, Landroid/util/ArraySet;-><init>()V

    .line 13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p7, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 20
    new-instance v0, Landroid/util/IntArray;

    .line 22
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 25
    array-length v1, p4

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_0
    if-ge v3, v1, :cond_1

    .line 30
    aget v4, p4, v3

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {p7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v5, "NetworkPolicy"

    .line 48
    const-string/jumbo v6, "setSubscriptionOverride removing invalid network type: "

    .line 51
    invoke-static {v4, v6, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 59
    monitor-enter p4

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    .line 63
    move-result-object p7

    .line 64
    const/4 v1, 0x1

    .line 65
    if-eq p2, v1, :cond_3

    .line 67
    if-eqz p7, :cond_2

    .line 69
    invoke-virtual {p7}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    .line 72
    move-result p7

    .line 73
    const/4 v3, -0x1

    .line 74
    if-eq p7, v3, :cond_2

    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    const-string p1, "Must provide valid SubscriptionPlan to enable overriding"

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    :cond_3
    :goto_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    move-result-object p4

    .line 94
    const-string/jumbo p7, "netpolicy_override_enabled"

    .line 97
    invoke-static {p4, p7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 100
    move-result p4

    .line 101
    if-eqz p4, :cond_4

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    if-nez p3, :cond_5

    .line 106
    :goto_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 109
    move-result-object p4

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 128
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 134
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 136
    const/16 p2, 0x10

    .line 138
    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    const-wide/16 v0, 0x0

    .line 147
    cmp-long p1, p5, v0

    .line 149
    if-lez p1, :cond_5

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 157
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {p0, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 166
    :cond_5
    return-void

    .line 167
    :goto_4
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    throw p0
.end method

.method public final setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 8
    array-length v0, p2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string v0, "NetworkPolicy"

    .line 14
    const-string v2, "Received empty plans list. Clearing existing SubscriptionPlans."

    .line 16
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    goto/16 :goto_3

    .line 21
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Landroid/util/ArraySet;

    .line 27
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 30
    invoke-static {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 33
    new-instance v3, Landroid/util/ArraySet;

    .line 35
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 38
    move v4, v1

    .line 39
    move v5, v4

    .line 40
    :goto_0
    array-length v6, p2

    .line 41
    if-ge v4, v6, :cond_6

    .line 43
    aget-object v6, p2, v4

    .line 45
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    .line 48
    move-result-object v6

    .line 49
    new-instance v7, Landroid/util/ArraySet;

    .line 51
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 54
    move v8, v1

    .line 55
    :goto_1
    array-length v9, v6

    .line 56
    if-ge v8, v9, :cond_3

    .line 58
    aget v9, v6, v8

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_2

    .line 70
    aget v9, v6, v8

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_1

    .line 82
    add-int/lit8 v8, v8, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    const-string p1, "Subscription plan contains duplicate network types."

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    const-string p2, "Invalid network type: "

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    aget p2, v6, v8

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p0

    .line 115
    :cond_3
    array-length v7, v6

    .line 116
    array-length v8, v0

    .line 117
    if-ne v7, v8, :cond_4

    .line 119
    const/4 v5, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-static {v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_5

    .line 127
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 132
    const-string p1, "Multiple subscription plans defined for a single network type."

    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p0

    .line 138
    :cond_6
    if-eqz v5, :cond_8

    .line 140
    :goto_3
    array-length v0, p2

    .line 141
    :goto_4
    if-ge v1, v0, :cond_7

    .line 143
    aget-object v2, p2, v1

    .line 145
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_4

    .line 151
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 154
    move-result-wide v0

    .line 155
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    return-void

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    throw p0

    .line 167
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 169
    const-string p1, "No generic subscription plan that applies to all network types."

    .line 171
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0
.end method

.method public final setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Missing subscriberId for subId "

    .line 3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v3, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 28
    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 33
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string v3, "NetworkPolicy"

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    .line 62
    const-string v3, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    .line 64
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const/high16 v3, 0x40000000    # 2.0f

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 74
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 79
    const-string v4, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    .line 81
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 86
    const/16 v3, 0x13

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    iget p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 98
    add-int/lit8 v0, p2, 0x1

    .line 100
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 102
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    .line 104
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    const-wide/16 v3, 0x0

    .line 109
    cmp-long v0, p3, v3

    .line 111
    if-lez v0, :cond_1

    .line 113
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 115
    const/16 v0, 0x16

    .line 117
    invoke-virtual {p0, v0, p1, p2, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    return-void

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    goto :goto_2

    .line 129
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    throw p0

    .line 131
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    throw p0
.end method

.method public final setUidFirewallRuleUL(III)V
    .locals 4

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string/jumbo v2, "setUidFirewallRuleUL: "

    .line 13
    const-string v3, "/"

    .line 15
    invoke-static {p1, p2, v2, v3, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    if-ne p1, v2, :cond_1

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 34
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const/4 v2, 0x2

    .line 41
    if-ne p1, v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 45
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x3

    .line 50
    if-ne p1, v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 54
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v2, 0x4

    .line 59
    if-ne p1, v2, :cond_4

    .line 61
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 63
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v2, 0x5

    .line 68
    if-ne p1, v2, :cond_5

    .line 70
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 72
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    const/4 v2, 0x6

    .line 77
    if-ne p1, v2, :cond_6

    .line 79
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 81
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    goto :goto_0

    .line 85
    :cond_6
    const/4 v2, 0x7

    .line 86
    if-ne p1, v2, :cond_7

    .line 88
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 90
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_7
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 95
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 98
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 100
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V

    .line 103
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_8

    .line 109
    invoke-static {p2}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 112
    move-result p2

    .line 113
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 115
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 118
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception p0

    .line 125
    :try_start_2
    const-string p1, "NetworkPolicy"

    .line 127
    const-string/jumbo p2, "problem setting firewall uid rules"

    .line 130
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :catch_1
    :cond_8
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    return-void

    .line 137
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    throw p0
.end method

.method public final setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .locals 7

    .line 3
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 5
    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 6
    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 7
    invoke-static {v4}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-static {v4}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v4

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 11
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 12
    invoke-virtual {p2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 14
    new-array v1, v0, [I

    .line 15
    new-array v2, v0, [I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 16
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    .line 17
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p2, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 19
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 20
    :goto_3
    const-string p1, "NetworkPolicy"

    const-string/jumbo p2, "problem setting firewall uid rules"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_4
    return-void
.end method

.method public final setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    :cond_0
    if-eqz p3, :cond_2

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    :cond_2
    return-void
.end method

.method public final setUidPolicy(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy_enforcePermission()V

    .line 4
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 23
    move-result v3

    .line 24
    if-eq v3, p2, :cond_0

    .line 26
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(III)V

    .line 29
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 31
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    throw p0

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    throw p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string/jumbo p2, "cannot apply policy to UID "

    .line 55
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
.end method

.method public final setUidPolicyUncheckedUL(II)V
    .locals 1

    if-nez p2, :cond_0

    .line 23
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    return-void
.end method

.method public final setUidPolicyUncheckedUL(III)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(II)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ne p3, v0, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    if-ne p3, v4, :cond_4

    move v4, v0

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    if-nez v2, :cond_6

    .line 3
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v0

    :goto_5
    if-nez v3, :cond_8

    .line 4
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_7

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    move v5, v1

    goto :goto_7

    :cond_8
    :goto_6
    move v5, v0

    :goto_7
    if-eqz p2, :cond_b

    if-eqz v4, :cond_9

    if-eqz v3, :cond_b

    .line 5
    :cond_9
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 7
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_b

    .line 8
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p2, :cond_a

    .line 9
    const-string p2, "NetworkPolicy"

    const-string v3, "Adding uid "

    const-string v4, " to revoked restrict background allowlist"

    .line 10
    invoke-static {p1, v3, v4, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_a
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_b
    if-eq v2, v5, :cond_c

    move v1, v0

    .line 12
    :cond_c
    :goto_8
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 16
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setWifiMeteredOverride(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 10
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 12
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 18
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 38
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 48
    iput p2, v3, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 50
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    return-void

    .line 60
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public final snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    const/16 v2, 0x23

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x1e

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 13
    invoke-virtual {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 24
    const-class v0, Landroid/net/TetheringManager;

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/net/TetheringManager;

    .line 32
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;

    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 37
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetherListener:Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 39
    invoke-virtual {p1, v0, p0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 42
    :cond_0
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    const-string p1, "Service NetworkPolicy init timeout"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 60
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    const-string v0, "Service NetworkPolicy init interrupted"

    .line 64
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw p1
.end method

.method public final unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    .line 6
    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 20
    return-void
.end method

.method public final updateBlockedReasonsForRestrictedModeUL(I)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 5
    const-string v3, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    .line 7
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 15
    const-string v3, "android.permission.NETWORK_STACK"

    .line 17
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 25
    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    .line 27
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 30
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-nez v2, :cond_1

    .line 33
    :cond_0
    move v2, v0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :cond_1
    move v2, v1

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 38
    monitor-enter v3

    .line 39
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 41
    invoke-static {p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(ILandroid/util/SparseArray;)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 44
    move-result-object v4

    .line 45
    iget v5, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 47
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 49
    if-eqz v6, :cond_2

    .line 51
    iget v6, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 53
    or-int/lit8 v6, v6, 0x8

    .line 55
    iput v6, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_4

    .line 60
    :cond_2
    iget v6, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 62
    and-int/lit8 v6, v6, -0x9

    .line 64
    iput v6, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 66
    :goto_1
    if-eqz v2, :cond_3

    .line 68
    iget v2, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 70
    or-int/lit8 v2, v2, 0x10

    .line 72
    iput v2, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget v2, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 77
    and-int/lit8 v2, v2, -0x11

    .line 79
    iput v2, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 81
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 84
    iget v2, v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 86
    if-ne v5, v2, :cond_4

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    .line 92
    move-result v1

    .line 93
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eq v5, v2, :cond_5

    .line 96
    invoke-virtual {p0, p1, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 99
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    :cond_5
    return v2

    .line 109
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p0
.end method

.method public final updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    .line 9
    const-string v4, "NetworkPolicy"

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 14
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "Ignoring user-defined policy "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return v5

    .line 36
    :cond_1
    new-instance v3, Landroid/net/NetworkPolicy;

    .line 38
    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 40
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 42
    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 44
    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 46
    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 48
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 50
    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 52
    move-wide/from16 v16, v5

    .line 54
    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->inferred:Z

    .line 56
    move-object v6, v3

    .line 57
    move/from16 v18, v15

    .line 59
    move-wide/from16 v15, v16

    .line 61
    move/from16 v17, v18

    .line 63
    move/from16 v18, v5

    .line 65
    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 68
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 76
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 79
    move-result v6

    .line 80
    const/4 v7, 0x1

    .line 81
    const/4 v8, -0x1

    .line 82
    if-nez v6, :cond_6

    .line 84
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/os/PersistableBundle;

    .line 92
    const/4 v6, 0x0

    .line 93
    aget-object v5, v5, v6

    .line 95
    iget-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 97
    invoke-virtual {v6}, Landroid/util/RecurrenceRule;->isMonthly()Z

    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_2

    .line 103
    iget-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 105
    iget-object v6, v6, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 107
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 110
    move-result v8

    .line 111
    :cond_2
    invoke-virtual {v0, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    .line 114
    move-result v6

    .line 115
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 118
    move-result-object v8

    .line 119
    invoke-static {v6, v8}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    .line 122
    move-result-object v6

    .line 123
    iput-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 125
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    .line 128
    move-result-wide v8

    .line 129
    const-wide/16 v10, -0x1

    .line 131
    cmp-long v6, v8, v10

    .line 133
    if-nez v6, :cond_3

    .line 135
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 137
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    .line 140
    move-result-wide v5

    .line 141
    iput-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 143
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 145
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    .line 148
    move-result-wide v0

    .line 149
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 151
    goto :goto_0

    .line 152
    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 157
    cmp-long v0, v8, v0

    .line 159
    if-nez v0, :cond_4

    .line 161
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 163
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 165
    goto :goto_0

    .line 166
    :cond_4
    const-wide/16 v0, 0x9

    .line 168
    mul-long/2addr v0, v8

    .line 169
    const-wide/16 v12, 0xa

    .line 171
    div-long/2addr v0, v12

    .line 172
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 174
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 180
    if-eq v0, v7, :cond_5

    .line 182
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 184
    goto :goto_0

    .line 185
    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 187
    goto :goto_0

    .line 188
    :cond_6
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/os/PersistableBundle;

    .line 196
    iget-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 198
    invoke-virtual {v5}, Landroid/util/RecurrenceRule;->isMonthly()Z

    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_7

    .line 204
    iget-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 206
    iget-object v5, v5, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 208
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 211
    move-result v8

    .line 212
    :cond_7
    invoke-virtual {v0, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    .line 215
    move-result v5

    .line 216
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 219
    move-result-object v6

    .line 220
    invoke-static {v5, v6}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    .line 223
    move-result-object v5

    .line 224
    iput-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 226
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 228
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    .line 231
    move-result-wide v5

    .line 232
    iput-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 234
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 236
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    .line 239
    move-result-wide v0

    .line 240
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 242
    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_8

    .line 248
    const/4 v0, 0x0

    .line 249
    return v0

    .line 250
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "Updated "

    .line 254
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, " to "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v7
.end method

.method public final updateNetworkEnabledNL()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string v2, "NetworkPolicy"

    .line 9
    const-string/jumbo v3, "updateNetworkEnabledNL()"

    .line 12
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    const-string/jumbo v2, "updateNetworkEnabledNL"

    .line 18
    const-wide/32 v7, 0x200000

    .line 21
    invoke-static {v7, v8, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 27
    move-result-object v2

    .line 28
    const-string v3, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    .line 30
    const-string v4, ""

    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-virtual {v2, v9, v3, v4, v9}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    const-wide/16 v10, -0x1

    .line 39
    const/4 v12, 0x1

    .line 40
    if-eqz v2, :cond_1

    .line 42
    const-string v3, "VZW-"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 50
    :cond_1
    const-string v2, "ATT"

    .line 52
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 58
    const-string v2, "TMO"

    .line 60
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_9

    .line 66
    :cond_2
    if-eqz v1, :cond_3

    .line 68
    const-string v1, "NetworkPolicy"

    .line 70
    const-string/jumbo v2, "updateVideoCallLocked()"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_3
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 78
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 81
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v13

    .line 91
    :cond_4
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_9

    .line 97
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    move-object v14, v1

    .line 102
    check-cast v14, Landroid/net/NetworkPolicy;

    .line 104
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 106
    cmp-long v1, v1, v10

    .line 108
    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_5

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    .line 122
    move-result v1

    .line 123
    const/4 v2, -0x1

    .line 124
    if-ne v1, v2, :cond_6

    .line 126
    goto :goto_0

    .line 127
    :cond_6
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/util/Pair;

    .line 137
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 139
    check-cast v2, Ljava/time/ZonedDateTime;

    .line 141
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 148
    move-result-wide v3

    .line 149
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 151
    check-cast v1, Ljava/time/ZonedDateTime;

    .line 153
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 160
    move-result-wide v5

    .line 161
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 163
    move-object/from16 v1, p0

    .line 165
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 168
    move-result-wide v1

    .line 169
    const-string v3, "NetworkPolicy"

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v5, "mIsVideoCall: "

    .line 176
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    const-string v5, ", mHasEpdgCall:"

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 191
    invoke-static {v3, v4, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 194
    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 196
    if-nez v3, :cond_4

    .line 198
    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 200
    if-eqz v3, :cond_4

    .line 202
    invoke-virtual {v14, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_4

    .line 208
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 210
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 212
    if-eqz v2, :cond_7

    .line 214
    const-string v2, "NetworkPolicy"

    .line 216
    const-string/jumbo v3, "notifyVideoCallOverLimit()"

    .line 219
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_7
    const-string v2, "NetworkPolicy"

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v4, "matchRule: "

    .line 229
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 235
    move-result v4

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v4, " AlreadySent: "

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v3

    .line 253
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 259
    move-result v1

    .line 260
    if-eq v1, v12, :cond_8

    .line 262
    const/16 v2, 0xa

    .line 264
    if-eq v1, v2, :cond_8

    .line 266
    goto/16 :goto_0

    .line 268
    :cond_8
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 270
    if-nez v1, :cond_4

    .line 272
    new-instance v1, Landroid/content/Intent;

    .line 274
    const-string/jumbo v2, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    .line 277
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    iput-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 287
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 289
    monitor-enter v1

    .line 290
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 293
    monitor-exit v1

    .line 294
    goto/16 :goto_0

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    throw v0

    .line 299
    :cond_9
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 301
    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 304
    move-result-wide v13

    .line 305
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 310
    move-result v1

    .line 311
    sub-int/2addr v1, v12

    .line 312
    move v15, v1

    .line 313
    :goto_1
    if-ltz v15, :cond_d

    .line 315
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 317
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 320
    move-result-object v1

    .line 321
    move-object v5, v1

    .line 322
    check-cast v5, Landroid/net/NetworkPolicy;

    .line 324
    iget-wide v1, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 326
    cmp-long v1, v1, v10

    .line 328
    const/16 v6, 0x12

    .line 330
    if-eqz v1, :cond_a

    .line 332
    invoke-virtual {v5}, Landroid/net/NetworkPolicy;->hasCycle()Z

    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_b

    .line 338
    :cond_a
    move-object v10, v5

    .line 339
    move v11, v6

    .line 340
    goto :goto_3

    .line 341
    :cond_b
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    .line 344
    move-result-object v1

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Landroid/util/Pair;

    .line 351
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 353
    check-cast v2, Ljava/time/ZonedDateTime;

    .line 355
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 362
    move-result-wide v16

    .line 363
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 365
    check-cast v1, Ljava/time/ZonedDateTime;

    .line 367
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 374
    move-result-wide v18

    .line 375
    iget-object v2, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 377
    move-object/from16 v1, p0

    .line 379
    move-wide/from16 v3, v16

    .line 381
    move-object v10, v5

    .line 382
    move v11, v6

    .line 383
    move-wide/from16 v5, v18

    .line 385
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 388
    move-result-wide v1

    .line 389
    invoke-virtual {v10, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_c

    .line 395
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 397
    if-nez v1, :cond_c

    .line 399
    iget-wide v1, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 401
    cmp-long v1, v1, v16

    .line 403
    if-gez v1, :cond_c

    .line 405
    move v1, v12

    .line 406
    goto :goto_2

    .line 407
    :cond_c
    move v1, v9

    .line 408
    :goto_2
    xor-int/2addr v1, v12

    .line 409
    iget-object v2, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 411
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 413
    invoke-virtual {v3, v11, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 420
    goto :goto_4

    .line 421
    :goto_3
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 423
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 425
    invoke-virtual {v2, v11, v12, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 432
    :goto_4
    add-int/lit8 v15, v15, -0x1

    .line 434
    const-wide/16 v10, -0x1

    .line 436
    goto :goto_1

    .line 437
    :cond_d
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 439
    invoke-virtual {v0, v9, v13, v14}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 442
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 445
    return-void
.end method

.method public final updateNetworkRulesNL()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string v1, "NetworkPolicy"

    .line 9
    const-string/jumbo v2, "updateNetworkRulesNL()"

    .line 12
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    const-string/jumbo v1, "updateNetworkRulesNL"

    .line 18
    const-wide/32 v7, 0x200000

    .line 21
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 26
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkStateSnapshots()Ljava/util/List;

    .line 29
    move-result-object v9

    .line 30
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 32
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 35
    new-instance v10, Landroid/util/ArrayMap;

    .line 37
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    const/4 v11, 0x1

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/net/NetworkStateSnapshot;

    .line 57
    invoke-virtual {v2}, Landroid/net/NetworkStateSnapshot;->getSubId()I

    .line 60
    move-result v3

    .line 61
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 63
    invoke-virtual {v2}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/net/Network;->getNetId()I

    .line 70
    move-result v5

    .line 71
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    new-instance v3, Landroid/net/NetworkIdentity$Builder;

    .line 76
    invoke-direct {v3}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 79
    invoke-virtual {v3, v2}, Landroid/net/NetworkIdentity$Builder;->setNetworkStateSnapshot(Landroid/net/NetworkStateSnapshot;)Landroid/net/NetworkIdentity$Builder;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3, v11}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    new-instance v12, Landroid/util/ArraySet;

    .line 97
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 100
    new-instance v13, Landroid/util/ArraySet;

    .line 102
    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 105
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 107
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 110
    move-result v1

    .line 111
    sub-int/2addr v1, v11

    .line 112
    move v5, v1

    .line 113
    const-wide v16, 0x7fffffffffffffffL

    .line 118
    :goto_1
    const/16 v6, 0xa

    .line 120
    const-wide/16 v18, -0x1

    .line 122
    if-ltz v5, :cond_11

    .line 124
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 126
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/net/NetworkPolicy;

    .line 132
    invoke-virtual {v13}, Landroid/util/ArraySet;->clear()V

    .line 135
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 138
    move-result v20

    .line 139
    add-int/lit8 v20, v20, -0x1

    .line 141
    move/from16 v1, v20

    .line 143
    :goto_2
    if-ltz v1, :cond_3

    .line 145
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 147
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroid/net/NetworkIdentity;

    .line 153
    invoke-virtual {v3, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Landroid/net/NetworkStateSnapshot;

    .line 165
    invoke-virtual {v3}, Landroid/net/NetworkStateSnapshot;->getLinkProperties()Landroid/net/LinkProperties;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 178
    goto :goto_2

    .line 179
    :cond_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 181
    if-eqz v1, :cond_4

    .line 183
    const-string v1, "NetworkPolicy"

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    const-string v4, "Applying "

    .line 189
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const-string v4, " to ifaces "

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v3

    .line 207
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_4
    iget-wide v3, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 212
    cmp-long v1, v3, v18

    .line 214
    if-eqz v1, :cond_5

    .line 216
    move/from16 v20, v11

    .line 218
    goto :goto_3

    .line 219
    :cond_5
    const/16 v20, 0x0

    .line 221
    :goto_3
    iget-wide v3, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 223
    cmp-long v1, v3, v18

    .line 225
    if-eqz v1, :cond_6

    .line 227
    move/from16 v21, v11

    .line 229
    goto :goto_4

    .line 230
    :cond_6
    const/16 v21, 0x0

    .line 232
    :goto_4
    if-nez v21, :cond_8

    .line 234
    if-eqz v20, :cond_7

    .line 236
    goto :goto_5

    .line 237
    :cond_7
    move-object v14, v2

    .line 238
    move v15, v5

    .line 239
    goto/16 :goto_7

    .line 241
    :cond_8
    :goto_5
    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->hasCycle()Z

    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_7

    .line 247
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/util/Pair;

    .line 257
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 259
    check-cast v3, Ljava/time/ZonedDateTime;

    .line 261
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 268
    move-result-wide v18

    .line 269
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 271
    check-cast v1, Ljava/time/ZonedDateTime;

    .line 273
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 280
    move-result-wide v24

    .line 281
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 283
    move-object/from16 v1, p0

    .line 285
    move-object v4, v2

    .line 286
    move-object v2, v3

    .line 287
    move-object v14, v4

    .line 288
    const-wide/16 v7, 0x1

    .line 290
    move-wide/from16 v3, v18

    .line 292
    move v15, v5

    .line 293
    move-wide/from16 v5, v24

    .line 295
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 298
    move-result-wide v1

    .line 299
    if-eqz v21, :cond_9

    .line 301
    iget-wide v3, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 303
    cmp-long v3, v3, v18

    .line 305
    if-gez v3, :cond_9

    .line 307
    iget-wide v3, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 309
    sub-long/2addr v3, v1

    .line 310
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 313
    move-result-wide v3

    .line 314
    goto :goto_6

    .line 315
    :cond_9
    const-wide v3, 0x7fffffffffffffffL

    .line 320
    :goto_6
    if-eqz v20, :cond_a

    .line 322
    iget-wide v5, v14, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 324
    cmp-long v5, v5, v18

    .line 326
    if-gez v5, :cond_a

    .line 328
    invoke-virtual {v14, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    .line 331
    move-result v5

    .line 332
    if-nez v5, :cond_a

    .line 334
    iget-wide v5, v14, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 336
    sub-long/2addr v5, v1

    .line 337
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 340
    move-result-wide v1

    .line 341
    goto :goto_8

    .line 342
    :cond_a
    const-wide v1, 0x7fffffffffffffffL

    .line 347
    goto :goto_8

    .line 348
    :goto_7
    const-wide v1, 0x7fffffffffffffffL

    .line 353
    const-wide v3, 0x7fffffffffffffffL

    .line 358
    :goto_8
    if-nez v20, :cond_b

    .line 360
    if-nez v21, :cond_b

    .line 362
    iget-boolean v5, v14, Landroid/net/NetworkPolicy;->metered:Z

    .line 364
    if-eqz v5, :cond_e

    .line 366
    :cond_b
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 369
    move-result v5

    .line 370
    if-le v5, v11, :cond_c

    .line 372
    const-string v5, "NetworkPolicy"

    .line 374
    const-string/jumbo v6, "shared quota unsupported; generating rule for each iface"

    .line 377
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_c
    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 382
    if-eqz v5, :cond_d

    .line 384
    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 386
    if-eqz v5, :cond_d

    .line 388
    const-wide v1, 0x7fffffffffffffffL

    .line 393
    const-wide v3, 0x7fffffffffffffffL

    .line 398
    :cond_d
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 401
    move-result v5

    .line 402
    sub-int/2addr v5, v11

    .line 403
    :goto_9
    if-ltz v5, :cond_e

    .line 405
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 408
    move-result-object v6

    .line 409
    check-cast v6, Ljava/lang/String;

    .line 411
    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 413
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    .line 415
    move-object/from16 v27, v8

    .line 417
    move-wide/from16 v28, v1

    .line 419
    move-wide/from16 v30, v3

    .line 421
    move-object/from16 v32, v6

    .line 423
    invoke-direct/range {v27 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(JJLjava/lang/String;)V

    .line 426
    const/16 v11, 0xa

    .line 428
    invoke-virtual {v7, v11, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 435
    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v5, v5, -0x1

    .line 440
    const/4 v11, 0x1

    .line 441
    goto :goto_9

    .line 442
    :cond_e
    if-eqz v20, :cond_f

    .line 444
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 446
    cmp-long v3, v1, v16

    .line 448
    if-gez v3, :cond_f

    .line 450
    move-wide/from16 v16, v1

    .line 452
    :cond_f
    if-eqz v21, :cond_10

    .line 454
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 456
    cmp-long v3, v1, v16

    .line 458
    if-gez v3, :cond_10

    .line 460
    move-wide/from16 v16, v1

    .line 462
    :cond_10
    add-int/lit8 v5, v15, -0x1

    .line 464
    const-wide/32 v7, 0x200000

    .line 467
    const/4 v11, 0x1

    .line 468
    goto/16 :goto_1

    .line 470
    :cond_11
    move v11, v6

    .line 471
    const-wide/16 v7, 0x1

    .line 473
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 476
    move-result-object v1

    .line 477
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    move-result v2

    .line 481
    const/16 v3, 0xb

    .line 483
    if-eqz v2, :cond_14

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    move-result-object v2

    .line 489
    check-cast v2, Landroid/net/NetworkStateSnapshot;

    .line 491
    invoke-virtual {v2}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    .line 494
    move-result-object v4

    .line 495
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 498
    move-result v3

    .line 499
    if-nez v3, :cond_12

    .line 501
    invoke-virtual {v13}, Landroid/util/ArraySet;->clear()V

    .line 504
    invoke-virtual {v2}, Landroid/net/NetworkStateSnapshot;->getLinkProperties()Landroid/net/LinkProperties;

    .line 507
    move-result-object v2

    .line 508
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 515
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 518
    move-result v2

    .line 519
    const/4 v3, 0x1

    .line 520
    sub-int/2addr v2, v3

    .line 521
    :goto_a
    if-ltz v2, :cond_12

    .line 523
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 526
    move-result-object v3

    .line 527
    check-cast v3, Ljava/lang/String;

    .line 529
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 532
    move-result v4

    .line 533
    if-nez v4, :cond_13

    .line 535
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 537
    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    .line 539
    const-wide v27, 0x7fffffffffffffffL

    .line 544
    const-wide v29, 0x7fffffffffffffffL

    .line 549
    move-object/from16 v26, v5

    .line 551
    move-object/from16 v31, v3

    .line 553
    invoke-direct/range {v26 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(JJLjava/lang/String;)V

    .line 556
    invoke-virtual {v4, v11, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 559
    move-result-object v4

    .line 560
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 563
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_13
    add-int/lit8 v2, v2, -0x1

    .line 568
    goto :goto_a

    .line 569
    :cond_14
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 571
    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 574
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 577
    move-result v2

    .line 578
    const/4 v4, 0x1

    .line 579
    sub-int/2addr v2, v4

    .line 580
    :goto_b
    if-ltz v2, :cond_16

    .line 582
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 584
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 587
    move-result-object v4

    .line 588
    check-cast v4, Ljava/lang/String;

    .line 590
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 593
    move-result v5

    .line 594
    if-nez v5, :cond_15

    .line 596
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 598
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 601
    move-result-object v4

    .line 602
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 605
    :cond_15
    add-int/lit8 v2, v2, -0x1

    .line 607
    goto :goto_b

    .line 608
    :catchall_0
    move-exception v0

    .line 609
    goto/16 :goto_11

    .line 611
    :cond_16
    iput-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 613
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 619
    move-result-object v1

    .line 620
    const-string/jumbo v2, "netpolicy_quota_enabled"

    .line 623
    const/4 v3, 0x1

    .line 624
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 627
    move-result v2

    .line 628
    if-eqz v2, :cond_17

    .line 630
    move v11, v3

    .line 631
    goto :goto_c

    .line 632
    :cond_17
    const/4 v11, 0x0

    .line 633
    :goto_c
    const-string/jumbo v2, "netpolicy_quota_unlimited"

    .line 636
    sget-wide v3, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    .line 638
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 641
    move-result-wide v12

    .line 642
    const-string/jumbo v2, "netpolicy_quota_limited"

    .line 645
    const v3, 0x3dcccccd    # 0.1f

    .line 648
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 651
    move-result v10

    .line 652
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 654
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 657
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 660
    move-result-object v9

    .line 661
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    move-result v1

    .line 665
    if-eqz v1, :cond_20

    .line 667
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    move-result-object v1

    .line 671
    check-cast v1, Landroid/net/NetworkStateSnapshot;

    .line 673
    if-nez v11, :cond_18

    .line 675
    goto :goto_d

    .line 676
    :cond_18
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    .line 679
    move-result-object v2

    .line 680
    if-nez v2, :cond_19

    .line 682
    goto :goto_d

    .line 683
    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    .line 686
    move-result-object v2

    .line 687
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 689
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    .line 692
    move-result v2

    .line 693
    const/4 v4, -0x1

    .line 694
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 697
    move-result v14

    .line 698
    if-ne v14, v4, :cond_1a

    .line 700
    goto :goto_d

    .line 701
    :cond_1a
    invoke-virtual {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    .line 704
    move-result-object v2

    .line 705
    if-nez v2, :cond_1b

    .line 707
    goto :goto_d

    .line 708
    :cond_1b
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    .line 711
    move-result-wide v20

    .line 712
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    .line 715
    move-result-object v3

    .line 716
    const/16 v4, 0x12

    .line 718
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 721
    move-result v3

    .line 722
    if-nez v3, :cond_1c

    .line 724
    const-wide/16 v5, 0x0

    .line 726
    :goto_e
    const-wide v22, 0x7fffffffffffffffL

    .line 731
    goto/16 :goto_10

    .line 733
    :cond_1c
    cmp-long v3, v20, v18

    .line 735
    if-nez v3, :cond_1d

    .line 737
    move-wide/from16 v5, v18

    .line 739
    goto :goto_e

    .line 740
    :cond_1d
    const-wide v22, 0x7fffffffffffffffL

    .line 745
    cmp-long v3, v20, v22

    .line 747
    if-nez v3, :cond_1e

    .line 749
    move-wide v5, v12

    .line 750
    goto/16 :goto_10

    .line 752
    :cond_1e
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    .line 755
    move-result-object v2

    .line 756
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 759
    move-result-object v2

    .line 760
    check-cast v2, Landroid/util/Range;

    .line 762
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 765
    move-result-object v3

    .line 766
    check-cast v3, Ljava/time/ZonedDateTime;

    .line 768
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 775
    move-result-wide v3

    .line 776
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 779
    move-result-object v15

    .line 780
    check-cast v15, Ljava/time/ZonedDateTime;

    .line 782
    invoke-virtual {v15}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 785
    move-result-object v15

    .line 786
    invoke-virtual {v15}, Ljava/time/Instant;->toEpochMilli()J

    .line 789
    move-result-wide v24

    .line 790
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 792
    invoke-virtual {v15}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    .line 795
    move-result-object v15

    .line 796
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 799
    move-result-object v2

    .line 800
    check-cast v2, Ljava/time/ZonedDateTime;

    .line 802
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    .line 805
    move-result-object v2

    .line 806
    invoke-static {v15, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 809
    move-result-object v2

    .line 810
    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 812
    invoke-virtual {v2, v5}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    .line 815
    move-result-object v2

    .line 816
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 819
    move-result-object v2

    .line 820
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 823
    move-result-wide v5

    .line 824
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getSubscriberId()Ljava/lang/String;

    .line 827
    move-result-object v1

    .line 828
    if-nez v1, :cond_1f

    .line 830
    const-wide/16 v5, 0x0

    .line 832
    goto :goto_f

    .line 833
    :cond_1f
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    .line 836
    move-result-object v2

    .line 837
    move-object/from16 v1, p0

    .line 839
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 842
    move-result-wide v5

    .line 843
    :goto_f
    sub-long v20, v20, v5

    .line 845
    invoke-virtual {v15}, Ljava/time/Instant;->toEpochMilli()J

    .line 848
    move-result-wide v1

    .line 849
    sub-long v24, v24, v1

    .line 851
    sub-long v24, v24, v7

    .line 853
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 855
    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 858
    move-result-wide v1

    .line 859
    div-long v24, v24, v1

    .line 861
    add-long v24, v24, v7

    .line 863
    div-long v1, v20, v24

    .line 865
    long-to-float v1, v1

    .line 866
    mul-float/2addr v1, v10

    .line 867
    float-to-long v1, v1

    .line 868
    const-wide/16 v3, 0x0

    .line 870
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 873
    move-result-wide v5

    .line 874
    :goto_10
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 876
    invoke-virtual {v1, v14, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 879
    goto/16 :goto_d

    .line 881
    :cond_20
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 883
    monitor-enter v2

    .line 884
    :try_start_1
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 886
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 889
    move-result v3

    .line 890
    new-array v3, v3, [Ljava/lang/String;

    .line 892
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 895
    move-result-object v1

    .line 896
    check-cast v1, [Ljava/lang/String;

    .line 898
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 899
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 901
    const/4 v3, 0x2

    .line 902
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 905
    move-result-object v1

    .line 906
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 909
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 911
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 914
    move-result-object v1

    .line 915
    const/4 v2, 0x7

    .line 916
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 923
    const-wide/32 v0, 0x200000

    .line 926
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 929
    return-void

    .line 930
    :catchall_1
    move-exception v0

    .line 931
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 932
    throw v0

    .line 933
    :goto_11
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 934
    throw v0
.end method

.method public final updateNetworkStats(IZ)V
    .locals 4

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_1

    .line 10
    const-string/jumbo v2, "updateNetworkStats: "

    .line 13
    const-string v3, "/"

    .line 15
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v2

    .line 19
    if-eqz p2, :cond_0

    .line 21
    const-string v3, "F"

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v3, "B"

    .line 26
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 36
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/NetworkStatsManager;->noteUidForeground(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 49
    throw p0
.end method

.method public updateNetworks()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;

    .line 14
    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 17
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    const-wide/16 v1, 0x5

    .line 22
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 27
    return-void
.end method

.method public final updateNetworksInternal()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 12
    if-eqz v2, :cond_0

    .line 14
    const-string v2, "NetworkPolicy"

    .line 16
    const-string/jumbo v3, "ensureActiveCarrierPolicyAL()"

    .line 19
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 24
    if-eqz v2, :cond_1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v3

    .line 34
    if-ge v2, v3, :cond_2

    .line 36
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 78
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :try_start_4
    throw p0

    .line 86
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    throw p0
.end method

.method public final updateNotificationsNL()V
    .locals 35

    .line 1
    move-object/from16 v6, p0

    .line 3
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 5
    const-string v7, "NetworkPolicy"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string/jumbo v0, "updateNotificationsNL()"

    .line 12
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    const-wide/32 v8, 0x200000

    .line 18
    const-string/jumbo v0, "updateNotificationsNL"

    .line 21
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    new-instance v10, Landroid/util/ArraySet;

    .line 26
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 28
    invoke-direct {v10, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 31
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 33
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 36
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 38
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 41
    move-result-wide v17

    .line 42
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 44
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 47
    move-result v0

    .line 48
    const/4 v15, 0x1

    .line 49
    sub-int/2addr v0, v15

    .line 50
    move v13, v0

    .line 51
    :goto_0
    if-ltz v13, :cond_1f

    .line 53
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    move-object v14, v0

    .line 60
    check-cast v14, Landroid/net/NetworkPolicy;

    .line 62
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 64
    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    .line 67
    move-result v11

    .line 68
    const/4 v12, -0x1

    .line 69
    if-ne v11, v12, :cond_2

    .line 71
    :cond_1
    :goto_1
    move/from16 v22, v13

    .line 73
    move v8, v15

    .line 74
    goto/16 :goto_f

    .line 76
    :cond_2
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveDataSubIdListener:Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

    .line 78
    iget v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mDefaultDataSubId:I

    .line 80
    if-eq v11, v1, :cond_3

    .line 82
    iget v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mActiveDataSubId:I

    .line 84
    if-eq v11, v0, :cond_3

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/util/Pair;

    .line 104
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    check-cast v1, Ljava/time/ZonedDateTime;

    .line 108
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 115
    move-result-wide v25

    .line 116
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 118
    check-cast v0, Ljava/time/ZonedDateTime;

    .line 120
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 127
    move-result-wide v27

    .line 128
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 130
    move-object/from16 v0, p0

    .line 132
    move-wide/from16 v2, v25

    .line 134
    move-wide/from16 v4, v27

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 139
    move-result-wide v3

    .line 140
    iget-wide v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    .line 142
    const-wide/32 v19, 0x186a0

    .line 145
    add-long v0, v0, v19

    .line 147
    cmp-long v0, v3, v0

    .line 149
    if-lez v0, :cond_5

    .line 151
    const-string/jumbo v0, "updateNotificationsNL() - totalBytes: "

    .line 154
    const-string v1, ", warningBytes= "

    .line 156
    invoke-static {v0, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move-result-object v0

    .line 160
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", limitBytes= "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-wide v3, v6, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    .line 184
    :cond_5
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/os/PersistableBundle;

    .line 192
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_6

    .line 198
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 200
    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "isConfigForIdentifiedCarrier returned false"

    .line 205
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    goto/16 :goto_1

    .line 210
    :cond_6
    if-eqz v0, :cond_7

    .line 212
    const-string/jumbo v1, "data_warning_notification_bool"

    .line 215
    invoke-virtual {v0, v1, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 218
    move-result v1

    .line 219
    move v11, v1

    .line 220
    goto :goto_2

    .line 221
    :cond_7
    move v11, v15

    .line 222
    :goto_2
    if-eqz v0, :cond_8

    .line 224
    const-string/jumbo v1, "data_limit_notification_bool"

    .line 227
    invoke-virtual {v0, v1, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 230
    move-result v1

    .line 231
    move/from16 v16, v1

    .line 233
    goto :goto_3

    .line 234
    :cond_8
    move/from16 v16, v15

    .line 236
    :goto_3
    if-eqz v0, :cond_9

    .line 238
    const-string/jumbo v1, "data_rapid_notification_bool"

    .line 241
    invoke-virtual {v0, v1, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 244
    move-result v0

    .line 245
    move/from16 v29, v0

    .line 247
    goto :goto_4

    .line 248
    :cond_9
    move/from16 v29, v15

    .line 250
    :goto_4
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    .line 253
    move-result v0

    .line 254
    const/16 v30, 0x0

    .line 256
    const-wide/16 v31, 0x0

    .line 258
    const-wide/16 v33, -0x1

    .line 260
    if-eqz v0, :cond_11

    .line 262
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 264
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 267
    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_a

    .line 274
    move-object/from16 v0, v30

    .line 276
    goto :goto_5

    .line 277
    :cond_a
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 279
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 282
    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 286
    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Ljava/lang/String;

    .line 293
    :goto_5
    if-eqz v0, :cond_b

    .line 295
    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    .line 297
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Ljava/lang/Integer;

    .line 307
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 310
    move-result v12

    .line 311
    :cond_b
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 313
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v1

    .line 317
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Ljava/lang/Long;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 330
    move-result-wide v0

    .line 331
    iget-boolean v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 333
    if-eqz v2, :cond_10

    .line 335
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_10

    .line 341
    cmp-long v2, v0, v33

    .line 343
    if-eqz v2, :cond_10

    .line 345
    iget v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 347
    if-ne v2, v12, :cond_10

    .line 349
    iget-wide v8, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    .line 351
    cmp-long v2, v8, v33

    .line 353
    if-nez v2, :cond_10

    .line 355
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 357
    iget-object v5, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 359
    iget-boolean v5, v5, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 361
    if-nez v5, :cond_c

    .line 363
    move-wide/from16 v8, v31

    .line 365
    goto :goto_7

    .line 366
    :cond_c
    iget-object v5, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 368
    move-object/from16 v19, v5

    .line 370
    move-object/from16 v20, v2

    .line 372
    move-wide/from16 v21, v25

    .line 374
    move-wide/from16 v23, v27

    .line 376
    invoke-virtual/range {v19 .. v24}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;

    .line 379
    move-result-object v2

    .line 380
    check-cast v2, Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 385
    move-result-object v2

    .line 386
    move-wide/from16 v8, v31

    .line 388
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    move-result v5

    .line 392
    if-eqz v5, :cond_e

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Landroid/app/usage/NetworkStats$Bucket;

    .line 400
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 403
    move-result v12

    .line 404
    const/4 v15, -0x5

    .line 405
    if-ne v12, v15, :cond_d

    .line 407
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getMetered()I

    .line 410
    move-result v12

    .line 411
    const/4 v15, 0x2

    .line 412
    if-ne v12, v15, :cond_d

    .line 414
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 417
    move-result-wide v20

    .line 418
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 421
    move-result-wide v22

    .line 422
    add-long v22, v22, v20

    .line 424
    add-long v8, v22, v8

    .line 426
    :cond_d
    const/4 v15, 0x1

    .line 427
    goto :goto_6

    .line 428
    :cond_e
    :goto_7
    cmp-long v0, v0, v8

    .line 430
    if-gez v0, :cond_f

    .line 432
    const/4 v2, -0x5

    .line 433
    const/4 v5, 0x0

    .line 434
    move-object/from16 v0, p0

    .line 436
    move-object v1, v14

    .line 437
    move v15, v13

    .line 438
    move-wide v12, v3

    .line 439
    move-wide v3, v8

    .line 440
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 443
    goto :goto_8

    .line 444
    :cond_f
    move v15, v13

    .line 445
    move-wide v12, v3

    .line 446
    goto :goto_8

    .line 447
    :cond_10
    move v15, v13

    .line 448
    move-wide v12, v3

    .line 449
    move-wide/from16 v8, v31

    .line 451
    :goto_8
    iget-boolean v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 453
    if-eqz v0, :cond_12

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v1, "mDefaultDataPhoneId : "

    .line 460
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    iget v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, ", tetheringTotalBytes : "

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    move-result-object v0

    .line 480
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    goto :goto_9

    .line 484
    :cond_11
    move v15, v13

    .line 485
    move-wide v12, v3

    .line 486
    :cond_12
    :goto_9
    if-eqz v11, :cond_14

    .line 488
    invoke-virtual {v14, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_14

    .line 494
    invoke-virtual {v14, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    .line 497
    move-result v0

    .line 498
    if-nez v0, :cond_14

    .line 500
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 502
    cmp-long v0, v0, v25

    .line 504
    if-ltz v0, :cond_13

    .line 506
    goto :goto_a

    .line 507
    :cond_13
    const/16 v2, 0x22

    .line 509
    const/4 v5, 0x0

    .line 510
    move-object/from16 v0, p0

    .line 512
    move-object v1, v14

    .line 513
    move-wide v3, v12

    .line 514
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 517
    :cond_14
    :goto_a
    if-eqz v16, :cond_17

    .line 519
    invoke-virtual {v14, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_16

    .line 525
    iget-boolean v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 527
    if-nez v0, :cond_16

    .line 529
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 531
    cmp-long v0, v0, v25

    .line 533
    if-ltz v0, :cond_15

    .line 535
    const/16 v2, 0x24

    .line 537
    const/4 v5, 0x0

    .line 538
    move-object/from16 v0, p0

    .line 540
    move-object v1, v14

    .line 541
    move-wide v3, v12

    .line 542
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 545
    goto :goto_b

    .line 546
    :cond_15
    const/16 v2, 0x23

    .line 548
    const/4 v5, 0x0

    .line 549
    move-object/from16 v0, p0

    .line 551
    move-object v1, v14

    .line 552
    move-wide v3, v12

    .line 553
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 556
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 558
    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 560
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_17

    .line 566
    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 568
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 571
    move-result-object v2

    .line 572
    new-instance v3, Landroid/content/Intent;

    .line 574
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 577
    const v4, 0x1040381

    .line 580
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 583
    move-result-object v2

    .line 584
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 591
    const/high16 v2, 0x10000000

    .line 593
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    const-string v2, "android.net.NETWORK_TEMPLATE"

    .line 598
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 601
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 604
    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 606
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 609
    goto :goto_b

    .line 610
    :cond_16
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 612
    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 614
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 617
    :cond_17
    :goto_b
    if-eqz v29, :cond_1e

    .line 619
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 621
    cmp-long v0, v0, v33

    .line 623
    if-eqz v0, :cond_1e

    .line 625
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 627
    const-wide/16 v1, 0x4

    .line 629
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 632
    move-result-wide v8

    .line 633
    sub-long v20, v17, v8

    .line 635
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 637
    move-object/from16 v0, p0

    .line 639
    move-wide/from16 v2, v20

    .line 641
    move-wide/from16 v4, v17

    .line 643
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    .line 646
    move-result-wide v0

    .line 647
    sub-long v27, v27, v25

    .line 649
    mul-long v27, v27, v0

    .line 651
    div-long v2, v27, v8

    .line 653
    iget-wide v4, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 655
    const-wide/16 v8, 0x3

    .line 657
    mul-long/2addr v4, v8

    .line 658
    const-wide/16 v8, 0x2

    .line 660
    div-long/2addr v4, v8

    .line 661
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 663
    if-eqz v11, :cond_18

    .line 665
    const-string v11, "Rapid usage considering recent "

    .line 667
    const-string v12, " projected "

    .line 669
    invoke-static {v11, v0, v1, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    move-result-object v0

    .line 673
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, " alert "

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    move-result-object v0

    .line 688
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_18
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 693
    const-wide/32 v11, 0x5265c00

    .line 696
    sub-long v11, v17, v11

    .line 698
    cmp-long v0, v0, v11

    .line 700
    const/4 v1, 0x0

    .line 701
    if-ltz v0, :cond_19

    .line 703
    const/4 v0, 0x1

    .line 704
    goto :goto_c

    .line 705
    :cond_19
    move v0, v1

    .line 706
    :goto_c
    cmp-long v2, v2, v4

    .line 708
    if-lez v2, :cond_1e

    .line 710
    if-nez v0, :cond_1e

    .line 712
    iget-object v12, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 714
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 716
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 718
    if-nez v0, :cond_1a

    .line 720
    move-object v2, v14

    .line 721
    move/from16 v22, v15

    .line 723
    const/4 v5, 0x1

    .line 724
    goto :goto_e

    .line 725
    :cond_1a
    iget-object v11, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 727
    move-object v2, v14

    .line 728
    move/from16 v22, v15

    .line 730
    move-wide/from16 v13, v20

    .line 732
    const/4 v5, 0x1

    .line 733
    move-wide/from16 v15, v17

    .line 735
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;

    .line 738
    move-result-object v0

    .line 739
    check-cast v0, Ljava/util/ArrayList;

    .line 741
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 744
    move-result-object v0

    .line 745
    move v13, v1

    .line 746
    move-wide/from16 v3, v31

    .line 748
    move-wide v11, v3

    .line 749
    :cond_1b
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 752
    move-result v14

    .line 753
    if-eqz v14, :cond_1c

    .line 755
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 758
    move-result-object v14

    .line 759
    check-cast v14, Landroid/app/usage/NetworkStats$Bucket;

    .line 761
    invoke-virtual {v14}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 764
    move-result-wide v15

    .line 765
    invoke-virtual {v14}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 768
    move-result-wide v19

    .line 769
    add-long v19, v19, v15

    .line 771
    add-long v11, v11, v19

    .line 773
    cmp-long v15, v19, v3

    .line 775
    if-lez v15, :cond_1b

    .line 777
    invoke-virtual {v14}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    .line 780
    move-result v13

    .line 781
    move-wide/from16 v3, v19

    .line 783
    goto :goto_d

    .line 784
    :cond_1c
    cmp-long v0, v3, v31

    .line 786
    if-lez v0, :cond_1d

    .line 788
    div-long/2addr v11, v8

    .line 789
    cmp-long v0, v3, v11

    .line 791
    if-lez v0, :cond_1d

    .line 793
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 795
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 802
    move-result-object v0

    .line 803
    if-eqz v0, :cond_1d

    .line 805
    array-length v3, v0

    .line 806
    if-ne v3, v5, :cond_1d

    .line 808
    :try_start_0
    iget-object v3, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 810
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 813
    move-result-object v3

    .line 814
    aget-object v0, v0, v1

    .line 816
    const v1, 0x4c2200

    .line 819
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 822
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    move-object/from16 v30, v0

    .line 825
    :catch_0
    :cond_1d
    :goto_e
    const/16 v3, 0x2d

    .line 827
    const-wide/16 v8, 0x0

    .line 829
    move-object/from16 v0, p0

    .line 831
    move-object v1, v2

    .line 832
    move v2, v3

    .line 833
    move-wide v3, v8

    .line 834
    move v8, v5

    .line 835
    move-object/from16 v5, v30

    .line 837
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 840
    goto :goto_f

    .line 841
    :cond_1e
    move/from16 v22, v15

    .line 843
    const/4 v8, 0x1

    .line 844
    :goto_f
    add-int/lit8 v13, v22, -0x1

    .line 846
    move v15, v8

    .line 847
    const-wide/32 v8, 0x200000

    .line 850
    goto/16 :goto_0

    .line 852
    :cond_1f
    move v8, v15

    .line 853
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 856
    move-result v0

    .line 857
    sub-int/2addr v0, v8

    .line 858
    :goto_10
    if-ltz v0, :cond_21

    .line 860
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 863
    move-result-object v1

    .line 864
    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 866
    iget-object v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 868
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 871
    move-result v2

    .line 872
    if-nez v2, :cond_20

    .line 874
    iget-object v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 876
    const-class v3, Landroid/app/NotificationManager;

    .line 878
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 881
    move-result-object v2

    .line 882
    check-cast v2, Landroid/app/NotificationManager;

    .line 884
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 886
    iget v1, v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    .line 888
    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 891
    :cond_20
    add-int/lit8 v0, v0, -0x1

    .line 893
    goto :goto_10

    .line 894
    :cond_21
    const-wide/32 v0, 0x200000

    .line 897
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 900
    return-void
.end method

.method public final updatePowerSaveAllowlistUL()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/PowerExemptionManager;->getAllowListedAppIds(Z)[I

    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 13
    array-length v2, v0

    .line 14
    move v3, v1

    .line 15
    :goto_0
    const/4 v4, 0x1

    .line 16
    if-ge v3, v2, :cond_0

    .line 18
    aget v5, v0, v3

    .line 20
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 22
    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 30
    invoke-virtual {v0, v4}, Landroid/os/PowerExemptionManager;->getAllowListedAppIds(Z)[I

    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 36
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 39
    array-length v2, v0

    .line 40
    :goto_1
    if-ge v1, v2, :cond_1

    .line 42
    aget v3, v0, v1

    .line 44
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 46
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method

.method public updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 3
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 10
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 12
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 20
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 28
    xor-int/lit8 p1, p1, 0x1

    .line 30
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 32
    move v2, v0

    .line 33
    move v0, p1

    .line 34
    move p1, v1

    .line 35
    move v1, v2

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    const-string/jumbo v0, "low_power"

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Ljava/lang/String;Z)V

    .line 44
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 46
    return-void
.end method

.method public updateRestrictedModeAllowlistUL()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 12
    const-string/jumbo v1, "updateRestrictedModeAllowlist"

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 18
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 20
    const/4 v1, 0x4

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 30
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 33
    return-void
.end method

.method public updateRestrictedModeForUidUL(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)I

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 7
    if-eqz v1, :cond_1

    .line 9
    and-int/lit8 v0, v0, 0x8

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :goto_0
    const/4 v1, 0x4

    .line 17
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 20
    :cond_1
    return-void
.end method

.method public final updateRuleForAppIdleUL(II)V
    .locals 7

    .line 1
    const-string/jumbo v0, "updateRuleForAppIdleUL "

    .line 4
    const-string/jumbo v1, "updateRuleForAppIdleUL DENY "

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const-wide/32 v2, 0x200000

    .line 17
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v5, "updateRuleForAppIdleUL: "

    .line 28
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 44
    move-result v4

    .line 45
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 47
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const-string v5, "NetworkPolicy"

    .line 53
    const/4 v6, 0x2

    .line 54
    if-nez v4, :cond_2

    .line 56
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_2

    .line 68
    invoke-virtual {p0, v6, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 71
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 73
    if-eqz p0, :cond_3

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/4 p2, 0x0

    .line 94
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 97
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 99
    if-eqz p0, :cond_3

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string p1, " to DEFAULT"

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_3
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    return-void

    .line 125
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 128
    throw p0
.end method

.method public final updateRuleForBackgroundUL(I)V
    .locals 8

    .line 1
    const-string/jumbo v0, "updateRuleForBackgroundUL ALLOW "

    .line 4
    const-string/jumbo v1, "updateRuleForBackgroundUL "

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v3, "updateRuleForBackgroundUL: "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-wide/32 v3, 0x200000

    .line 32
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 35
    const/4 v2, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 39
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const-string v6, "NetworkPolicy"

    .line 42
    const/4 v7, 0x6

    .line 43
    if-nez v5, :cond_2

    .line 45
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 47
    invoke-virtual {v5, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 50
    move-result v5

    .line 51
    if-gez v5, :cond_2

    .line 53
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroid/net/NetworkPolicyManager$UidState;

    .line 61
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedNetworkWhileBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v7, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 71
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 73
    if-eqz p0, :cond_3

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string p1, " to DEFAULT"

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, v7, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 102
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 104
    if-eqz p0, :cond_3

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_3
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    return-void

    .line 125
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 128
    throw p0
.end method

.method public final updateRuleForLowPowerStandbyUL(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getEffectiveBlockedReasons(I)I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x5

    .line 19
    if-eqz v1, :cond_1

    .line 21
    and-int/lit8 v0, v0, 0x20

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 37
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 44
    :goto_0
    return-void
.end method

.method public final updateRulesForAllowlistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 8
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 26
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 28
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 30
    invoke-static {p3, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 33
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 35
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 37
    invoke-static {p3, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 40
    const/4 v3, 0x3

    .line 41
    if-ne p2, v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 45
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 47
    invoke-static {p3, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 50
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 58
    move-result p1

    .line 59
    sub-int/2addr p1, v1

    .line 60
    :goto_1
    if-ltz p1, :cond_3

    .line 62
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 70
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 81
    move-result v0

    .line 82
    invoke-virtual {p3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const/4 p1, 0x0

    .line 93
    const/4 p3, 0x2

    .line 94
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 97
    :goto_2
    return-void
.end method

.method public final updateRulesForAppIdleParoleUL()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 3
    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v1, v0, 0x1

    .line 9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 11
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 14
    move-result v2

    .line 15
    new-instance v3, Landroid/util/SparseIntArray;

    .line 17
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    :goto_0
    const/4 v6, 0x2

    .line 23
    const/4 v7, 0x1

    .line 24
    if-ge v5, v2, :cond_5

    .line 26
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 31
    move-result v8

    .line 32
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    .line 35
    move-result v9

    .line 36
    if-nez v9, :cond_0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 41
    monitor-enter v9

    .line 42
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 50
    if-nez v10, :cond_1

    .line 52
    move v10, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget v10, v10, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 56
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez v1, :cond_2

    .line 59
    const v9, 0xffff

    .line 62
    and-int/2addr v9, v10

    .line 63
    if-nez v9, :cond_2

    .line 65
    goto :goto_4

    .line 66
    :cond_2
    if-nez v0, :cond_3

    .line 68
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v7, v4

    .line 76
    :goto_2
    if-eqz v7, :cond_4

    .line 78
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 80
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    .line 83
    move-result v10

    .line 84
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_4

    .line 90
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 93
    move-result v9

    .line 94
    if-nez v9, :cond_4

    .line 96
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 98
    invoke-virtual {v9, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    invoke-virtual {v3, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 107
    invoke-virtual {v6, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    :goto_3
    invoke-virtual {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    .line 113
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0

    .line 119
    :cond_5
    if-eqz v1, :cond_6

    .line 121
    goto :goto_5

    .line 122
    :cond_6
    move v7, v6

    .line 123
    :goto_5
    invoke-virtual {p0, v6, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 126
    return-void
.end method

.method public final updateRulesForAppIdleUL()V
    .locals 13

    .line 1
    const-string/jumbo v0, "updateRulesForAppIdleUL"

    .line 4
    const-wide/32 v1, 0x200000

    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 15
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 17
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    move-result v4

    .line 25
    add-int/lit8 v4, v4, -0x1

    .line 27
    :goto_0
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-ltz v4, :cond_2

    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 37
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 39
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 41
    check-cast v8, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 43
    iget-object v8, v8, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 45
    iget-object v8, v8, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 47
    invoke-interface {v8, v7}, Lcom/android/server/usage/AppStandbyInternal;->getIdleUidsForUser(I)[I

    .line 50
    move-result-object v7

    .line 51
    array-length v8, v7

    .line 52
    move v9, v6

    .line 53
    :goto_1
    if-ge v9, v8, :cond_1

    .line 55
    aget v10, v7, v9

    .line 57
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 59
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    .line 62
    move-result v12

    .line 63
    invoke-virtual {v11, v12, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 66
    move-result v11

    .line 67
    if-nez v11, :cond_0

    .line 69
    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_0

    .line 75
    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 78
    move-result v11

    .line 79
    if-nez v11, :cond_0

    .line 81
    invoke-virtual {v0, v10, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_3

    .line 87
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0, v5, v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 99
    return-void

    .line 100
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    throw p0
.end method

.method public final updateRulesForBackgroundChainUL()V
    .locals 9

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    const-string/jumbo v2, "updateRulesForBackgroundChainUL"

    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 15
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 17
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x1

    .line 26
    sub-int/2addr v4, v5

    .line 27
    :goto_0
    if-ltz v4, :cond_0

    .line 29
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 35
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 37
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 39
    invoke-static {v2, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 42
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 44
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 46
    invoke-static {v2, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 49
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 51
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 53
    invoke-static {v2, v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 56
    add-int/lit8 v4, v4, -0x1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 66
    move-result v3

    .line 67
    sub-int/2addr v3, v5

    .line 68
    :goto_1
    if-ltz v3, :cond_3

    .line 70
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 72
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 77
    move-result v6

    .line 78
    invoke-virtual {v4, v6}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 81
    move-result v4

    .line 82
    if-gez v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/net/NetworkPolicyManager$UidState;

    .line 92
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedNetworkWhileBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_2

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 103
    move-result v4

    .line 104
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const/4 v3, 0x6

    .line 111
    invoke-virtual {p0, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    return-void

    .line 118
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    throw p0
.end method

.method public final updateRulesForDataUsageRestrictionsUL(I)V
    .locals 4

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 39
    throw p0
.end method

.method public final updateRulesForDataUsageRestrictionsULInner(I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    const-string/jumbo v0, "updateRuleForRestrictBackgroundUL("

    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_1

    .line 14
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const-string v0, "NetworkPolicy"

    .line 20
    const-string/jumbo v1, "no need to update restrict data rules for uid "

    .line 23
    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 33
    move-result v3

    .line 34
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    .line 37
    move-result v5

    .line 38
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 40
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    move-result v7

    .line 44
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Ljava/util/Set;

    .line 50
    if-eqz v6, :cond_2

    .line 52
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v8

    .line 56
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 62
    const/4 v6, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v6, v4

    .line 65
    :goto_0
    and-int/lit8 v8, v3, 0x1

    .line 67
    if-eqz v8, :cond_3

    .line 69
    const/4 v8, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v8, v4

    .line 72
    :goto_1
    and-int/lit8 v3, v3, 0x4

    .line 74
    if-eqz v3, :cond_4

    .line 76
    const/4 v3, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move v3, v4

    .line 79
    :goto_2
    if-eqz v6, :cond_5

    .line 81
    const/high16 v10, 0x40000

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v10, v4

    .line 85
    :goto_3
    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 87
    const/high16 v12, 0x10000

    .line 89
    if-eqz v11, :cond_6

    .line 91
    move v11, v12

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move v11, v4

    .line 94
    :goto_4
    or-int/2addr v10, v11

    .line 95
    if-eqz v8, :cond_7

    .line 97
    const/high16 v13, 0x20000

    .line 99
    goto :goto_5

    .line 100
    :cond_7
    move v13, v4

    .line 101
    :goto_5
    or-int/2addr v10, v13

    .line 102
    const/16 v13, 0x2710

    .line 104
    if-ge v2, v13, :cond_8

    .line 106
    const/high16 v13, 0x20000

    .line 108
    goto :goto_6

    .line 109
    :cond_8
    move v13, v4

    .line 110
    :goto_6
    if-eqz v5, :cond_9

    .line 112
    const/high16 v14, 0x40000

    .line 114
    goto :goto_7

    .line 115
    :cond_9
    move v14, v4

    .line 116
    :goto_7
    or-int/2addr v13, v14

    .line 117
    if-eqz v3, :cond_a

    .line 119
    goto :goto_8

    .line 120
    :cond_a
    move v12, v4

    .line 121
    :goto_8
    or-int/2addr v12, v13

    .line 122
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 124
    monitor-enter v13

    .line 125
    :try_start_0
    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 127
    invoke-static {v2, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(ILandroid/util/SparseArray;)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 130
    move-result-object v14

    .line 131
    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    .line 133
    invoke-static {v2, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(ILandroid/util/SparseArray;)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 136
    move-result-object v15

    .line 137
    iget v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 139
    iput v11, v15, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 141
    iget v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 143
    iput v11, v15, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 145
    iget v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 147
    iput v11, v15, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 149
    iget v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 151
    const v16, 0xffff

    .line 154
    and-int v11, v11, v16

    .line 156
    or-int/2addr v11, v10

    .line 157
    iput v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 159
    iget v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 161
    and-int v11, v11, v16

    .line 163
    or-int/2addr v11, v12

    .line 164
    iput v11, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 166
    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 169
    iget v11, v15, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 171
    iget v4, v14, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 173
    iget v9, v15, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 175
    if-ne v11, v4, :cond_b

    .line 177
    move/from16 v18, v9

    .line 179
    const/4 v9, 0x0

    .line 180
    goto :goto_9

    .line 181
    :cond_b
    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    .line 184
    move-result v17

    .line 185
    move/from16 v18, v9

    .line 187
    move/from16 v9, v17

    .line 189
    :goto_9
    sget-boolean v17, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 191
    if-eqz v17, :cond_c

    .line 193
    const-string v7, "NetworkPolicy"

    .line 195
    move/from16 v19, v9

    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, "): isForeground="

    .line 207
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    const-string v0, ", isDenied="

    .line 215
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, ", isAllowed="

    .line 223
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, ", isRestrictedByAdmin="

    .line 231
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string v0, ", oldBlockedState="

    .line 239
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v0, ", newBlockedState="

    .line 247
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    const-string v0, ", newBlockedMeteredReasons="

    .line 255
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, ", newAllowedMeteredReasons="

    .line 267
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->allowedReasonsToString(I)Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v0

    .line 281
    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    goto :goto_a

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    goto/16 :goto_11

    .line 288
    :cond_c
    move/from16 v19, v9

    .line 290
    :goto_a
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-eq v11, v4, :cond_d

    .line 293
    invoke-virtual {v1, v2, v4, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 296
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 298
    move/from16 v5, v19

    .line 300
    const/4 v3, 0x1

    .line 301
    invoke-virtual {v0, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    :cond_d
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUseMeteredFirewallChains:Z

    .line 310
    const/high16 v3, 0x50000

    .line 312
    if-eqz v0, :cond_11

    .line 314
    const/high16 v0, 0x40000

    .line 316
    and-int/2addr v0, v4

    .line 317
    const/4 v5, 0x2

    .line 318
    const/16 v6, 0xc

    .line 320
    if-eqz v0, :cond_e

    .line 322
    invoke-virtual {v1, v6, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 325
    const/high16 v0, 0x20000

    .line 327
    const/4 v7, 0x0

    .line 328
    goto :goto_b

    .line 329
    :cond_e
    const/4 v7, 0x0

    .line 330
    invoke-virtual {v1, v6, v2, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 333
    const/high16 v0, 0x20000

    .line 335
    :goto_b
    and-int/2addr v0, v4

    .line 336
    const/16 v4, 0xb

    .line 338
    if-eqz v0, :cond_f

    .line 340
    invoke-virtual {v1, v4, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 343
    goto :goto_c

    .line 344
    :cond_f
    invoke-virtual {v1, v4, v2, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 347
    :goto_c
    and-int v0, v12, v3

    .line 349
    const/16 v3, 0xa

    .line 351
    if-eqz v0, :cond_10

    .line 353
    const/4 v5, 0x1

    .line 354
    invoke-virtual {v1, v3, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 357
    goto/16 :goto_10

    .line 359
    :cond_10
    invoke-virtual {v1, v3, v2, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 362
    goto/16 :goto_10

    .line 364
    :cond_11
    const/4 v5, 0x1

    .line 365
    const/4 v7, 0x0

    .line 366
    const/high16 v0, 0x60000

    .line 368
    and-int v6, v11, v0

    .line 370
    if-nez v6, :cond_12

    .line 372
    and-int v6, v4, v0

    .line 374
    if-eqz v6, :cond_15

    .line 376
    :cond_12
    and-int/2addr v0, v4

    .line 377
    if-eqz v0, :cond_13

    .line 379
    move v4, v5

    .line 380
    goto :goto_d

    .line 381
    :cond_13
    move v4, v7

    .line 382
    :goto_d
    const-string v6, "NetworkPolicy"

    .line 384
    if-eqz v17, :cond_14

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 388
    const-string/jumbo v8, "setMeteredNetworkDenylist "

    .line 391
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    const-string v8, ": "

    .line 399
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-result-object v0

    .line 409
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_14
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 414
    invoke-interface {v0, v2, v4}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 417
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 419
    invoke-virtual {v0, v2, v4}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V

    .line 422
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_15

    .line 428
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 431
    move-result v0

    .line 432
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 434
    invoke-interface {v8, v0, v4}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 437
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 439
    invoke-virtual {v8, v0, v4}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    goto :goto_e

    .line 443
    :catch_0
    move-exception v0

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    .line 446
    const-string/jumbo v9, "problem setting denylist ("

    .line 449
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 455
    const-string v4, ") rules for "

    .line 457
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    move-result-object v4

    .line 467
    invoke-static {v6, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    :catch_1
    :cond_15
    :goto_e
    and-int v0, v18, v3

    .line 472
    if-nez v0, :cond_16

    .line 474
    and-int v0, v12, v3

    .line 476
    if-eqz v0, :cond_19

    .line 478
    :cond_16
    and-int v0, v12, v3

    .line 480
    if-eqz v0, :cond_17

    .line 482
    move v4, v5

    .line 483
    goto :goto_f

    .line 484
    :cond_17
    move v4, v7

    .line 485
    :goto_f
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 487
    const-string v3, "NetworkPolicy"

    .line 489
    if-eqz v0, :cond_18

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v5, "setMeteredNetworkAllowlist "

    .line 496
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    const-string v5, ": "

    .line 504
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    move-result-object v0

    .line 514
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_18
    :try_start_2
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 519
    invoke-interface {v0, v2, v4}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 522
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 524
    invoke-virtual {v0, v2, v4}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V

    .line 527
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_19

    .line 533
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 536
    move-result v0

    .line 537
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 539
    invoke-interface {v5, v0, v4}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 542
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 544
    invoke-virtual {v1, v0, v4}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 547
    goto :goto_10

    .line 548
    :catch_2
    move-exception v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    .line 551
    const-string/jumbo v5, "problem setting allowlist ("

    .line 554
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 560
    const-string v4, ") rules for "

    .line 562
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    move-result-object v1

    .line 572
    invoke-static {v3, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    :catch_3
    :cond_19
    :goto_10
    return-void

    .line 576
    :goto_11
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    throw v0
.end method

.method public final updateRulesForDeviceIdleUL()V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateRulesForDeviceIdleUL"

    .line 4
    const-wide/32 v1, 0x200000

    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 12
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    throw p0
.end method

.method public final updateRulesForGlobalChangeAL(Z)V
    .locals 4

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_1

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const-string v2, "R"

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, "-"

    .line 17
    :goto_0
    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 27
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 29
    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForBackgroundChainUL()V

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    .line 49
    if-eqz p1, :cond_3

    .line 51
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    return-void

    .line 71
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    throw p0
.end method

.method public final updateRulesForLowPowerStandbyUL()V
    .locals 8

    .line 1
    const-wide/32 v0, 0x200000

    .line 4
    const-string/jumbo v2, "updateRulesForLowPowerStandbyUL"

    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 12
    const/4 v3, 0x5

    .line 13
    if-eqz v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 17
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 20
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x1

    .line 27
    sub-int/2addr v2, v4

    .line 28
    :goto_0
    if-ltz v2, :cond_1

    .line 30
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 35
    move-result v5

    .line 36
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getEffectiveBlockedReasons(I)I

    .line 39
    move-result v6

    .line 40
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_0

    .line 46
    and-int/lit8 v6, v6, 0x20

    .line 48
    if-nez v6, :cond_0

    .line 50
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 52
    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 63
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 v2, 0x0

    .line 68
    const/4 v4, 0x2

    .line 69
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    return-void

    .line 76
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 79
    throw p0
.end method

.method public final updateRulesForPowerRestrictionsUL(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    return-void
.end method

.method public final updateRulesForPowerRestrictionsUL(IZ)V
    .locals 4

    const-wide/32 v0, 0x200000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    const-string/jumbo v2, "updateRulesForPowerRestrictionsUL: "

    const-string v3, "/"

    .line 4
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 5
    const-string v3, "I"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9
    throw p0
.end method

.method public final updateRulesForPowerRestrictionsULInner(IZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL("

    .line 10
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_1

    .line 16
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    const-string v0, "NetworkPolicy"

    .line 22
    const-string/jumbo v2, "no need to update restrict power rules for uid "

    .line 25
    invoke-static {v1, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 32
    move-result v4

    .line 33
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroid/net/NetworkPolicyManager$UidState;

    .line 41
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 44
    move-result v5

    .line 45
    iget-boolean v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 47
    invoke-virtual {v0, v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 50
    move-result v6

    .line 51
    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 53
    monitor-enter v7

    .line 54
    :try_start_0
    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 56
    invoke-static {v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(ILandroid/util/SparseArray;)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 59
    move-result-object v8

    .line 60
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    .line 62
    invoke-static {v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(ILandroid/util/SparseArray;)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 65
    move-result-object v9

    .line 66
    iget v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 68
    iput v10, v9, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 70
    iget v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 72
    iput v10, v9, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 74
    iget v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 76
    iput v10, v9, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 78
    iget-boolean v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 80
    iget-boolean v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x2

    .line 84
    if-eqz v11, :cond_2

    .line 86
    move v11, v13

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move v11, v12

    .line 89
    :goto_0
    or-int/2addr v10, v11

    .line 90
    iget-boolean v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 92
    const/16 v14, 0x20

    .line 94
    if-eqz v11, :cond_3

    .line 96
    move v11, v14

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v11, v12

    .line 99
    :goto_1
    or-int/2addr v10, v11

    .line 100
    if-eqz v2, :cond_4

    .line 102
    const/4 v15, 0x4

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move v15, v12

    .line 105
    :goto_2
    or-int/2addr v10, v15

    .line 106
    iget v15, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 108
    const/16 v16, 0x8

    .line 110
    and-int/lit8 v15, v15, 0x8

    .line 112
    or-int/2addr v10, v15

    .line 113
    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 115
    const/16 v17, 0x40

    .line 117
    if-eqz v15, :cond_5

    .line 119
    move/from16 v15, v17

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move v15, v12

    .line 123
    :goto_3
    or-int/2addr v10, v15

    .line 124
    const/16 v15, 0x2710

    .line 126
    const/4 v11, 0x1

    .line 127
    if-ge v1, v15, :cond_6

    .line 129
    move v15, v11

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    move v15, v12

    .line 132
    :goto_4
    if-eqz v4, :cond_7

    .line 134
    goto :goto_5

    .line 135
    :cond_7
    move v13, v12

    .line 136
    :goto_5
    or-int/2addr v13, v15

    .line 137
    if-eqz v5, :cond_8

    .line 139
    goto :goto_6

    .line 140
    :cond_8
    move v14, v12

    .line 141
    :goto_6
    or-int/2addr v13, v14

    .line 142
    invoke-virtual {v0, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 145
    move-result v14

    .line 146
    if-eqz v14, :cond_9

    .line 148
    const/16 v18, 0x4

    .line 150
    goto :goto_7

    .line 151
    :cond_9
    move/from16 v18, v12

    .line 153
    :goto_7
    or-int v13, v13, v18

    .line 155
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 158
    move-result v14

    .line 159
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 161
    invoke-virtual {v15, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_a

    .line 167
    goto :goto_8

    .line 168
    :cond_a
    move/from16 v16, v12

    .line 170
    :goto_8
    or-int v13, v13, v16

    .line 172
    iget v14, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 174
    and-int/lit8 v14, v14, 0x10

    .line 176
    or-int/2addr v13, v14

    .line 177
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 179
    invoke-virtual {v14, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 182
    move-result v14

    .line 183
    if-eqz v14, :cond_b

    .line 185
    goto :goto_9

    .line 186
    :cond_b
    move/from16 v17, v12

    .line 188
    :goto_9
    or-int v13, v13, v17

    .line 190
    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 192
    if-eqz v14, :cond_d

    .line 194
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 196
    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 199
    move-result v14

    .line 200
    if-gez v14, :cond_c

    .line 202
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 204
    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 207
    move-result-object v14

    .line 208
    check-cast v14, Landroid/net/NetworkPolicyManager$UidState;

    .line 210
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedNetworkWhileBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 213
    move-result v14

    .line 214
    if-eqz v14, :cond_d

    .line 216
    :cond_c
    const/16 v14, 0x80

    .line 218
    goto :goto_a

    .line 219
    :cond_d
    move v14, v12

    .line 220
    :goto_a
    or-int/2addr v13, v14

    .line 221
    iget v14, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 223
    const/high16 v15, -0x10000

    .line 225
    and-int/2addr v14, v15

    .line 226
    or-int/2addr v10, v14

    .line 227
    iput v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 229
    iget v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 231
    and-int/2addr v10, v15

    .line 232
    or-int/2addr v10, v13

    .line 233
    iput v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 235
    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 238
    sget-boolean v10, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 240
    if-eqz v10, :cond_e

    .line 242
    const-string v10, "NetworkPolicy"

    .line 244
    new-instance v13, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v3, "), isIdle: "

    .line 254
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    const-string v2, ", mRestrictPower: "

    .line 262
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 267
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, ", mDeviceIdleMode: "

    .line 272
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 277
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    const-string v2, ", isForeground="

    .line 282
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    const-string v2, ", isTop="

    .line 290
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 296
    const-string v2, ", isWhitelisted="

    .line 298
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, ", oldUidBlockedState="

    .line 306
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, ", newUidBlockedState="

    .line 314
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v2

    .line 324
    invoke-static {v10, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    goto :goto_b

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    goto :goto_d

    .line 330
    :cond_e
    :goto_b
    iget v2, v9, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 332
    iget v3, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 334
    if-ne v2, v3, :cond_f

    .line 336
    goto :goto_c

    .line 337
    :cond_f
    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    .line 340
    move-result v12

    .line 341
    :goto_c
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    if-eq v2, v3, :cond_10

    .line 344
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 347
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 349
    invoke-virtual {v0, v11, v1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    :cond_10
    return-void

    .line 357
    :goto_d
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    throw v0
.end method

.method public final updateRulesForRestrictBackgroundUL()V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateRulesForRestrictBackgroundUL"

    .line 4
    const-wide/32 v1, 0x200000

    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    const-string/jumbo v0, "updateRulesForRestrictBackground"

    .line 13
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    throw p0
.end method

.method public final updateRulesForRestrictPowerUL()V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateRulesForRestrictPowerUL"

    .line 4
    const-wide/32 v1, 0x200000

    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 13
    const-string/jumbo v0, "updateRulesForPowerSaveUL"

    .line 16
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 21
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllowlistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    const-string/jumbo v0, "updateRulesForRestrictPower"

    .line 33
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    .line 35
    const/4 v4, 0x3

    .line 36
    invoke-direct {v3, v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    throw p0
.end method

.method public final updateSubscriptions()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "NetworkPolicy"

    .line 7
    const-string/jumbo v1, "updateSubscriptions()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    const-string/jumbo v0, "updateSubscriptions"

    .line 16
    const-wide/32 v1, 0x200000

    .line 19
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 24
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 26
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 32
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 34
    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 42
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v5, Landroid/util/SparseArray;

    .line 57
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 60
    move-result v6

    .line 61
    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 64
    new-instance v6, Landroid/util/SparseArray;

    .line 66
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 69
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v3

    .line 73
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_3

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 85
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 88
    move-result v7

    .line 89
    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 96
    move-result-object v9

    .line 97
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_1

    .line 103
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    .line 106
    move-result v10

    .line 107
    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const-string v9, "NetworkPolicy"

    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    .line 115
    const-string v11, "Missing subscriberId for subId "

    .line 117
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    .line 123
    move-result v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v10

    .line 131
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getMergedImsisFromGroup()[Ljava/lang/String;

    .line 137
    move-result-object v8

    .line 138
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 147
    invoke-virtual {v8, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 150
    move-result-object v8

    .line 151
    if-eqz v8, :cond_2

    .line 153
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    const-string v8, "NetworkPolicy"

    .line 159
    const-string v9, "Missing CarrierConfig for subId "

    .line 161
    invoke-static {v7, v9, v8}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 167
    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 170
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 173
    const/4 v3, 0x0

    .line 174
    move v7, v3

    .line 175
    :goto_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 178
    move-result v8

    .line 179
    if-ge v7, v8, :cond_4

    .line 181
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 186
    move-result v9

    .line 187
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 190
    move-result-object v10

    .line 191
    check-cast v10, Ljava/lang/String;

    .line 193
    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    add-int/lit8 v7, v7, 0x1

    .line 198
    goto :goto_2

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    goto :goto_4

    .line 201
    :cond_4
    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 203
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 208
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 211
    move-result v4

    .line 212
    if-ge v3, v4, :cond_5

    .line 214
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 216
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 219
    move-result v5

    .line 220
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 223
    move-result-object v7

    .line 224
    check-cast v7, Landroid/os/PersistableBundle;

    .line 226
    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    add-int/lit8 v3, v3, 0x1

    .line 231
    goto :goto_3

    .line 232
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 236
    return-void

    .line 237
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    throw p0
.end method

.method public final updateUidStateUL(IIIJ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p1

    .line 5
    move/from16 v6, p3

    .line 7
    move-wide/from16 v4, p4

    .line 9
    const-string v1, "Ignoring older uid state updates; uid="

    .line 11
    const-string/jumbo v2, "updateUidStateUL: "

    .line 14
    const-string v3, "/"

    .line 16
    invoke-static {v7, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v2

    .line 20
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 23
    move-result-object v8

    .line 24
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const-wide/32 v8, 0x200000

    .line 50
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    move-object v10, v2

    .line 60
    check-cast v10, Landroid/net/NetworkPolicyManager$UidState;

    .line 62
    const/4 v11, 0x0

    .line 63
    if-eqz v10, :cond_1

    .line 65
    iget-wide v2, v10, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    .line 67
    cmp-long v2, v4, v2

    .line 69
    if-gez v2, :cond_1

    .line 71
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 73
    if-eqz v0, :cond_0

    .line 75
    const-string v0, "NetworkPolicy"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ",procState="

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ",seq="

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ",cap="

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ",oldUidState="

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto/16 :goto_7

    .line 132
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 135
    return v11

    .line 136
    :cond_1
    if-eqz v10, :cond_3

    .line 138
    :try_start_1
    iget v1, v10, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    .line 140
    move/from16 v12, p2

    .line 142
    if-ne v1, v12, :cond_4

    .line 144
    iget v1, v10, Landroid/net/NetworkPolicyManager$UidState;->capability:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eq v1, v6, :cond_2

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    return v11

    .line 153
    :cond_3
    move/from16 v12, p2

    .line 155
    :cond_4
    :goto_1
    :try_start_2
    new-instance v13, Landroid/net/NetworkPolicyManager$UidState;

    .line 157
    move-object v1, v13

    .line 158
    move/from16 v2, p1

    .line 160
    move/from16 v3, p2

    .line 162
    move-wide/from16 v4, p4

    .line 164
    move/from16 v6, p3

    .line 166
    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkPolicyManager$UidState;-><init>(IIJI)V

    .line 169
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 171
    invoke-virtual {v1, v7, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 177
    move-result v1

    .line 178
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 181
    move-result v2

    .line 182
    if-eq v1, v2, :cond_5

    .line 184
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 187
    :cond_5
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 190
    move-result v1

    .line 191
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 194
    move-result v2

    .line 195
    const/4 v3, 0x1

    .line 196
    if-eq v1, v2, :cond_c

    .line 198
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 201
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 203
    if-eqz v1, :cond_8

    .line 205
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 207
    if-eqz v1, :cond_8

    .line 209
    invoke-virtual {v0, v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_7

    .line 215
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_6

    .line 221
    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {v0, v3, v7, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 225
    goto :goto_3

    .line 226
    :cond_7
    :goto_2
    invoke-virtual {v0, v3, v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 229
    :cond_8
    :goto_3
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 231
    if-eqz v1, :cond_b

    .line 233
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 235
    if-eqz v1, :cond_b

    .line 237
    invoke-virtual {v0, v7, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromPowerSaveUL(IZ)Z

    .line 240
    move-result v1

    .line 241
    const/4 v2, 0x3

    .line 242
    if-nez v1, :cond_a

    .line 244
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_9

    .line 250
    goto :goto_4

    .line 251
    :cond_9
    invoke-virtual {v0, v2, v7, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 254
    goto :goto_5

    .line 255
    :cond_a
    :goto_4
    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 258
    :cond_b
    :goto_5
    move v11, v3

    .line 259
    :cond_c
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 261
    if-eqz v1, :cond_e

    .line 263
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedNetworkWhileBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 266
    move-result v1

    .line 267
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedNetworkWhileBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 270
    move-result v2

    .line 271
    if-nez v1, :cond_d

    .line 273
    if-eqz v2, :cond_d

    .line 275
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 277
    invoke-virtual {v1, v7}, Landroid/util/SparseLongArray;->delete(I)V

    .line 280
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForBackgroundUL(I)V

    .line 283
    move v11, v3

    .line 284
    goto :goto_6

    .line 285
    :cond_d
    if-nez v2, :cond_e

    .line 287
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 289
    invoke-virtual {v2, v7}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 292
    move-result v2

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 296
    move-result-wide v4

    .line 297
    iget-wide v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundRestrictionDelayMs:J

    .line 299
    add-long/2addr v4, v14

    .line 300
    if-eqz v1, :cond_e

    .line 302
    if-gez v2, :cond_e

    .line 304
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 306
    invoke-virtual {v1, v7, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 309
    iget-wide v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNextProcessBackgroundUidsTime:J

    .line 311
    cmp-long v1, v4, v1

    .line 313
    if-gez v1, :cond_e

    .line 315
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 317
    const/16 v2, 0x18

    .line 319
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 324
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 327
    iput-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNextProcessBackgroundUidsTime:J

    .line 329
    :cond_e
    :goto_6
    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 331
    if-eqz v1, :cond_f

    .line 333
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 336
    move-result v1

    .line 337
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    .line 340
    move-result v2

    .line 341
    if-eq v1, v2, :cond_f

    .line 343
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    .line 346
    move v11, v3

    .line 347
    :cond_f
    if-eqz v11, :cond_10

    .line 349
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    :cond_10
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 355
    return v3

    .line 356
    :goto_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 359
    throw v0
.end method

.method public final writeFirewallPolicyAL()V
    .locals 8

    .line 1
    const-string/jumbo v0, "firewall-policy"

    .line 4
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string v1, "NetworkPolicy"

    .line 10
    const-string/jumbo v2, "writeFirewallPolicyAL"

    .line 13
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    .line 19
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 22
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    sget-object v5, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 35
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 38
    move-result v6

    .line 39
    if-ge v4, v6, :cond_2

    .line 41
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 44
    move-result v6

    .line 45
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    const-string/jumbo v7, "uid"

    .line 58
    invoke-static {v3, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 61
    const-string/jumbo v6, "policy"

    .line 64
    invoke-static {v3, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 67
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-object v1, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 78
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    .line 80
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    goto :goto_3

    .line 84
    :catch_1
    :goto_2
    if-eqz v1, :cond_3

    .line 86
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    .line 88
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 91
    :cond_3
    :goto_3
    return-void
.end method

.method public final writePolicyAL()V
    .locals 14

    .line 1
    const-string/jumbo v0, "revoked-restrict-background"

    .line 4
    const-string/jumbo v1, "whitelist"

    .line 7
    const-string/jumbo v2, "uid-policy"

    .line 10
    const-string/jumbo v3, "network-policy"

    .line 13
    const-string/jumbo v4, "policy-list"

    .line 16
    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 18
    if-eqz v5, :cond_0

    .line 20
    const-string v5, "NetworkPolicy"

    .line 22
    const-string/jumbo v6, "writePolicyAL()"

    .line 25
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 31
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 34
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 38
    move-result-object v7

    .line 39
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    invoke-interface {v7, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    const-string/jumbo v8, "version"

    .line 50
    const/16 v9, 0xe

    .line 52
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 55
    const-string/jumbo v8, "restrictBackground"

    .line 58
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 60
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 63
    const/4 v8, 0x0

    .line 64
    move v9, v8

    .line 65
    :goto_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 70
    move-result v10

    .line 71
    if-ge v9, v10, :cond_5

    .line 73
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 75
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Landroid/net/NetworkPolicy;

    .line 81
    iget-object v11, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 83
    invoke-static {v11}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    .line 86
    move-result v12

    .line 87
    if-nez v12, :cond_1

    .line 89
    goto/16 :goto_3

    .line 91
    :cond_1
    invoke-interface {v7, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string/jumbo v12, "networkTemplate"

    .line 97
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 100
    move-result v13

    .line 101
    invoke-static {v7, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 107
    move-result-object v12

    .line 108
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    .line 111
    move-result v12

    .line 112
    if-eqz v12, :cond_2

    .line 114
    move-object v12, v5

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 119
    move-result-object v12

    .line 120
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v12

    .line 124
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v12

    .line 128
    check-cast v12, Ljava/lang/String;

    .line 130
    :goto_1
    if-eqz v12, :cond_3

    .line 132
    const-string/jumbo v13, "subscriberId"

    .line 135
    invoke-interface {v7, v5, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    goto :goto_2

    .line 139
    :catch_0
    move-object v5, v6

    .line 140
    goto/16 :goto_7

    .line 142
    :cond_3
    :goto_2
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 145
    move-result-object v12

    .line 146
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    .line 149
    move-result v12

    .line 150
    const-string/jumbo v13, "subscriberIdMatchRule"

    .line 153
    invoke-static {v7, v13, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 156
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    .line 159
    move-result-object v12

    .line 160
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    .line 163
    move-result v12

    .line 164
    if-nez v12, :cond_4

    .line 166
    const-string/jumbo v12, "networkId"

    .line 169
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    .line 172
    move-result-object v13

    .line 173
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v13

    .line 177
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v13

    .line 181
    check-cast v13, Ljava/lang/String;

    .line 183
    invoke-interface {v7, v5, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    :cond_4
    const-string/jumbo v12, "templateMetered"

    .line 189
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getMeteredness()I

    .line 192
    move-result v11

    .line 193
    invoke-static {v7, v12, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 196
    const-string/jumbo v11, "cycleStart"

    .line 199
    iget-object v12, v10, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 201
    iget-object v12, v12, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 203
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    .line 206
    move-result-object v12

    .line 207
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 210
    const-string/jumbo v11, "cycleEnd"

    .line 213
    iget-object v12, v10, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 215
    iget-object v12, v12, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 217
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    .line 220
    move-result-object v12

    .line 221
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 224
    const-string/jumbo v11, "cyclePeriod"

    .line 227
    iget-object v12, v10, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 229
    iget-object v12, v12, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 231
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    .line 234
    move-result-object v12

    .line 235
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 238
    const-string/jumbo v11, "warningBytes"

    .line 241
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 243
    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 246
    const-string/jumbo v11, "limitBytes"

    .line 249
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 251
    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 254
    const-string/jumbo v11, "lastWarningSnooze"

    .line 257
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 259
    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 262
    const-string/jumbo v11, "lastLimitSnooze"

    .line 265
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 267
    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 270
    const-string/jumbo v11, "metered"

    .line 273
    iget-boolean v12, v10, Landroid/net/NetworkPolicy;->metered:Z

    .line 275
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 278
    const-string/jumbo v11, "inferred"

    .line 281
    iget-boolean v10, v10, Landroid/net/NetworkPolicy;->inferred:Z

    .line 283
    invoke-static {v7, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 286
    invoke-interface {v7, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 291
    goto/16 :goto_0

    .line 293
    :cond_5
    move v3, v8

    .line 294
    :goto_4
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 296
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 299
    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    const-string/jumbo v10, "uid"

    .line 303
    if-ge v3, v9, :cond_7

    .line 305
    :try_start_2
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 307
    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 310
    move-result v9

    .line 311
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 313
    invoke-virtual {v11, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 316
    move-result v11

    .line 317
    if-nez v11, :cond_6

    .line 319
    goto :goto_5

    .line 320
    :cond_6
    invoke-interface {v7, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-static {v7, v10, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 326
    const-string/jumbo v9, "policy"

    .line 329
    invoke-static {v7, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 332
    invoke-interface {v7, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 337
    goto :goto_4

    .line 338
    :cond_7
    invoke-interface {v7, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-interface {v7, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 346
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 349
    move-result v2

    .line 350
    :goto_6
    if-ge v8, v2, :cond_8

    .line 352
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 354
    invoke-virtual {v3, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 357
    move-result v3

    .line 358
    invoke-interface {v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    invoke-static {v7, v10, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 364
    invoke-interface {v7, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    add-int/lit8 v8, v8, 0x1

    .line 369
    goto :goto_6

    .line 370
    :cond_8
    invoke-interface {v7, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 376
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 378
    invoke-virtual {v0, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 381
    goto :goto_8

    .line 382
    :catch_1
    :goto_7
    if-eqz v5, :cond_9

    .line 384
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 386
    invoke-virtual {p0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 389
    :cond_9
    :goto_8
    return-void
.end method
