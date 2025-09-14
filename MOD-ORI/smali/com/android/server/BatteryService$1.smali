.class public final Lcom/android/server/BatteryService$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/BatteryService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lcom/android/server/BatteryService$1;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-object p1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "BatteryService"

    .line 17
    .line 18
    const-string v0, "SkipActionBatteryChangedHandler : MSG_RECOVER_SEND_ACTION_BATTERY_CHANGED"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 37
    .line 38
    iget-boolean v0, p1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :goto_0
    monitor-exit v3

    .line 53
    :goto_1
    return-void

    .line 54
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    if-eq p1, v2, :cond_2

    .line 63
    .line 64
    if-eq p1, v0, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    .line 72
    .line 73
    .line 74
    :goto_3
    return-void

    .line 75
    :pswitch_1
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "[bs_handleMessage]msg:"

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v5, p1, Landroid/os/Message;->what:I

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 97
    .line 98
    iget v4, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 99
    .line 100
    const/4 v5, 0x4

    .line 101
    if-eq v4, v5, :cond_4

    .line 102
    .line 103
    const-string p0, "[bs_handleMessage]Currently, Not Battery Adaptive Protect Mode"

    .line 104
    .line 105
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    .line 111
    .line 112
    if-eq v4, v2, :cond_8

    .line 113
    .line 114
    const-string v5, ""

    .line 115
    .line 116
    if-eq v4, v0, :cond_6

    .line 117
    .line 118
    const/4 v0, 0x3

    .line 119
    if-eq v4, v0, :cond_5

    .line 120
    .line 121
    move-object p1, v5

    .line 122
    goto :goto_5

    .line 123
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    move-object v5, p1

    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    const-string/jumbo p1, "update"

    .line 129
    .line 130
    .line 131
    :goto_4
    move-object v7, v5

    .line 132
    move-object v5, p1

    .line 133
    move-object p1, v7

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V

    .line 136
    .line 137
    .line 138
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 139
    .line 140
    if-ne p1, v2, :cond_7

    .line 141
    .line 142
    move v1, v2

    .line 143
    :cond_7
    const-string/jumbo p1, "off"

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    .line 152
    move-object v5, p1

    .line 153
    check-cast v5, Ljava/lang/String;

    .line 154
    .line 155
    const-string/jumbo p1, "on"

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :goto_5
    new-instance v0, Landroid/content/Intent;

    .line 160
    .line 161
    const-string/jumbo v2, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/high16 v2, 0x1000000

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string/jumbo v2, "sleep_charging_event"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    const-string/jumbo v2, "sleep_charging_finish_time"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    const-string/jumbo v2, "is_sleep_charging_complete_success"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    const-string v2, "[bs_handleMessage]extraEvent:"

    .line 191
    .line 192
    const-string v4, " ,extraSleepChargingFinishTime:"

    .line 193
    .line 194
    const-string v6, " ,isSleepChargingCompleteSuccess:"

    .line 195
    .line 196
    invoke-static {v2, v5, v4, p1, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    const-string/jumbo v1, "com.android.systemui"

    .line 213
    .line 214
    .line 215
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    sget-object p1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {p0, v0, p1}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :goto_6
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
