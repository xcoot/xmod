.class public final Lcom/android/server/BatteryService$4$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/BatteryService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/BatteryService$4$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

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
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/BatteryService$4$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v2, "ACTION_USER_SWITCHED: Led Charging: "

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4

    .line 27
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 28
    .line 29
    iget-object v5, v5, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 30
    .line 31
    const-string/jumbo v6, "led_indicator_charing"

    .line 32
    .line 33
    .line 34
    const/4 v7, -0x2

    .line 35
    invoke-static {v3, v6, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ne v6, v1, :cond_0

    .line 40
    .line 41
    move v6, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v6, v0

    .line 44
    :goto_0
    iput-boolean v6, v5, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 47
    .line 48
    iget-object v5, v5, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 49
    .line 50
    const-string/jumbo v6, "led_indicator_low_battery"

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v6, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v6, v1, :cond_1

    .line 58
    .line 59
    move v6, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v6, v0

    .line 62
    :goto_1
    iput-boolean v6, v5, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 65
    .line 66
    iget-object v5, v5, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 67
    .line 68
    const-string/jumbo v6, "show_wireless_charger_menu"

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v6, v0, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-ne v6, v1, :cond_2

    .line 76
    .line 77
    move v0, v1

    .line 78
    :cond_2
    iput-boolean v0, v5, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 79
    .line 80
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 81
    .line 82
    const-string v0, "BatteryService"

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 92
    .line 93
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " Led Low Battery:"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 106
    .line 107
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, " wfc: "

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 118
    .line 119
    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 120
    .line 121
    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    iget-object v0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v0

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 148
    .line 149
    .line 150
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 151
    .line 152
    if-eqz v1, :cond_3

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 157
    .line 158
    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    :goto_2
    monitor-exit v0

    .line 165
    return-void

    .line 166
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    throw p0

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    throw p0

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 174
    .line 175
    iget-object v2, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 176
    .line 177
    monitor-enter v2

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 181
    .line 182
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 183
    .line 184
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    .line 185
    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    const-string v0, "/sys/class/power_supply/battery/lcd"

    .line 189
    .line 190
    const-wide/16 v3, 0x0

    .line 191
    .line 192
    invoke-static {v3, v4, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 202
    .line 203
    .line 204
    monitor-exit v2

    .line 205
    return-void

    .line 206
    :catchall_2
    move-exception p0

    .line 207
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 208
    throw p0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v0

    .line 216
    :try_start_4
    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 217
    .line 218
    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 219
    .line 220
    iput-boolean v1, v2, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 221
    .line 222
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    .line 223
    .line 224
    if-eqz v1, :cond_5

    .line 225
    .line 226
    const-string v1, "/sys/class/power_supply/battery/lcd"

    .line 227
    .line 228
    const-wide/16 v2, 0x1

    .line 229
    .line 230
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_5
    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 234
    .line 235
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 240
    .line 241
    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 244
    :catchall_3
    move-exception p0

    .line 245
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 246
    throw p0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
