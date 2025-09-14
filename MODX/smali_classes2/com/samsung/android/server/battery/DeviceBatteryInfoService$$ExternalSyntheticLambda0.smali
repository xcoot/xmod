.class public final synthetic Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "DeviceBatteryInfoService"

    .line 11
    .line 12
    const-string v3, "address : "

    .line 13
    .line 14
    :try_start_0
    iget-object v4, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " packageName : "

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, 0x4

    .line 56
    if-eq v4, v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x6

    .line 63
    if-ne v4, v5, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/4 v4, 0x7

    .line 71
    if-ne v3, v4, :cond_2

    .line 72
    .line 73
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->removeWatchPackageInfo(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    iget-object p0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Landroid/content/BroadcastReceiver;

    .line 109
    .line 110
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    .line 114
    .line 115
    iget-object p0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :goto_2
    const-string v0, "Exception occurred : "

    .line 122
    .line 123
    invoke-static {p0, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_3
    return-void
.end method
