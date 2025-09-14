.class public final synthetic Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCarrierConfigChanged(IIII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p3, -0x1

    .line 7
    if-ne p1, p3, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_3

    .line 15
    .line 16
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->fixCrashOnGettingConfigWhenPhoneIsGone()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    sget-object p4, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p3, p2, p4}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 32
    .line 33
    sget-object p4, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3, p2, p4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :goto_0
    iget-object p4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p4, :cond_5

    .line 49
    .line 50
    iget-object p4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast p4, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-instance p4, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 78
    .line 79
    invoke-direct {p4, p3}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;-><init>(Landroid/os/PersistableBundle;)V

    .line 80
    .line 81
    .line 82
    check-cast p1, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p2, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 108
    .line 109
    check-cast p2, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_1
    return-void
.end method
