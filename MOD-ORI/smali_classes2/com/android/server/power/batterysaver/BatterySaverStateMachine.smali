.class public final Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final STICKY_DISABLED_NOTIFY_TIMEOUT_MS:J


# instance fields
.field public mBatteryLevel:I

.field public final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field public final mBatterySaverStickyBehaviourDisabled:Z

.field public final mBatterySaverTurnedOffNotificationEnabled:Z

.field public mBatteryStatusSet:Z

.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public final mDynamicPowerSavingsDefaultDisableThreshold:I

.field public mDynamicPowerSavingsDisableThreshold:I

.field public mDynamicPowerSavingsEnableBatterySaver:Z

.field public mEmergencyModeEnabled:Z

.field public mIsBatteryLevelLow:Z

.field public mIsPowered:Z

.field public mLastAdaptiveBatterySaverChangedExternallyElapsed:J

.field public mLastChangedIntReason:I

.field public mLastChangedStrReason:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mSettingAutomaticBatterySaver:I

.field public mSettingBatterySaverEnabled:Z

.field public mSettingBatterySaverEnabledSticky:Z

.field public mSettingBatterySaverStickyAutoDisableEnabled:Z

.field public mSettingBatterySaverStickyAutoDisableThreshold:I

.field public mSettingBatterySaverTriggerThreshold:I

.field public mSettingsLoaded:Z

.field public final mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

.field public mState:I

.field public final mThresholdChangeLogger:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

.field public mUltraPowerSavingModeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->STICKY_DISABLED_NOTIFY_TIMEOUT_MS:J

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const p3, 0x1110045

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const p3, 0x1110047

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverTurnedOffNotificationEnabled:Z

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const p2, 0x10e00aa

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final buildNotification(IIJLjava/lang/String;)Landroid/app/Notification;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x10008000

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/high16 v4, 0xc000000

    .line 24
    .line 25
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance v0, Landroid/app/Notification$Builder;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-direct {v0, p0, p5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const p0, 0x10803aa

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p1, Landroid/app/Notification$BigTextStyle;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p3, p4}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    const-string v1, "  "

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 9
    .line 10
    .line 11
    const-string p1, "Battery saver state machine:"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    const-string v1, "Enabled="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 37
    .line 38
    .line 39
    const-string v1, "full="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 45
    .line 46
    iget-object v2, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 50
    .line 51
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 52
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 53
    .line 54
    .line 55
    const-string v1, "adaptive="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 61
    .line 62
    iget-object v2, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 66
    .line 67
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 68
    :try_start_4
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :try_start_5
    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 77
    .line 78
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    :try_start_6
    const-string v1, " (advertise="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 95
    .line 96
    .line 97
    const-string v1, ")"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v1, "mState="

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 121
    .line 122
    .line 123
    const-string v1, "mLastChangedIntReason="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 131
    .line 132
    .line 133
    const-string v1, "mLastChangedStrReason="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, "mBootCompleted="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 151
    .line 152
    .line 153
    const-string/jumbo v1, "mSettingsLoaded="

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 162
    .line 163
    .line 164
    const-string v1, "mBatteryStatusSet="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 172
    .line 173
    .line 174
    const-string v1, "mIsPowered="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 182
    .line 183
    .line 184
    const-string v1, "mBatteryLevel="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 192
    .line 193
    .line 194
    const-string v1, "mIsBatteryLevelLow="

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 202
    .line 203
    .line 204
    const-string/jumbo v1, "mSettingAutomaticBatterySaver="

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 213
    .line 214
    .line 215
    const-string/jumbo v1, "mSettingBatterySaverEnabled="

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 224
    .line 225
    .line 226
    const-string/jumbo v1, "mSettingBatterySaverEnabledSticky="

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 235
    .line 236
    .line 237
    const-string/jumbo v1, "mSettingBatterySaverStickyAutoDisableEnabled="

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo v1, "mSettingBatterySaverStickyAutoDisableThreshold="

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 257
    .line 258
    .line 259
    const-string/jumbo v1, "mSettingBatterySaverTriggerThreshold="

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 268
    .line 269
    .line 270
    const-string v1, "mBatterySaverStickyBehaviourDisabled="

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 278
    .line 279
    .line 280
    const-string v1, "mBatterySaverTurnedOffNotificationEnabled="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverTurnedOffNotificationEnabled:Z

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 288
    .line 289
    .line 290
    const-string v1, "mDynamicPowerSavingsDefaultDisableThreshold="

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 298
    .line 299
    .line 300
    const-string v1, "mDynamicPowerSavingsDisableThreshold="

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 308
    .line 309
    .line 310
    const-string v1, "mDynamicPowerSavingsEnableBatterySaver="

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 318
    .line 319
    .line 320
    const-string v1, "mLastAdaptiveBatterySaverChangedExternallyElapsed="

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 326
    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 328
    .line 329
    .line 330
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 331
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :catchall_1
    move-exception p0

    .line 336
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 337
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 338
    :catchall_2
    move-exception p0

    .line 339
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 340
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 341
    :catchall_3
    move-exception p0

    .line 342
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 343
    :try_start_c
    throw p0

    .line 344
    :goto_1
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 345
    throw p0
