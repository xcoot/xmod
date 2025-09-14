.class public final Lcom/android/server/BatteryService$BattCallbackImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/BatteryService$BattCallbackImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$BattCallbackImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 17
    .line 18
    const-string v2, "[reset]reset"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;

    .line 28
    .line 29
    invoke-direct {v2, p0, v0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    const-string v0, "/efs/FactoryApp/longest_power_off_duration"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    sget-object v2, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string/jumbo v1, "longest_power_off_duration"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "/efs/FactoryApp/batt_beginning_date"

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v2, "batt_first_use_date"

    .line 62
    .line 63
    invoke-static {v2, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    const-string v0, "/efs/FactoryApp/batt_full_status_usage"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "batt_full_status_usage"

    .line 83
    .line 84
    invoke-static {v2, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 92
    .line 93
    iget v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    if-ne v0, v2, :cond_0

    .line 97
    .line 98
    const-string v0, "/efs/FactoryApp/batt_full_status_usage_2nd"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "batt_full_status_usage_2nd"

    .line 105
    .line 106
    invoke-static {v1, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 110
    .line 111
    const-string v0, "BatteryService"

    .line 112
    .line 113
    const-string v1, "[onHqmEventOccured]IS_SHIP_BUILD:true"

    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    const-string v0, ""

    .line 125
    .line 126
    const-string v1, "[SS]BattHqmManager"

    .line 127
    .line 128
    const-string v2, "[uploadToHqm]customDataset:"

    .line 129
    .line 130
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 131
    .line 132
    sget-object v4, Lcom/android/server/battery/BattHqmManager;->mMapForBSHL:Ljava/util/Map;

    .line 133
    .line 134
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string/jumbo v4, "{"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string/jumbo v4, "}"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    const-string v0, "HqmManagerService"

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    move-object v5, p0

    .line 177
    check-cast v5, Landroid/os/SemHqmManager;

    .line 178
    .line 179
    if-nez v5, :cond_1

    .line 180
    .line 181
    const-string p0, "[uploadToHqm]fail - semHqmManager null"

    .line 182
    .line 183
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catch_0
    move-exception p0

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    const-string v7, "Battery"

    .line 190
    .line 191
    const-string v8, "BSHL"

    .line 192
    .line 193
    const-string/jumbo v9, "ph"

    .line 194
    .line 195
    .line 196
    const-string v10, "0.0"

    .line 197
    .line 198
    const-string/jumbo v11, "sec"

    .line 199
    .line 200
    .line 201
    const-string v12, ""

    .line 202
    .line 203
    const-string v14, ""

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :goto_0
    const-string v0, "[uploadToHqm]Exception"

    .line 211
    .line 212
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    :goto_1
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
