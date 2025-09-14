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

    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 7
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 9
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 11
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 18
    const-string v2, "[reset]reset"

    .line 20
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 25
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;

    .line 29
    invoke-direct {v2, p0, v0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 35
    return-void

    .line 36
    :pswitch_0
    const-string v0, "/efs/FactoryApp/longest_power_off_duration"

    .line 38
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 41
    move-result-wide v0

    .line 42
    sget-object v2, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 44
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    const-string/jumbo v1, "longest_power_off_duration"

    .line 51
    invoke-static {v1, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "/efs/FactoryApp/batt_beginning_date"

    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string v2, "batt_first_use_date"

    .line 63
    invoke-static {v2, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 68
    iget-object v0, v0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 70
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 72
    iget-boolean v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 74
    if-eqz v0, :cond_0

    .line 76
    const-string v0, "/efs/FactoryApp/batt_full_status_usage"

    .line 78
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    const-string v2, "batt_full_status_usage"

    .line 84
    invoke-static {v2, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 89
    iget-object v0, v0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 91
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 93
    iget v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 95
    const/4 v2, 0x2

    .line 96
    if-ne v0, v2, :cond_0

    .line 98
    const-string v0, "/efs/FactoryApp/batt_full_status_usage_2nd"

    .line 100
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    const-string v1, "batt_full_status_usage_2nd"

    .line 106
    invoke-static {v1, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 111
    const-string v0, "BatteryService"

    .line 113
    const-string v1, "[onHqmEventOccured]IS_SHIP_BUILD:true"

    .line 115
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 120
    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 122
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 124
    const-string v0, ""

    .line 126
    const-string v1, "[SS]BattHqmManager"

    .line 128
    const-string v2, "[uploadToHqm]customDataset:"

    .line 130
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 132
    sget-object v4, Lcom/android/server/battery/BattHqmManager;->mMapForBSHL:Ljava/util/Map;

    .line 134
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 137
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    const-string/jumbo v4, "{"

    .line 144
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    const-string/jumbo v4, "}"

    .line 151
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 154
    move-result-object v13

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "HqmManagerService"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    move-result-object p0

    .line 176
    move-object v5, p0

    .line 177
    check-cast v5, Landroid/os/SemHqmManager;

    .line 179
    if-nez v5, :cond_1

    .line 181
    const-string p0, "[uploadToHqm]fail - semHqmManager null"

    .line 183
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 191
    const-string v8, "BSHL"

    .line 193
    const-string/jumbo v9, "ph"

    .line 196
    const-string v10, "0.0"

    .line 198
    const-string/jumbo v11, "sec"

    .line 201
    const-string v12, ""

    .line 203
    const-string v14, ""

    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_1

    .line 210
    :goto_0
    const-string v0, "[uploadToHqm]Exception"

    .line 212
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    :goto_1
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
