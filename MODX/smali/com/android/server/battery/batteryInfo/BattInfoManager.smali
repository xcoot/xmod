.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

.field public mAuthentificationResults:[Z

.field public final mBatteryCount:I

.field public final mBatteryType:I

.field public mBatteryUsageSinceLastAsocUpdate:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryUsage:J

.field public mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

.field public mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

.field public mFullBatteryStartTime:J

.field public mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

.field public final mHandler:Landroid/os/Handler;

.field public mInitCheckStatusCount:I

.field public mInitFinished:Z

.field public mQrData:Lcom/android/server/battery/batteryInfo/QrData;

.field public final mSupportsAsoc:Z

.field public final mSupportsFullStatusUsage:Z

.field public final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 11
    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 13
    const-wide/16 v1, -0x1

    .line 15
    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 17
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mContext:Landroid/content/Context;

    .line 19
    const-string p1, "/sys/class/power_supply/sec_auth_2nd/qr_code"

    .line 21
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x3

    .line 26
    const/4 v2, 0x4

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iput v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 33
    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "/sys/class/power_supply/sec_auth/qr_code"

    .line 38
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 44
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 46
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p1, "/sys/class/power_supply/sbp-fg-2/qr_code"

    .line 51
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 57
    iput v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 59
    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string p1, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 64
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 70
    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 72
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iput v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 77
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 79
    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 81
    new-array p1, p1, [Z

    .line 83
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    const-string v5, "[BattInfoManager]mBatteryType:"

    .line 89
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget v5, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 94
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v5, " ,mBatteryCount:"

    .line 99
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 104
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    const-string v6, "[SS][BattInfo]BattInfoManager"

    .line 113
    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    const-string v7, "[BattInfoManager]FEATURE_SAVE_BATTERY_CYCLE:"

    .line 120
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    sget-boolean v7, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 125
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    const-string v7, " ,FEATURE_FULL_BATTERY_CYCLE:"

    .line 130
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-boolean v7, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    .line 135
    invoke-static {v6, p1, v7}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 138
    sget-boolean p1, Lcom/android/server/battery/BattFeatures;->FEATURE_SUPPORT_ASOC:Z

    .line 140
    if-eqz p1, :cond_4

    .line 142
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 144
    if-eq p1, v3, :cond_4

    .line 146
    if-eq p1, v2, :cond_4

    .line 148
    move p1, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    move p1, v0

    .line 151
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 153
    if-eqz v7, :cond_5

    .line 155
    iget v7, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 157
    if-eq v7, v3, :cond_5

    .line 159
    if-eq v7, v2, :cond_5

    .line 161
    move v0, v4

    .line 162
    :cond_5
    iput-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "[BattInfoManager]supportsAsoc:"

    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    const-string v3, " ,supportsFullStatusUsage:"

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v4, "mBatteryType:"

    .line 194
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 199
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v6, " ,supportsAsoc:"

    .line 212
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    const-string v0, "/data/log/battery_service/battery_service_main_history"

    .line 230
    const-string v2, "BattInfoManager Created"

    .line 232
    invoke-static {v0, v2, p1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p1

    .line 257
    invoke-static {v1, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 260
    new-instance p1, Landroid/os/HandlerThread;

    .line 262
    const-string v0, "BattInfoManagerWorkerThread"

    .line 264
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 269
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 272
    new-instance p1, Landroid/os/Handler;

    .line 274
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 279
    move-result-object v0

    .line 280
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 283
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;

    .line 287
    invoke-direct {v0, p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 290
    const-wide/16 v1, 0xbb8

    .line 292
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void
.end method


# virtual methods
.method public final getAsocValue()[J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS][BattInfo]BattInfoManager"

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "[getAsocValue]InitFinished False"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 16
    if-nez v0, :cond_1

    .line 18
    const-string p0, "[getAsocValue]unsupported"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-object v1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/lang/Long;

    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final getDischargeLevel()[J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "[SS][BattInfo]BattInfoManager"

    .line 7
    const-string v0, "[getDischargeLevel]InitFinished False"

    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Ljava/lang/Long;

    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final getFullStatusUsage()[J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS][BattInfo]BattInfoManager"

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "[getFullStatusUsage]InitFinished False"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 16
    if-nez v0, :cond_1

    .line 18
    const-string p0, "[getFullStatusUsage]unsupported"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-object v1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/lang/Long;

    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final getIcAuthenticationResults()[Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "[getIcAuthenticationResults]InitFinished False"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "[getIcAuthenticationResults]IcAuthenticationResults:"

    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 39
    return-object p0
.end method

.method public final init()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "[SS][BattInfo]BattInfoManager"

    .line 5
    const-string v2, "[init]init"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 12
    new-array v3, v2, [Z

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x2

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x3

    .line 19
    iget v9, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 21
    if-nez v9, :cond_0

    .line 23
    aput-boolean v7, v3, v7

    .line 25
    goto/16 :goto_3

    .line 27
    :cond_0
    const-string v10, "/sys/class/power_supply/sec_auth/batt_auth"

    .line 29
    const-string v11, "/sys/class/power_supply/sec_auth/presence"

    .line 31
    const-wide/16 v12, 0x1

    .line 33
    if-ne v9, v8, :cond_3

    .line 35
    invoke-static {v11}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 38
    move-result-wide v14

    .line 39
    cmp-long v11, v14, v12

    .line 41
    if-nez v11, :cond_1

    .line 43
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 46
    move-result-wide v10

    .line 47
    cmp-long v10, v10, v12

    .line 49
    if-nez v10, :cond_1

    .line 51
    move v10, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v10, v7

    .line 54
    :goto_0
    aput-boolean v10, v3, v7

    .line 56
    const-string v10, "/sys/class/power_supply/sec_auth_2nd/presence"

    .line 58
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 61
    move-result-wide v10

    .line 62
    cmp-long v10, v10, v12

    .line 64
    if-nez v10, :cond_2

    .line 66
    const-string v10, "/sys/class/power_supply/sec_auth_2nd/batt_auth"

    .line 68
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 71
    move-result-wide v10

    .line 72
    cmp-long v10, v10, v12

    .line 74
    if-nez v10, :cond_2

    .line 76
    move v10, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v10, v7

    .line 79
    :goto_1
    aput-boolean v10, v3, v4

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    if-ne v9, v4, :cond_5

    .line 84
    invoke-static {v11}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 87
    move-result-wide v14

    .line 88
    cmp-long v11, v14, v12

    .line 90
    if-nez v11, :cond_4

    .line 92
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 95
    move-result-wide v10

    .line 96
    cmp-long v10, v10, v12

    .line 98
    if-nez v10, :cond_4

    .line 100
    move v10, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move v10, v7

    .line 103
    :goto_2
    aput-boolean v10, v3, v7

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const-string v10, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 108
    if-ne v9, v6, :cond_6

    .line 110
    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 117
    move-result v10

    .line 118
    xor-int/2addr v10, v4

    .line 119
    aput-boolean v10, v3, v7

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    if-ne v9, v5, :cond_7

    .line 124
    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 131
    move-result v10

    .line 132
    xor-int/2addr v10, v4

    .line 133
    aput-boolean v10, v3, v7

    .line 135
    const-string v10, "/sys/class/power_supply/sbp-fg-2/qr_code"

    .line 137
    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 144
    move-result v10

    .line 145
    xor-int/2addr v10, v4

    .line 146
    aput-boolean v10, v3, v4

    .line 148
    :cond_7
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 150
    const-string v11, "[checkIcAuthenticationResults]result:"

    .line 152
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 158
    move-result-object v11

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v10

    .line 166
    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 171
    if-eq v9, v8, :cond_8

    .line 173
    if-ne v9, v4, :cond_9

    .line 175
    :cond_8
    invoke-static {v7, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 178
    move-result-object v3

    .line 179
    new-instance v10, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;

    .line 181
    invoke-direct {v10, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 184
    invoke-interface {v3, v10}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_9

    .line 190
    iget v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 192
    const/16 v10, 0x3c

    .line 194
    if-ge v3, v10, :cond_9

    .line 196
    add-int/2addr v3, v4

    .line 197
    iput v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "[handleMessage]DualAuth IcAuthentication fails. retry count:"

    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    iget v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 208
    invoke-static {v2, v3, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 211
    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;

    .line 215
    invoke-direct {v2, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 218
    const-wide/16 v3, 0x3e8

    .line 220
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void

    .line 224
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    const-string v3, "Final IcAuthenticationResults:"

    .line 228
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 233
    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v10, " ,Retry Count:"

    .line 242
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 247
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    const-string v10, "/data/log/battery_service/battery_service_main_history"

    .line 256
    const-string v11, "Final IcAuthenticationResults"

    .line 258
    invoke-static {v10, v11, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 268
    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    invoke-static {v8, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 282
    new-instance v0, Lcom/android/server/battery/batteryInfo/QrData;

    .line 284
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 286
    invoke-direct {v0, v9, v2, v3}, Lcom/android/server/battery/batteryInfo/QrData;-><init>(II[Z)V

    .line 289
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 291
    new-instance v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 293
    iget-object v13, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 295
    iget-object v14, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mContext:Landroid/content/Context;

    .line 297
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 299
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 302
    move-result-object v15

    .line 303
    iget v11, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 305
    iget v12, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 307
    move-object v10, v0

    .line 308
    invoke-direct/range {v10 .. v15}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;-><init>(II[ZLandroid/content/Context;Landroid/os/Looper;)V

    .line 311
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 313
    iget-boolean v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 315
    const-wide/16 v10, 0x0

    .line 317
    if-eqz v0, :cond_16

    .line 319
    new-instance v12, Lcom/android/server/battery/batteryInfo/AsocData;

    .line 321
    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 323
    iget-object v13, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 325
    iget-object v13, v13, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 327
    invoke-direct {v12}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 330
    iput v9, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 332
    iput v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 334
    iput-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 336
    new-array v0, v2, [Ljava/lang/Long;

    .line 338
    iput-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 340
    const-string v0, "/efs/FactoryApp/asoc"

    .line 342
    if-nez v9, :cond_a

    .line 344
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    goto :goto_4

    .line 350
    :cond_a
    const-string v14, "/sys/class/power_supply/sec_auth/asoc"

    .line 352
    if-ne v9, v4, :cond_b

    .line 354
    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 356
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    goto :goto_4

    .line 365
    :cond_b
    if-ne v9, v8, :cond_c

    .line 367
    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 374
    const-string v15, "/efs/FactoryApp/asoc_2nd"

    .line 376
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 386
    const-string v14, "/sys/class/power_supply/sec_auth_2nd/asoc"

    .line 388
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_c
    :goto_4
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 394
    iget v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 396
    if-eq v0, v4, :cond_e

    .line 398
    if-ne v0, v8, :cond_d

    .line 400
    goto :goto_5

    .line 401
    :cond_d
    move/from16 v16, v9

    .line 403
    const/16 v3, 0x3ef

    .line 405
    goto/16 :goto_c

    .line 407
    :cond_e
    :goto_5
    move v0, v7

    .line 408
    :goto_6
    iget v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 410
    if-ge v0, v14, :cond_d

    .line 412
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 414
    aget-boolean v14, v14, v0

    .line 416
    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 418
    if-nez v14, :cond_f

    .line 420
    const-string v14, "[syncAuthAndEfsForAuth]Authentification false => skip_"

    .line 422
    invoke-static {v0, v14, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 425
    move/from16 v16, v9

    .line 427
    goto/16 :goto_b

    .line 429
    :cond_f
    aget-boolean v14, v13, v0

    .line 431
    const-wide/16 v5, 0x64

    .line 433
    if-eqz v14, :cond_12

    .line 435
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 437
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 440
    move-result-object v14

    .line 441
    check-cast v14, Ljava/lang/String;

    .line 443
    move/from16 v16, v9

    .line 445
    invoke-static {v14}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 448
    move-result-wide v8

    .line 449
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 451
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    move-result-object v14

    .line 455
    check-cast v14, Ljava/lang/String;

    .line 457
    invoke-static {v14}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 460
    move-result-wide v3

    .line 461
    cmp-long v14, v3, v10

    .line 463
    if-ltz v14, :cond_11

    .line 465
    cmp-long v5, v3, v5

    .line 467
    if-gtz v5, :cond_11

    .line 469
    cmp-long v5, v3, v8

    .line 471
    if-ltz v5, :cond_10

    .line 473
    goto :goto_7

    .line 474
    :cond_10
    move-wide v5, v3

    .line 475
    goto :goto_8

    .line 476
    :cond_11
    :goto_7
    move-wide v5, v8

    .line 477
    :goto_8
    const-string v14, "[syncAuthAndEfsForAuth]efsAsoc:"

    .line 479
    const-string v7, " ,authAsoc:"

    .line 481
    invoke-static {v14, v8, v9, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    move-result-object v7

    .line 485
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 488
    const-string v3, " =>worseAsoc:"

    .line 490
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    move-result-object v3

    .line 500
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v3, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    move-result-object v3

    .line 509
    check-cast v3, Ljava/lang/String;

    .line 511
    invoke-static {v5, v6, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 514
    iget-object v3, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 516
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    move-result-object v3

    .line 520
    check-cast v3, Ljava/lang/String;

    .line 522
    invoke-static {v5, v6, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 525
    goto :goto_b

    .line 526
    :cond_12
    move/from16 v16, v9

    .line 528
    iget-object v3, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    move-result-object v3

    .line 534
    check-cast v3, Ljava/lang/String;

    .line 536
    invoke-static {v3}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 539
    move-result-wide v3

    .line 540
    const-wide/32 v7, 0xffff

    .line 543
    cmp-long v7, v3, v7

    .line 545
    if-eqz v7, :cond_14

    .line 547
    cmp-long v7, v3, v10

    .line 549
    if-gez v7, :cond_13

    .line 551
    goto :goto_9

    .line 552
    :cond_13
    move-wide v5, v3

    .line 553
    goto :goto_a

    .line 554
    :cond_14
    :goto_9
    const-string v3, "[syncAuthAndEfsForAuth]init authAsoc:100"

    .line 556
    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v3, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 561
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Ljava/lang/String;

    .line 567
    invoke-static {v5, v6, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 570
    :goto_a
    const-string v3, "[syncAuthAndEfsForAuth]sync efs asoc with auth"

    .line 572
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 577
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 580
    move-result-object v3

    .line 581
    check-cast v3, Ljava/lang/String;

    .line 583
    invoke-static {v5, v6, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 586
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 588
    move/from16 v9, v16

    .line 590
    const/4 v4, 0x1

    .line 591
    const/4 v5, 0x4

    .line 592
    const/4 v6, 0x2

    .line 593
    const/4 v7, 0x0

    .line 594
    const/4 v8, 0x3

    .line 595
    goto/16 :goto_6

    .line 597
    :goto_c
    invoke-virtual {v12, v3}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 600
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/AsocData;->updateAndSet()V

    .line 603
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 606
    const-string v0, "/efs/FactoryApp/batt_hist"

    .line 608
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 611
    move-result v3

    .line 612
    if-eqz v3, :cond_15

    .line 614
    const-string v3, "[SS]BattUtils"

    .line 616
    const/4 v4, 0x0

    .line 617
    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    .line 619
    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 622
    move-result-object v0

    .line 623
    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    const/4 v7, 0x1

    .line 627
    goto :goto_d

    .line 628
    :catch_0
    move-exception v0

    .line 629
    const-string v5, "[deleteNode]Exception"

    .line 631
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    move v7, v4

    .line 635
    :goto_d
    const-string v0, "[deleteNode]path:/efs/FactoryApp/batt_hist ,result:"

    .line 637
    invoke-static {v0, v3, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 640
    :cond_15
    iput-object v12, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 642
    goto :goto_e

    .line 643
    :cond_16
    move/from16 v16, v9

    .line 645
    :goto_e
    new-instance v0, Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 647
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 649
    iget-object v4, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 651
    iget-object v4, v4, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 653
    invoke-direct {v0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 656
    move/from16 v5, v16

    .line 658
    iput v5, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 660
    iput v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 662
    iput-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 664
    new-array v3, v2, [Ljava/lang/Long;

    .line 666
    iput-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 668
    const-string v3, "/efs/FactoryApp/batt_discharge_level"

    .line 670
    if-nez v5, :cond_17

    .line 672
    iget-object v6, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 674
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    goto :goto_f

    .line 678
    :cond_17
    const-string v6, "/sys/class/power_supply/sec_auth/batt_discharge_level"

    .line 680
    const/4 v7, 0x1

    .line 681
    if-ne v5, v7, :cond_18

    .line 683
    iget-object v7, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 685
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 690
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    goto :goto_f

    .line 694
    :cond_18
    const-string v7, "/efs/FactoryApp/batt_discharge_level_2nd"

    .line 696
    const/4 v8, 0x3

    .line 697
    if-ne v5, v8, :cond_19

    .line 699
    iget-object v8, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 701
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 711
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 716
    const-string v6, "/sys/class/power_supply/sec_auth_2nd/batt_discharge_level"

    .line 718
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    goto :goto_f

    .line 722
    :cond_19
    const-string v6, "/sys/class/power_supply/sbp-fg/cycle"

    .line 724
    const/4 v8, 0x2

    .line 725
    if-ne v5, v8, :cond_1a

    .line 727
    iget-object v7, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 734
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    goto :goto_f

    .line 738
    :cond_1a
    const/4 v8, 0x4

    .line 739
    if-ne v5, v8, :cond_1b

    .line 741
    iget-object v8, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 743
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 748
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 753
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 758
    const-string v6, "/sys/class/power_supply/sbp-fg-2/cycle"

    .line 760
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_1b
    :goto_f
    iget v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 765
    const/4 v6, 0x1

    .line 766
    if-eq v3, v6, :cond_20

    .line 768
    const/4 v6, 0x3

    .line 769
    if-ne v3, v6, :cond_1c

    .line 771
    goto :goto_12

    .line 772
    :cond_1c
    const/4 v6, 0x2

    .line 773
    if-eq v3, v6, :cond_1f

    .line 775
    const/4 v4, 0x4

    .line 776
    if-ne v3, v4, :cond_1d

    .line 778
    goto :goto_11

    .line 779
    :cond_1d
    if-nez v3, :cond_1e

    .line 781
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->initializeIfNotExist()V

    .line 784
    :cond_1e
    :goto_10
    const/16 v3, 0x3ef

    .line 786
    goto :goto_13

    .line 787
    :cond_1f
    :goto_11
    invoke-virtual {v0, v10, v11}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->updateEfsFromSBP(J)V

    .line 790
    goto :goto_10

    .line 791
    :cond_20
    :goto_12
    invoke-virtual {v0, v4}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->syncAuthAndEfsForAuth$1([Z)V

    .line 794
    goto :goto_10

    .line 795
    :goto_13
    invoke-virtual {v0, v3}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 798
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 801
    move-result-object v3

    .line 802
    iput-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 804
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 807
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 809
    iget-boolean v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 811
    if-eqz v0, :cond_27

    .line 813
    new-instance v0, Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 815
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 817
    iget-object v4, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 819
    iget-object v4, v4, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 821
    invoke-direct {v0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 824
    iput v5, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 826
    iput v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 828
    iput-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 830
    new-array v2, v2, [Ljava/lang/Long;

    .line 832
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 834
    const-string v2, "/efs/FactoryApp/batt_full_status_usage"

    .line 836
    if-nez v5, :cond_21

    .line 838
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 840
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    goto :goto_14

    .line 844
    :cond_21
    const-string v3, "/sys/class/power_supply/sec_auth/batt_full_status_usage"

    .line 846
    const/4 v6, 0x1

    .line 847
    if-ne v5, v6, :cond_22

    .line 849
    iget-object v5, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 851
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 856
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    goto :goto_14

    .line 860
    :cond_22
    const/4 v6, 0x3

    .line 861
    if-ne v5, v6, :cond_23

    .line 863
    iget-object v5, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 865
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 870
    const-string v5, "/efs/FactoryApp/batt_full_status_usage_2nd"

    .line 872
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 877
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 882
    const-string v3, "/sys/class/power_supply/sec_auth_2nd/batt_full_status_usage"

    .line 884
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_23
    :goto_14
    iget v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 889
    const/4 v3, 0x1

    .line 890
    if-eq v2, v3, :cond_26

    .line 892
    const/4 v3, 0x3

    .line 893
    if-ne v2, v3, :cond_24

    .line 895
    goto :goto_16

    .line 896
    :cond_24
    if-nez v2, :cond_25

    .line 898
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->initializeIfNotExist()V

    .line 901
    :cond_25
    :goto_15
    const/16 v2, 0x3ef

    .line 903
    goto :goto_17

    .line 904
    :cond_26
    :goto_16
    invoke-virtual {v0, v4}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->syncAuthAndEfsForAuth$1([Z)V

    .line 907
    goto :goto_15

    .line 908
    :goto_17
    invoke-virtual {v0, v2}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 911
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 914
    move-result-object v2

    .line 915
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 917
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 920
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 922
    :cond_27
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 924
    if-eqz v0, :cond_28

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processCycle()V

    .line 929
    :cond_28
    const/4 v2, 0x1

    .line 930
    iput-boolean v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 932
    return-void
.end method

.method public final processCycle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 7
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V

    .line 19
    :goto_0
    return-void
.end method

.method public final processDischargingLevel(JJZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "[processDischargingLevel]InitFinished False"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    const-wide/16 v2, 0x0

    .line 15
    cmp-long v0, p1, v2

    .line 17
    if-nez v0, :cond_1

    .line 19
    return-void

    .line 20
    :cond_1
    cmp-long v0, p3, p1

    .line 22
    if-gez v0, :cond_2

    .line 24
    iget-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 26
    sub-long/2addr p1, p3

    .line 27
    add-long/2addr p1, v4

    .line 28
    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string p2, "[processDischargingLevel]mCurrentBatteryUsage:"

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 39
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 42
    :cond_2
    if-nez p5, :cond_3

    .line 44
    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 46
    const-wide/16 p3, 0xa

    .line 48
    cmp-long p1, p1, p3

    .line 50
    if-gez p1, :cond_3

    .line 52
    return-void

    .line 53
    :cond_3
    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 55
    iput-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 57
    iget-object p3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance p4, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;

    .line 61
    const/4 p5, 0x0

    .line 62
    invoke-direct {p4, p0, p1, p2, p5}, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V

    .line 65
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public final processFullStatusUsage(JZ)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "[processFullStatusUsage]InitFinished False"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    iget-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 15
    const-wide/16 v4, -0x1

    .line 17
    cmp-long v0, v2, v4

    .line 19
    const-wide/16 v2, 0x64

    .line 21
    if-nez v0, :cond_2

    .line 23
    cmp-long p1, p1, v2

    .line 25
    if-nez p1, :cond_1

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    const-string p2, "[processFullStatusUsage]FullBatteryStartTime:"

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 42
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    move-result-wide v6

    .line 57
    iget-wide v8, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 59
    sub-long v8, v6, v8

    .line 61
    const-wide/32 v10, 0xea60

    .line 64
    div-long/2addr v8, v10

    .line 65
    if-nez p3, :cond_3

    .line 67
    cmp-long p3, p1, v2

    .line 69
    if-nez p3, :cond_3

    .line 71
    const-wide/16 v10, 0xa

    .line 73
    cmp-long p3, v8, v10

    .line 75
    if-gez p3, :cond_3

    .line 77
    return-void

    .line 78
    :cond_3
    cmp-long p1, p1, v2

    .line 80
    if-nez p1, :cond_4

    .line 82
    iput-wide v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 84
    const-string p1, "[processFullStatusUsage]time to save. maintains 100%"

    .line 86
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iput-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 92
    const-string p1, "[processFullStatusUsage]time to save. end of 100%"

    .line 94
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance p2, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;

    .line 101
    const/4 p3, 0x1

    .line 102
    invoke-direct {p2, p0, v8, v9, p3}, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
