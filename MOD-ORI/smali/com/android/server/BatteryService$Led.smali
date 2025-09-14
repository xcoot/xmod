.class public final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

.field public mLedStatus:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const p3, 0x10e0103

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const p3, 0x10e0105

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const p3, 0x10e0100

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const p3, 0x10e0102

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const p3, 0x10e0101

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const p3, 0x10e0106

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const p1, 0x10e0104

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final updateLightsLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v2, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 14
    .line 15
    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 16
    .line 17
    iget v4, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 18
    .line 19
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    const-string v6, "BatteryService"

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-ne v5, v4, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-eq v5, v2, :cond_1

    .line 29
    .line 30
    const/4 v5, 0x6

    .line 31
    if-eq v5, v2, :cond_1

    .line 32
    .line 33
    const/4 v5, 0x7

    .line 34
    if-eq v5, v2, :cond_1

    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    if-ne v5, v2, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 45
    .line 46
    const/16 v2, 0xb

    .line 47
    .line 48
    if-eq v2, v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    .line 51
    .line 52
    .line 53
    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 54
    .line 55
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo p0, "turn on LED for not charging"

    .line 58
    .line 59
    .line 60
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_2
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 66
    .line 67
    const-string/jumbo p0, "stay LED for not charging"

    .line 68
    .line 69
    .line 70
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_3
    const/4 v2, 0x2

    .line 76
    if-ne v2, v4, :cond_5

    .line 77
    .line 78
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 79
    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 87
    .line 88
    const/16 v2, 0xa

    .line 89
    .line 90
    if-eq v2, v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    .line 93
    .line 94
    .line 95
    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 96
    .line 97
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 98
    .line 99
    const-string/jumbo p0, "turn on LED for charging"

    .line 100
    .line 101
    .line 102
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 107
    .line 108
    const-string/jumbo p0, "stay LED for charging"

    .line 109
    .line 110
    .line 111
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    const/4 v2, 0x5

    .line 116
    if-ne v2, v4, :cond_7

    .line 117
    .line 118
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 119
    .line 120
    if-nez v2, :cond_7

    .line 121
    .line 122
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 123
    .line 124
    if-eqz v2, :cond_7

    .line 125
    .line 126
    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 127
    .line 128
    const/16 v2, 0xe

    .line 129
    .line 130
    if-eq v2, v1, :cond_6

    .line 131
    .line 132
    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    .line 133
    .line 134
    .line 135
    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 136
    .line 137
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 138
    .line 139
    const-string/jumbo p0, "turn on LED for fully charged"

    .line 140
    .line 141
    .line 142
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 147
    .line 148
    const-string/jumbo p0, "stay LED for fully charged"

    .line 149
    .line 150
    .line 151
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    iget v2, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 156
    .line 157
    if-gt v3, v2, :cond_9

    .line 158
    .line 159
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 160
    .line 161
    if-nez v2, :cond_9

    .line 162
    .line 163
    iget-boolean v1, v1, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 164
    .line 165
    if-eqz v1, :cond_9

    .line 166
    .line 167
    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 168
    .line 169
    const/16 v2, 0xd

    .line 170
    .line 171
    if-eq v2, v1, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    .line 174
    .line 175
    .line 176
    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 177
    .line 178
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 179
    .line 180
    const-string/jumbo p0, "turn on LED for low battery"

    .line 181
    .line 182
    .line 183
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_8
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 188
    .line 189
    const-string/jumbo p0, "stay LED for low battery"

    .line 190
    .line 191
    .line 192
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_9
    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 197
    .line 198
    if-eqz v1, :cond_a

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    .line 201
    .line 202
    .line 203
    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 204
    .line 205
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 206
    .line 207
    const-string/jumbo p0, "turn off LED"

    .line 208
    .line 209
    .line 210
    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_a
    :goto_0
    return-void
.end method
