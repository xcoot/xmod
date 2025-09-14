.class public final synthetic Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v2, "DeviceBatteryInfoService"

    .line 18
    .line 19
    const-string v3, "address : "

    .line 20
    .line 21
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " packageName : "

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x4

    .line 57
    if-eq v4, v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x6

    .line 64
    if-ne v4, v5, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x7

    .line 72
    if-ne v3, v4, :cond_2

    .line 73
    .line 74
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 83
    .line 84
    invoke-virtual {v3, p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->removeWatchPackageInfo(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 110
    .line 111
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    const-string v0, "Exception occurred : "

    .line 123
    .line 124
    invoke-static {p0, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_3
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v3, "address : "

    .line 142
    .line 143
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "DeviceBatteryInfoService"

    .line 158
    .line 159
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelLeft()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelLeft(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelRight()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelRight(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelCradle()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelCradle(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusLeft()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusLeft(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusRight()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusRight(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusCradle()I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    invoke-virtual {v1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusCradle(I)V

    .line 229
    .line 230
    .line 231
    const-string p0, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    .line 232
    .line 233
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_4
    const-string p0, "batteryInfo is null"

    .line 238
    .line 239
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :goto_4
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
