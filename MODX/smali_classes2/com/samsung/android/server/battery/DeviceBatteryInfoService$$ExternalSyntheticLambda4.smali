.class public final synthetic Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v3, "DeviceBatteryInfoService"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "address : "

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 43
    .line 44
    invoke-virtual {v3, p0}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v3, "DeviceBatteryInfoService"

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v5, "packageName : "

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x4

    .line 73
    if-eq v3, v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x6

    .line 80
    if-ne v3, v4, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x7

    .line 88
    if-ne v2, v3, :cond_6

    .line 89
    .line 90
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 97
    .line 98
    const-string v3, "content://"

    .line 99
    .line 100
    iget-object v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 101
    .line 102
    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_2

    .line 110
    .line 111
    iget-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v5, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 122
    .line 123
    monitor-enter v5

    .line 124
    :try_start_1
    iget-object v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_3

    .line 131
    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, ".BatteryInfoProvider"

    .line 141
    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v4, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    goto :goto_5

    .line 161
    :cond_3
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    const/4 v3, 0x1

    .line 163
    iput-boolean v3, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 164
    .line 165
    iget-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 166
    .line 167
    if-eqz v4, :cond_5

    .line 168
    .line 169
    iget-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 170
    .line 171
    if-nez v4, :cond_4

    .line 172
    .line 173
    iget v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 174
    .line 175
    if-ne v4, v3, :cond_5

    .line 176
    .line 177
    :cond_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 178
    .line 179
    .line 180
    iput v3, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 181
    .line 182
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_7
    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;I)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Landroid/content/IntentFilter;

    .line 203
    .line 204
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string/jumbo v3, "package"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v3, 0x0

    .line 224
    invoke-virtual {v2, p0, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    iget-object v4, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    invoke-virtual {v3, v1, v2, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    iget-object v0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    :goto_4
    return-void

    .line 241
    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    throw p0

    .line 243
    :goto_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    throw p0
.end method
