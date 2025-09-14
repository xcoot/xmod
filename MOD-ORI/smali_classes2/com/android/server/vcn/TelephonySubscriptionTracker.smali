.class public final Lcom/android/server/vcn/TelephonySubscriptionTracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

.field public final mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field public final mCarrierConfigChangeListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final mCarrierPrivilegesCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public final mReadySubIdsBySlotId:Ljava/util/Map;

.field public final mSubIdToCarrierConfigMap:Ljava/util/Map;

.field public final mSubscriptionChangedListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigChangeListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const-string v0, "Missing context"

    .line 33
    .line 34
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string v0, "Missing handler"

    .line 40
    .line 41
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    const-string p2, "Missing callback"

    .line 47
    .line 48
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 52
    .line 53
    const-string p2, "Missing deps"

    .line 54
    .line 55
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iput-object p4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 59
    .line 60
    const-class p2, Landroid/telephony/TelephonyManager;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    .line 70
    const-class p2, Landroid/telephony/SubscriptionManager;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/telephony/SubscriptionManager;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 79
    .line 80
    const-class p2, Landroid/telephony/CarrierConfigManager;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 89
    .line 90
    new-instance p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    .line 96
    .line 97
    new-instance p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public getReadySubIdsBySlotId()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSubIdToCarrierConfigMap()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final handleSubscriptionsChanged()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, -0x1

    .line 59
    if-eq v4, v5, :cond_1

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 62
    .line 63
    check-cast v4, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v5, Landroid/util/ArraySet;

    .line 98
    .line 99
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/util/Set;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance v2, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 120
    .line 121
    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 131
    .line 132
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;-><init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    iput-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    .line 146
    .line 147
    new-instance v1, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    invoke-direct {v1, p0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p1, "Unknown intent received with action: "

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "TelephonySubscriptionTracker"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    .line 41
    .line 42
    check-cast p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    .line 67
    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 80
    .line 81
    check-cast p2, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-lt v0, p1, :cond_2

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-void
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    new-instance v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    invoke-virtual {v4, v2, v0, v3}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    .line 28
    .line 29
    check-cast v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string v0, "TelephonySubscriptionTracker"

    .line 39
    .line 40
    const-string v1, "Encounted exception registering carrier privileges listeners"

    .line 41
    .line 42
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public setReadySubIdsBySlotId(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 9
    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setSubIdToCarrierConfigMap(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
