.class public final Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
.super Landroid/os/IBatteryPropertiesRegistrar$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getProperty(ILandroid/os/BatteryProperty;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "[getProperty]id:"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "BatteryService_BatteryPropertiesRegistrar"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->stateOfHealthPublic()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string v2, "android.permission.BATTERY_STATS"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "[getProperty]prop.long:"

    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/os/BatteryProperty;->getLong()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " ,prop.string:"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/os/BatteryProperty;->getString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapper;->getProperty(ILandroid/os/BatteryProperty;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final scheduleUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final semGetValueAsBoolean(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x6a

    .line 2
    .line 3
    const-string v1, "BatteryService"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 9
    .line 10
    const-string p0, "[semGetValueAsBoolean]Not Matched id"

    .line 11
    .line 12
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getIcAuthenticationResults()[Z

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    array-length v0, p0

    .line 27
    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda1;-><init>([Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 41
    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "[semGetValueAsBoolean]id:"

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " ,result:"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return v2
.end method

.method public final semGetValuesAsLong(I)[J
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const-wide/16 v1, -0x1

    .line 3
    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x4

    .line 6
    const-string v5, "[SS][BattInfo]BattInfoManager"

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto/16 :goto_3

    .line 14
    .line 15
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 16
    .line 17
    iget-object v8, v8, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 18
    .line 19
    iget-boolean v9, v8, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 20
    .line 21
    if-nez v9, :cond_0

    .line 22
    .line 23
    const-string v0, "[getBatteryCapacities]InitFinished False"

    .line 24
    .line 25
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v5, v8, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 30
    .line 31
    if-ne v5, v4, :cond_1

    .line 32
    .line 33
    const-string v4, "/sys/class/power_supply/sbp-fg/soc"

    .line 34
    .line 35
    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    const-string v7, "/sys/class/power_supply/sbp-fg-2/soc"

    .line 40
    .line 41
    invoke-static {v7}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    const/4 v9, 0x3

    .line 46
    new-array v9, v9, [J

    .line 47
    .line 48
    aput-wide v1, v9, v6

    .line 49
    .line 50
    aput-wide v4, v9, v3

    .line 51
    .line 52
    aput-wide v7, v9, v0

    .line 53
    .line 54
    move-object v7, v9

    .line 55
    :cond_1
    :goto_0
    if-nez v7, :cond_2

    .line 56
    .line 57
    new-array v0, v3, [J

    .line 58
    .line 59
    move-object v7, v0

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 63
    .line 64
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 65
    .line 66
    int-to-long v0, p0

    .line 67
    aput-wide v0, v7, v6

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :pswitch_2
    const-string p0, "/sys/class/power_supply/battery/cisd_data_json"

    .line 72
    .line 73
    invoke-static {p0, v6}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string/jumbo v0, "{"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v4, "}"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p0, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->getValueFromJson(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    const-string p0, "[SS]BattUtils"

    .line 97
    .line 98
    const-string v0, "[getValueFromJsonAsLong]NumberFormatException"

    .line 99
    .line 100
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_1
    new-array v7, v3, [J

    .line 104
    .line 105
    aput-wide v1, v7, v6

    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 112
    .line 113
    iget-boolean v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 114
    .line 115
    if-nez v3, :cond_3

    .line 116
    .line 117
    const-string p0, "[getBsohValues]InitFinished False"

    .line 118
    .line 119
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v5, "/sys/class/power_supply/sbp-fg/battery_state_of_health"

    .line 130
    .line 131
    iget p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 132
    .line 133
    if-eq p0, v0, :cond_5

    .line 134
    .line 135
    if-eq p0, v4, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lcom/android/server/battery/BattUtils;->readNodeAsDouble()D

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    double-to-long v0, v0

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    invoke-static {v5}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v0

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    const-string p0, "/sys/class/power_supply/sbp-fg-2/battery_state_of_health"

    .line 169
    .line 170
    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    invoke-static {v5}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    goto :goto_3

    .line 211
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getAsocValue()[J

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    goto :goto_3

    .line 220
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getFullStatusUsage()[J

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    goto :goto_3

    .line 229
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getDischargeLevel()[J

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    :goto_3
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 238
    .line 239
    const-string p0, "[semGetValuesAsLong]id:"

    .line 240
    .line 241
    const-string v0, " ,result:"

    .line 242
    .line 243
    invoke-static {p1, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    const-string p1, "BatteryService"

    .line 259
    .line 260
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    return-object v7

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final semGetValuesAsString(I)[Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x66

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    :goto_0
    move-object p0, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string p0, "[getFirstUseDate]InitFinished False"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, [Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    const-string p0, "[getQr]InitFinished False"

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, [Ljava/lang/String;

    .line 58
    .line 59
    :goto_1
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "[semGetValuesAsString]id:"

    .line 62
    .line 63
    const-string v1, " ,result:"

    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "BatteryService"

    .line 81
    .line 82
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-object v2
.end method
