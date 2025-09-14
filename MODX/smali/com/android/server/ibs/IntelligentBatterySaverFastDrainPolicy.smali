.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActionsLevel:Ljava/util/ArrayList;

.field public final mActionsLock:Ljava/lang/Object;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

.field public mCharging:Z

.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

.field public mEnterIBSBatteryLevel:I

.field public mEnterIBSTime:J

.field public mEstimatedBatteryCapacity:F

.field public mFastDrainInternalState:I

.field public mFastDropCurrent:F

.field public mFilter:Landroid/content/IntentFilter;

.field public final mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

.field public final mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

.field public final mInactiveTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

.field public mInited:Z

.field public final mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public final mIntelligentBatterySaverSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

.field public final mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

.field public mMotionSensor:Landroid/hardware/Sensor;

.field public final mMotionTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

.field public mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

.field public final mSafeCheckTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

.field public mScreenOn:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

.field public mSysState:I

.field public final mTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

.field public final mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;


# direct methods
.method public static -$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-nez p2, :cond_0

    .line 6
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, " registerIntelligentBatterySaverFastDrainAction error : level  1, callBack "

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 33
    iput-object p2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 35
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit p1

    .line 51
    :goto_0
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public static -$$Nest$msaveIntState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "Create shared preferences when save state."

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 18
    const-string/jumbo v2, "oper_pref"

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object p0

    .line 36
    const-string/jumbo v0, "saveIntState type = disable_gps_by_ibs state = "

    .line 39
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "disable_gps_by_ibs"

    .line 45
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 18
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 24
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 26
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 32
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 34
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 40
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 42
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 48
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInactiveTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 50
    const v0, 0x454e4000    # 3300.0f

    .line 53
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEstimatedBatteryCapacity:F

    .line 55
    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    .line 59
    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSBatteryLevel:I

    .line 62
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 66
    iput-object p4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 68
    new-instance p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    .line 70
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v2, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    .line 75
    iput-wide v0, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    .line 77
    iput-wide v0, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    .line 79
    iput-wide v0, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    .line 81
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    .line 83
    new-instance p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 85
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v2, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    .line 90
    iput-wide v0, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 92
    const/4 p4, -0x1

    .line 93
    iput p4, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 95
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 97
    new-instance p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    .line 99
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v2, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    .line 104
    iput-boolean v2, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    .line 106
    const/4 p4, 0x0

    .line 107
    iput p4, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    .line 109
    iput p4, p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    .line 111
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    .line 113
    iput-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    .line 115
    const/16 p3, 0x17

    .line 117
    invoke-static {p3, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getCustomTime(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 120
    move-result-object p3

    .line 121
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 123
    const/4 p3, 0x7

    .line 124
    invoke-static {p3, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getCustomTime(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 127
    move-result-object p3

    .line 128
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 130
    const/4 p3, 0x1

    .line 131
    iput-boolean p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 133
    iput-boolean p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 135
    iput v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 137
    const/4 p3, 0x2

    .line 138
    iput p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 140
    new-instance p3, Ljava/util/ArrayList;

    .line 142
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    .line 147
    new-instance p4, Ljava/util/ArrayList;

    .line 149
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p4, Ljava/util/ArrayList;

    .line 157
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 165
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 168
    move-result-object p2

    .line 169
    invoke-direct {p3, p0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/os/Looper;)V

    .line 172
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 174
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 176
    invoke-direct {p2, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/content/Context;)V

    .line 179
    iget-object p1, p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->gpsCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;

    .line 181
    const-string p3, "GPS_IBSFastDrainAction"

    .line 183
    invoke-static {p0, p3, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V

    .line 186
    iget-object p1, p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->wifiCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;

    .line 188
    const-string/jumbo p3, "wifi_IBSFastDrainAction"

    .line 191
    invoke-static {p0, p3, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V

    .line 194
    iget-object p1, p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mobiledataCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;

    .line 196
    const-string/jumbo p3, "mobiledata_IBSFastDrainAction"

    .line 199
    invoke-static {p0, p3, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V

    .line 202
    iget-object p1, p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->btCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;

    .line 204
    const-string/jumbo p2, "bt_IBSFastDrainAction"

    .line 207
    invoke-static {p0, p2, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V

    .line 210
    return-void
.end method

.method public static getCustomTime(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
    .locals 2

    .line 1
    mul-int/lit16 p0, p0, 0xe10

    .line 3
    mul-int/lit8 p1, p1, 0x3c

    .line 5
    add-int/2addr p1, p0

    .line 6
    div-int/lit16 p0, p1, 0xe10

    .line 8
    rem-int/lit16 v0, p1, 0xe10

    .line 10
    div-int/lit8 v0, v0, 0x3c

    .line 12
    rem-int/lit8 p1, p1, 0x3c

    .line 14
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 16
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;-><init>(III)V

    .line 19
    return-object v1
.end method


# virtual methods
.method public final exitFastDrainRestriction()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    .line 3
    const-wide/16 v2, 0x3e8

    .line 5
    div-long/2addr v0, v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v4

    .line 10
    div-long/2addr v4, v2

    .line 11
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 13
    iget v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 15
    sub-long/2addr v4, v0

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    cmp-long v0, v4, v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-wide/16 v4, 0x1

    .line 24
    :cond_0
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEstimatedBatteryCapacity:F

    .line 26
    const/high16 v1, 0x42c80000    # 100.0f

    .line 28
    div-float/2addr v0, v1

    .line 29
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSBatteryLevel:I

    .line 31
    sub-int/2addr v1, v2

    .line 32
    int-to-float v1, v1

    .line 33
    mul-float/2addr v0, v1

    .line 34
    const/high16 v1, 0x45610000    # 3600.0f

    .line 36
    mul-float/2addr v0, v1

    .line 37
    long-to-float v1, v4

    .line 38
    div-float/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    .line 41
    iput v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    .line 43
    const/16 v0, 0x80

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 48
    move-result v2

    .line 49
    iput-boolean v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    .line 51
    new-instance v2, Lorg/json/JSONObject;

    .line 53
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 56
    :try_start_0
    const-string v3, "IBSEN"

    .line 58
    iget-boolean v4, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    .line 60
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 63
    const-string v3, "IBSDHC"

    .line 65
    iget v4, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    .line 67
    float-to-double v4, v4

    .line 68
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 71
    const-string v3, "IBSRC"

    .line 73
    iget v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    .line 75
    float-to-double v4, v1

    .line 76
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-static {v2, v2, v1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 95
    iget-boolean v4, v3, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->mBigdataEnable:Z

    .line 97
    if-eqz v4, :cond_2

    .line 99
    new-instance v4, Landroid/content/ContentValues;

    .line 101
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v5, "app_id"

    .line 106
    const-string/jumbo v6, "com.android.server.ibs"

    .line 109
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v5, "feature"

    .line 115
    const-string v6, "IBS"

    .line 117
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v1, :cond_1

    .line 122
    const-string/jumbo v5, "extra"

    .line 125
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    new-instance v5, Landroid/content/Intent;

    .line 130
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 133
    const-string/jumbo v6, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 136
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v6, "data"

    .line 142
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v4, "com.samsung.android.providers.context"

    .line 148
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->mContext:Landroid/content/Context;

    .line 153
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 155
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 158
    :cond_2
    const-string v3, "app_id = com.android.server.ibs, feature = IBS, extra = "

    .line 160
    const-string v4, "IntelligentBatterySaverSurvey"

    .line 162
    invoke-static {v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    .line 167
    const/4 v3, 0x0

    .line 168
    iput-boolean v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    .line 170
    iput-boolean v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    .line 172
    const/4 v4, 0x0

    .line 173
    iput v4, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    .line 175
    iput v4, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    .line 177
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_3

    .line 186
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 188
    const-string v0, "UI switch off disable the cancel fast drain restriction."

    .line 190
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 196
    const-string/jumbo v1, "wifi"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 205
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 207
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_4

    .line 217
    const-string/jumbo v0, "disable_wifi_by_ibs"

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_5

    .line 226
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_6

    .line 232
    const-string/jumbo v0, "disable_mobile_data_by_ibs"

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_6

    .line 241
    :cond_5
    move v0, v2

    .line 242
    goto :goto_1

    .line 243
    :cond_6
    move v0, v3

    .line 244
    :goto_1
    const-string/jumbo v1, "needSendBroadCast need = "

    .line 247
    const-string v4, "IntelligentBatterySaverFastDrainPolicy"

    .line 249
    invoke-static {v1, v4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    if-eqz v0, :cond_7

    .line 254
    new-instance v0, Landroid/content/Intent;

    .line 256
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_FAST_BATTERY_DRAIN_DETECTED"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "trigger_time"

    .line 268
    iget-wide v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    .line 270
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 273
    const-string/jumbo v1, "com.samsung.android.sm_cn"

    .line 276
    const-string/jumbo v4, "com.samsung.android.sm.battery.receiver.FastBatteryDrainReceiver"

    .line 279
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    .line 289
    monitor-enter v0

    .line 290
    :goto_2
    if-ltz v2, :cond_9

    .line 292
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 303
    move-result-object v1

    .line 304
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_8

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    const-string v5, "IntelligentBatterySaverFastDrainPolicy"

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    const-string v7, " cancel fast drain restriction "

    .line 325
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v7, v4, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v6

    .line 337
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v4, v4, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 342
    invoke-interface {v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;->cancelFastDrainRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    goto :goto_3

    .line 346
    :catchall_0
    move-exception p0

    .line 347
    goto :goto_4

    .line 348
    :catch_1
    move-exception v4

    .line 349
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    goto :goto_3

    .line 353
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 355
    goto :goto_2

    .line 356
    :cond_9
    const-string/jumbo v1, "ibs_policy_activated"

    .line 359
    invoke-virtual {p0, v1, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 364
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    throw p0
.end method

.method public final getBooleanState(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string v0, "Create shared preferences when get state."

    .line 14
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 19
    const-string/jumbo v3, "oper_pref"

    .line 22
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    if-nez p0, :cond_1

    .line 32
    return v2

    .line 33
    :cond_1
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    move-result p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v2, "getBooleanState type = "

    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, " state = "

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return p0
.end method

.method public final initAlarm(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "alarm"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/AlarmManager;

    .line 13
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 25
    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final initBroadcast(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 8
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    .line 10
    new-instance p1, Landroid/content/IntentFilter;

    .line 12
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    .line 17
    const-string v0, "android.intent.action.TIME_SET"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    .line 24
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    .line 31
    const-string v0, "android.intent.action.REBOOT"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    .line 40
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 49
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    :goto_0
    return-void
.end method

.method public final moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 4
    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 11
    invoke-virtual {v1, p1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 21
    iget-boolean v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    iget-object v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 27
    iget-object v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 29
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 32
    move-result v2

    .line 33
    if-ne v2, v0, :cond_0

    .line 35
    iget-object v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 37
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 39
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 41
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 43
    invoke-virtual {v2, v0, v3}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 49
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 53
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 56
    :goto_0
    iput-boolean v1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 60
    if-eqz p1, :cond_2

    .line 62
    if-eqz p2, :cond_2

    .line 64
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 67
    :cond_2
    if-eqz p3, :cond_3

    .line 69
    iget p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 71
    and-int/lit8 p1, p1, -0x61

    .line 73
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 75
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    .line 77
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    .line 79
    :cond_3
    return-void
.end method

.method public final reportClearState(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/16 v0, 0x9

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    :cond_0
    return-void
.end method

.method public final reportSetState(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/16 v0, 0x8

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    :cond_0
    return-void
.end method

.method public final resetBatteryInfo()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 13
    return-void
.end method

.method public final saveBooleanState(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "Create shared preferences when save state."

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 18
    const-string/jumbo v2, "oper_pref"

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v2, "saveBooleanState type = "

    .line 41
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, " state = "

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    :cond_1
    return-void
.end method

.method public final scheduleInactiveTimeoutAlarm(J)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    add-long v4, v0, p1

    .line 7
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 9
    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 13
    const-string p2, "alarm"

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/app/AlarmManager;

    .line 21
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 25
    iget-object v8, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 27
    const/4 v3, 0x3

    .line 28
    const-string v6, "IntelligentBatterySaver.inactive"

    .line 30
    iget-object v7, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInactiveTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 32
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 35
    return-void
.end method

.method public final scheduleSaveCheckTimeoutAlarm()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v2

    .line 5
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 11
    const-string v1, "alarm"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/AlarmManager;

    .line 19
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 23
    iget-object v6, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 25
    const/4 v1, 0x3

    .line 26
    const-string v4, "IntelligentBatterySaver.safecheck"

    .line 28
    iget-object v5, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 30
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 33
    return-void
.end method

.method public final setIBSFastDrainPolicyEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 3
    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 11
    const-string/jumbo p0, "startIntelligentBatterySaverFastDrainPolicy"

    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 24
    const-string/jumbo p0, "stopIntelligentBatterySaverFastDrainPolicy"

    .line 27
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 p0, 0x2

    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    :goto_0
    return-void
.end method

.method public final setSysState(I)V
    .locals 6

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    xor-int/2addr v0, p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Sys State changed : [old , new, changebits] : ["

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v3, ","

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v4, "]"

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    const-string v5, "IntelligentBatterySaverFastDrainPolicy"

    .line 57
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 103
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 106
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    .line 111
    :cond_0
    return-void
.end method

.method public final testState(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final updateActivated()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 22
    const/4 v3, 0x6

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 26
    move-result v4

    .line 27
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 30
    const/16 v3, 0xb

    .line 32
    iget v4, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 37
    const/16 v4, 0xc

    .line 39
    iget v5, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    .line 41
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/16 v5, 0xd

    .line 46
    iget v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->second:I

    .line 48
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v1, 0xe

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v2, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x5

    .line 64
    const/4 v5, -0x1

    .line 65
    invoke-virtual {v2, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 70
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 82
    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 85
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 89
    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 92
    move-result-object v0

    .line 93
    :goto_0
    const-string v2, ":"

    .line 95
    const-string v5, "IntelligentBatterySaverFastDrainPolicy"

    .line 97
    const/4 v6, 0x2

    .line 98
    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    const-string v6, "In Active Duration, set inactive alarm at "

    .line 107
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 113
    move-result v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    const-string v6, "Out Active Duration, set active alarm at "

    .line 142
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 148
    move-result v3

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_1
    iget-object v6, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 174
    move-result-wide v8

    .line 175
    const-string v10, "IntelligentBatterySaverFastDrainPolicy"

    .line 177
    const/4 v12, 0x0

    .line 178
    const/4 v7, 0x0

    .line 179
    iget-object v11, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 181
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 184
    return-void
.end method

.method public final updateFastDrainInternalState()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 3
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 5
    const/4 v2, 0x3

    .line 6
    const-string/jumbo v3, "move to off state"

    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x10

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    const/16 v8, 0xf

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 19
    goto/16 :goto_0

    .line 21
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_7

    .line 27
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    .line 33
    goto/16 :goto_0

    .line 35
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 38
    move-result v0

    .line 39
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 41
    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "move to off state from safe check"

    .line 46
    invoke-virtual {p0, v0, v3, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 49
    goto/16 :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 57
    const-string/jumbo v0, "move to off state from safe check, device move"

    .line 60
    invoke-virtual {p0, v0, v3, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    .line 66
    goto/16 :goto_0

    .line 68
    :cond_1
    const/16 v0, 0x60

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 76
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 78
    if-eqz v0, :cond_2

    .line 80
    if-eqz v3, :cond_2

    .line 82
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 85
    :cond_2
    const/4 v0, 0x6

    .line 86
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 88
    const-string/jumbo v0, "move to battery check state"

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "triggerIBS"

    .line 97
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 102
    if-eqz p0, :cond_7

    .line 104
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    goto/16 :goto_0

    .line 113
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 116
    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 119
    if-nez v0, :cond_3

    .line 121
    const-string/jumbo v0, "move to off state from motion"

    .line 124
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 127
    goto/16 :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_7

    .line 135
    const-string/jumbo v0, "move to off state from motion, device move"

    .line 138
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    .line 144
    goto :goto_0

    .line 145
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInactiveTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 153
    const-string/jumbo v1, "move to off state from inactive"

    .line 156
    invoke-virtual {p0, v1, v0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 159
    goto :goto_0

    .line 160
    :cond_4
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 162
    const-string v0, " extra bits report in inactive state!"

    .line 164
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto :goto_0

    .line 168
    :pswitch_4
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_7

    .line 174
    iput v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 176
    const-string/jumbo v0, "move to inactive"

    .line 179
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 184
    const-string/jumbo v1, "power"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/os/PowerManager;

    .line 193
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_5

    .line 199
    const-wide/16 v0, 0x0

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleInactiveTimeoutAlarm(J)V

    .line 204
    goto :goto_0

    .line 205
    :cond_5
    const-wide/32 v0, 0x927c0

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleInactiveTimeoutAlarm(J)V

    .line 211
    goto :goto_0

    .line 212
    :pswitch_5
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V

    .line 221
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 224
    goto :goto_0

    .line 225
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V

    .line 234
    const-string/jumbo v0, "move to off state, device move"

    .line 237
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    .line 243
    :cond_7
    :goto_0
    return-void

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