.end method

.method public final dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide v1, 0x10b00000032L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-wide v4, 0x10800000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 28
    .line 29
    const-wide v4, 0x10e00000012L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-boolean v3, v3, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 43
    .line 44
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    const-wide v4, 0x1080000000eL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 54
    .line 55
    iget-object v4, v3, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    iget-boolean v3, v3, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 59
    .line 60
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    const-wide v4, 0x1080000000fL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    :try_start_4
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const-wide v4, 0x10800000010L

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 83
    .line 84
    .line 85
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 86
    .line 87
    const-wide v4, 0x10800000002L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 93
    .line 94
    .line 95
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    .line 96
    .line 97
    const-wide v4, 0x10800000003L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 103
    .line 104
    .line 105
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 106
    .line 107
    const-wide v4, 0x10800000004L

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 113
    .line 114
    .line 115
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 116
    .line 117
    const-wide v4, 0x10800000006L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 123
    .line 124
    .line 125
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 126
    .line 127
    const-wide v4, 0x10500000007L

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 133
    .line 134
    .line 135
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 136
    .line 137
    const-wide v4, 0x10800000008L

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 143
    .line 144
    .line 145
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 146
    .line 147
    const-wide v4, 0x10e00000013L

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 153
    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 156
    .line 157
    const-wide v4, 0x10800000009L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 163
    .line 164
    .line 165
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 166
    .line 167
    const-wide v4, 0x1080000000aL

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 173
    .line 174
    .line 175
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 176
    .line 177
    const-wide v4, 0x1050000000bL

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 183
    .line 184
    .line 185
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 186
    .line 187
    const-wide v4, 0x1080000000cL

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 193
    .line 194
    .line 195
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 196
    .line 197
    const-wide v4, 0x1050000000dL

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 203
    .line 204
    .line 205
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    .line 206
    .line 207
    const-wide v4, 0x10500000014L

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 213
    .line 214
    .line 215
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 216
    .line 217
    const-wide v4, 0x10500000015L

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 223
    .line 224
    .line 225
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    .line 226
    .line 227
    const-wide v4, 0x10800000016L

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 233
    .line 234
    .line 235
    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 236
    .line 237
    const-wide v5, 0x10300000011L

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 246
    .line 247
    .line 248
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    return-void

    .line 250
    :catchall_0
    move-exception p0

    .line 251
    goto :goto_0

    .line 252
    :catchall_1
    move-exception p0

    .line 253
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    :catchall_2
    move-exception p0

    .line 256
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 257
    :try_start_8
    throw p0

    .line 258
    :goto_0
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 259
    throw p0
.end method

