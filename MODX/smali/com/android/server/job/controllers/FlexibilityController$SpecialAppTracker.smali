.class public final Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

.field public final mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

.field public final mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

.field public mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

.field public final mHasFeatureTelephonySubscription:Z

.field public final mPowerAllowlistedApps:Landroid/util/ArraySet;

.field public final mSatLock:Ljava/lang/Object;

.field public final mSpecialApps:Landroid/util/SparseSetArray;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public static -$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 8
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mHasFeatureTelephonySubscription:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 25
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 27
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updatePowerAllowlistCache()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/util/SparseSetArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 20
    new-instance v0, Landroid/util/SparseSetArray;

    .line 22
    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    .line 29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    .line 36
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    .line 43
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    .line 46
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    .line 48
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    move-result-object p1

    .line 54
    const-string v0, "android.hardware.telephony.subscription"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 59
    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mHasFeatureTelephonySubscription:Z

    .line 62
    return-void
.end method


# virtual methods
.method public final updateCarrierPrivilegedCallbackRegistration()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mHasFeatureTelephonySubscription:Z

    .line 8
    if-nez v1, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/util/ArraySet;

    .line 17
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    new-instance v3, Landroid/util/IntArray;

    .line 25
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 28
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v4

    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 36
    :goto_0
    if-ltz v4, :cond_2

    .line 38
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    move-result v5

    .line 44
    invoke-virtual {v3, v5}, Landroid/util/IntArray;->add(I)V

    .line 47
    add-int/lit8 v4, v4, -0x1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto/16 :goto_4

    .line 53
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 57
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_6

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/telephony/UiccSlotMapping;

    .line 69
    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    .line 72
    move-result v4

    .line 73
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 81
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 84
    move-result v5

    .line 85
    add-int/lit8 v5, v5, -0x1

    .line 87
    :goto_2
    if-ltz v5, :cond_3

    .line 89
    invoke-virtual {v3, v5}, Landroid/util/IntArray;->get(I)I

    .line 92
    move-result v6

    .line 93
    if-ne v6, v4, :cond_4

    .line 95
    invoke-virtual {v3, v5}, Landroid/util/IntArray;->remove(I)V

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    new-instance v5, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;

    .line 104
    invoke-direct {v5, p0, v4}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;I)V

    .line 107
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 109
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 114
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v6, v4, v7, v5}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 121
    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 125
    move-result v0

    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 128
    :goto_3
    if-ltz v0, :cond_7

    .line 130
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    .line 133
    move-result v4

    .line 134
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 136
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;

    .line 142
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 144
    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 147
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 149
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 152
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 154
    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 161
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 163
    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->remove(I)V

    .line 166
    add-int/lit8 v0, v0, -0x1

    .line 168
    goto :goto_3

    .line 169
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateSpecialAppSetUnlocked(Landroid/util/ArraySet;)V

    .line 173
    return-void

    .line 174
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    throw p0
.end method

.method public final updatePowerAllowlistCache()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/android/server/DeviceIdleInternal;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 23
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 25
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 28
    array-length v3, v0

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_2

    .line 32
    aget-object v5, v0, v4

    .line 34
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 36
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_1

    .line 45
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateSpecialAppSetUnlocked(Landroid/util/ArraySet;)V

    .line 58
    return-void

    .line 59
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public final updateSpecialAppSetUnlocked(Landroid/util/ArraySet;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 9
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 18
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 27
    move-result v2

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 30
    :goto_0
    if-ltz v2, :cond_5

    .line 32
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 38
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 40
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 43
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 47
    const/4 v6, -0x1

    .line 48
    if-eqz v5, :cond_1

    .line 50
    monitor-exit v4

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 56
    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    .line 59
    move-result v5

    .line 60
    add-int/lit8 v5, v5, -0x1

    .line 62
    :goto_1
    if-ltz v5, :cond_3

    .line 64
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 66
    invoke-virtual {v7, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 69
    move-result v8

    .line 70
    invoke-virtual {v7, v8, v3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 76
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 79
    invoke-virtual {v4, v6, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 85
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_6

    .line 91
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :try_start_4
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 97
    invoke-virtual {v4, v6, v3}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 103
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 108
    goto :goto_0

    .line 109
    :goto_4
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    :try_start_6
    throw p0

    .line 111
    :cond_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 112
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 115
    move-result p1

    .line 116
    if-lez p1, :cond_6

    .line 118
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 120
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 122
    monitor-enter p1

    .line 123
    :try_start_7
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 125
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 127
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 130
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 132
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 134
    const/4 v0, 0x2

    .line 135
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    monitor-exit p1

    .line 139
    goto :goto_5

    .line 140
    :catchall_2
    move-exception p0

    .line 141
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 142
    throw p0

    .line 143
    :cond_6
    :goto_5
    return-void

    .line 144
    :goto_6
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 145
    throw p0

    .line 146
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 148
    const-string p1, "Must never hold local mSatLock"

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0
.end method
