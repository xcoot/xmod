.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDevicePolicyOverrideApns(Landroid/content/Context;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/lang/String;

    .line 45
    .line 46
    new-instance v2, Landroid/util/IntArray;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v3, v1

    .line 63
    :goto_0
    if-ge v1, v3, :cond_2

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupOwner()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v2, v4}, Landroid/util/IntArray;->add(I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return-object v2

    .line 92
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Ljava/lang/String;

    .line 99
    .line 100
    sget v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->$r8$clinit:I

    .line 101
    .line 102
    :try_start_0
    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception p0

    .line 108
    const-string v1, "DevicePolicyManager"

    .line 109
    .line 110
    const-string/jumbo v2, "getPackageInfo error"

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :goto_1
    return-object v0

    .line 117
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Landroid/content/ContentValues;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget-object v2, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    .line 132
    .line 133
    invoke-virtual {v1, v2, p0, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