.method public final enableBatterySaverLocked(IZZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    const-string v0, "Unknown reason: "

    .line 2
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :pswitch_0
    const-string v0, "Full Power Savings changed"

    goto :goto_0

    .line 4
    :pswitch_1
    const-string/jumbo v0, "timeout"

    goto :goto_0

    .line 5
    :pswitch_2
    const-string v0, "Adaptive Power Savings changed"

    goto :goto_0

    .line 6
    :pswitch_3
    const-string v0, "Dynamic Warning Auto OFF"

    goto :goto_0

    .line 7
    :pswitch_4
    const-string v0, "Dynamic Warning Auto ON"

    goto :goto_0

    .line 8
    :pswitch_5
    const-string v0, "Setting changed"

    goto :goto_0

    .line 9
    :pswitch_6
    const-string v0, "Plugged in"

    goto :goto_0

    .line 10
    :pswitch_7
    const-string v0, "Policy changed"

    goto :goto_0

    .line 11
    :pswitch_8
    const-string v0, "Interactivity changed"

    goto :goto_0

    .line 12
    :pswitch_9
    const-string v0, "Sticky restore"

    goto :goto_0

    .line 13
    :pswitch_a
    const-string v0, "Manual OFF"

    goto :goto_0

    .line 14
    :pswitch_b
    const-string v0, "Manual ON"

    goto :goto_0

    .line 15
    :pswitch_c
    const-string v0, "Percentage Auto OFF"

    goto :goto_0

    .line 16
    :pswitch_d
    const-string v0, "Percentage Auto ON"

    .line 17
    :goto_0
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(Ljava/lang/String;ZZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final enableBatterySaverLocked(Ljava/lang/String;ZZI)V
    .locals 3

    .line 22
    const-string v0, "enableBatterySaver: enable="

    const-string v1, " manual="

    const-string v2, " reason="

    .line 23
    invoke-static {v0, p2, v1, p3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    const-string v1, "("

    const-string v2, ")"

    .line 25
    invoke-static {p4, p1, v1, v2, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "BatterySaverStateMachine"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 28
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p2, :cond_0

    return-void

    .line 32
    :cond_0
    iput p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 33
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 34
    iput-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 35
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    if-nez p1, :cond_2

    .line 36
    const-string p1, "low_power"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    if-eqz p3, :cond_2

    .line 37
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 39
    const-string p3, "low_power_sticky"

    invoke-virtual {p0, p3, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 40
    :cond_2
    invoke-virtual {v0, p2, p4}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    const/16 p1, 0x9

    if-eq p4, p1, :cond_4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_5

    .line 41
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;

    const/16 p2, 0x7c8

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 42
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/server/power/batterysaver/Flags;->updateAutoTurnOnNotificationStringAndAction()Z

    .line 43
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerDynamicModeNotificationV2()V

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p3, 0x3

    .line 10
    invoke-direct {v0, p2, p0, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {v0, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getGlobalSetting(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public putGlobalSetting(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "putGlobalSetting: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ":"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "BatterySaverStateMachine"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final refreshSettingsLocked()V
    .locals 14

    .line 1
    const-string v0, "low_power"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    const-string v3, "low_power_sticky"

    .line 15
    .line 16
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move v6, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v6, v1

    .line 25
    :goto_1
    const-string v3, "dynamic_power_savings_enabled"

    .line 26
    .line 27
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    move v11, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v11, v1

    .line 36
    :goto_2
    const-string v3, "low_power_trigger_level"

    .line 37
    .line 38
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const-string v3, "automatic_power_save_mode"

    .line 43
    .line 44
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const-string v3, "dynamic_power_savings_disable_threshold"

    .line 49
    .line 50
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    .line 51
    .line 52
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    const-string v3, "low_power_sticky_auto_disable_enabled"

    .line 57
    .line 58
    invoke-virtual {p0, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    move v8, v2

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move v8, v1

    .line 67
    :goto_3
    const-string v3, "low_power_sticky_auto_disable_level"

    .line 68
    .line 69
    const/16 v4, 0x5a

    .line 70
    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "emergency_mode"

    .line 82
    .line 83
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ne v3, v2, :cond_4

    .line 88
    .line 89
    move v3, v2

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move v3, v1

    .line 92
    :goto_4
    iput-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string/jumbo v4, "ultra_powersaving_mode"

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-ne v3, v2, :cond_5

    .line 108
    .line 109
    move v3, v2

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    move v3, v1

    .line 112
    :goto_5
    iput-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    .line 113
    .line 114
    const-string v3, "[api] refreshSettingsLocked: lowPowerModeEnabled: "

    .line 115
    .line 116
    const-string v4, " emergencyModeEnabled: "

    .line 117
    .line 118
    invoke-static {v3, v4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, " ultraPowerSavingModeEnabled: "

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    .line 133
    .line 134
    const-string v5, " lowPowerModeEnabledSticky: "

    .line 135
    .line 136
    const-string v13, " lowPowerModeTriggerLevel: "

    .line 137
    .line 138
    invoke-static {v3, v4, v5, v6, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v4, "BatterySaverStateMachine"

    .line 142
    .line 143
    invoke-static {v3, v7, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    .line 149
    .line 150
    if-nez v0, :cond_7

    .line 151
    .line 152
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_6
    move v5, v1

    .line 158
    goto :goto_7

    .line 159
    :cond_7
    :goto_6
    move v5, v2

    .line 160
    :goto_7
    move-object v4, p0

    .line 161
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZIZIIZI)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public runOnBgThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    int-to-long v0, p2

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setSettingsLocked(ZZIZIIZI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    move/from16 v7, p8

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    .line 19
    .line 20
    move/from16 v9, p5

    .line 21
    .line 22
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    iget-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 27
    .line 28
    if-eq v10, v1, :cond_0

    .line 29
    .line 30
    move v10, v8

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v10, 0x0

    .line 33
    :goto_0
    iget-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 34
    .line 35
    if-eq v12, v2, :cond_1

    .line 36
    .line 37
    move v12, v8

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v12, 0x0

    .line 40
    :goto_1
    iget v13, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 41
    .line 42
    if-eq v13, v3, :cond_2

    .line 43
    .line 44
    move v13, v8

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v13, 0x0

    .line 47
    :goto_2
    iget-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 48
    .line 49
    if-eq v14, v4, :cond_3

    .line 50
    .line 51
    move v14, v8

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v14, 0x0

    .line 54
    :goto_3
    iget v15, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 55
    .line 56
    if-eq v15, v9, :cond_4

    .line 57
    .line 58
    move v15, v8

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    const/4 v15, 0x0

    .line 61
    :goto_4
    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 62
    .line 63
    if-eq v11, v5, :cond_5

    .line 64
    .line 65
    move v11, v8

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    const/4 v11, 0x0

    .line 68
    :goto_5
    iget v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 69
    .line 70
    if-eq v8, v7, :cond_6

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    goto :goto_6

    .line 74
    :cond_6
    const/4 v8, 0x0

    .line 75
    :goto_6
    iget-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    .line 76
    .line 77
    if-eq v7, v6, :cond_7

    .line 78
    .line 79
    const/4 v7, 0x1

    .line 80
    goto :goto_7

    .line 81
    :cond_7
    const/4 v7, 0x0

    .line 82
    :goto_7
    if-nez v10, :cond_8

    .line 83
    .line 84
    if-nez v12, :cond_8

    .line 85
    .line 86
    if-nez v13, :cond_8

    .line 87
    .line 88
    if-nez v11, :cond_8

    .line 89
    .line 90
    if-nez v14, :cond_8

    .line 91
    .line 92
    if-nez v15, :cond_8

    .line 93
    .line 94
    if-nez v8, :cond_8

    .line 95
    .line 96
    if-nez v7, :cond_8

    .line 97
    .line 98
    return-void

    .line 99
    :cond_8
    iput-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 100
    .line 101
    iput-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 102
    .line 103
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 104
    .line 105
    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 106
    .line 107
    iput v9, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 108
    .line 109
    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 110
    .line 111
    move/from16 v2, p8

    .line 112
    .line 113
    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 114
    .line 115
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    .line 116
    .line 117
    if-eqz v13, :cond_9

    .line 118
    .line 119
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/16 v3, 0x7d0

    .line 122
    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    .line 124
    .line 125
    .line 126
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 127
    .line 128
    if-nez v2, :cond_a

    .line 129
    .line 130
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;

    .line 131
    .line 132
    const/16 v3, 0x7c9

    .line 133
    .line 134
    invoke-direct {v2, v0, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    :cond_a
    if-eqz v10, :cond_b

    .line 141
    .line 142
    const-string v2, "lp:"

    .line 143
    .line 144
    const-string v3, " em:"

    .line 145
    .line 146
    invoke-static {v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, " ul:"

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/16 v3, 0x8

    .line 170
    .line 171
    const/4 v4, 0x1

    .line 172
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(Ljava/lang/String;ZZI)V

    .line 173
    .line 174
    .line 175
    :cond_b
    return-void
.end method

.method public final systemReady()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Lcom/android/server/power/batterysaver/BatterySaverController$1;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    const-string v1, "BatterySaverPolicy"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    .line 62
    const-string v1, "battery_saver_constants"

    .line 63
    .line 64
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    .line 73
    const-string v1, "battery_saver_device_specific_constants"

    .line 74
    .line 75
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 91
    .line 92
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 107
    .line 108
    iget-object v3, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v3

    .line 111
    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 112
    .line 113
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const-class v1, Landroid/app/UiModeManager;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/app/UiModeManager;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mOnProjectionStateChangedListener:Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    invoke-virtual {v0, v4, v1, v3}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getActiveProjectionTypes()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    .line 144
    move v0, v4

    .line 145
    goto :goto_0

    .line 146
    :cond_0
    move v0, v2

    .line 147
    :goto_0
    iget-object v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 148
    .line 149
    iget-object v5, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v5

    .line 152
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 153
    .line 154
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v1, "battery_saver"

    .line 162
    .line 163
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 164
    .line 165
    .line 166
    new-array v0, v2, [Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 173
    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v4, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    throw p0

    .line 182
    :catchall_1
    move-exception p0

    .line 183
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    throw p0
.end method

.method public triggerDynamicModeNotification()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public triggerDynamicModeNotificationV2()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public triggerStickyDisabledNotification()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverTurnedOffNotificationEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final updateStateLocked(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 2
    .line 3
    const-string v1, "BatterySaverStateMachine"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v3, :cond_8

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eq v0, v2, :cond_6

    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    if-eq v0, v4, :cond_3

    .line 15
    .line 16
    if-eq v0, v6, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Unknown state: "

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget p1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "Tried to manually change BS state from PENDING_STICKY_ON"

    .line 44
    .line 45
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    if-nez p1, :cond_2

    .line 50
    .line 51
    const-string p0, "Tried to disable BS when it\'s already AUTO_SNOOZED"

    .line 52
    .line 53
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(IZZ)V

    .line 58
    .line 59
    .line 60
    iput v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const/4 p1, 0x7

    .line 68
    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(IZZ)V

    .line 69
    .line 70
    .line 71
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const-string p0, "Tried to enable BS when it\'s already AUTO_ON"

    .line 77
    .line 78
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(IZZ)V

    .line 83
    .line 84
    .line 85
    iput v6, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    if-eqz p1, :cond_7

    .line 89
    .line 90
    const-string p0, "Tried to enable BS when it\'s already MANUAL_ON"

    .line 91
    .line 92
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_7
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(IZZ)V

    .line 97
    .line 98
    .line 99
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_8
    if-nez p1, :cond_9

    .line 103
    .line 104
    const-string p0, "Tried to disable BS when it\'s already OFF"

    .line 105
    .line 106
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_9
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(IZZ)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;

    .line 114
    .line 115
    const/16 v0, 0x7c9

    .line 116
    .line 117
    invoke-direct {p1, p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    iput v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 124
    .line 125
    :goto_0
    return-void
.end method
