.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

.field public final BOPR_MAX_VALUE:I

.field public BOPR_VALUE_STEP:I

.field public final GET_SYSTEM_SERVICES_MILLIS:I

.field public app_weighting_factor:F

.field public bopr_cumulative_count:I

.field public cal_value_sum:F

.field public defaultBedTime:I

.field public defaultWakeupTime:I

.field public final mAdaptiveBlueLightFilterSupported:Z

.field public mBedtime_friday:I

.field public mBedtime_monday:I

.field public mBedtime_saturday:I

.field public mBedtime_sunday:I

.field public mBedtime_thursday:I

.field public mBedtime_tuesday:I

.field public mBedtime_wednesday:I

.field public mBlfIndexEadOffset:I

.field public mBlueLightFilterAdaptiveModeEnabled:Z

.field public mBlueLightFilterCustomAlwaysOn:Z

.field public mBlueLightFilterEnableTime:Z

.field public mBlueLightFilterModeEnabled:Z

.field public mBlueLightFilterScheduledTime:Z

.field public mBoprSensor:Landroid/hardware/Sensor;

.field public final mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

.field public final mColorOnPixelRatioSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentStateSleep:Z

.field public mCurrentStateWakeup:Z

.field public mDefaultThemeEnabled:Z

.field public mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

.field public final mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

.field public mLastBoprBlueLightFilterIndex:I

.field public mLastDayBlueLightFilterIndex:I

.field public mLastTotalBlueLightFilterIndex:I

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public final mNaturalGammaScreenModeSupported:Z

.field public mNightDimFontConfigValue:I

.field public mNightDimFontConfigValuePrev:I

.field public mNightDimModeEnabled:Z

.field public mPrevClutValue:I

.field public mPrevmDNIeMode:Ljava/lang/String;

.field public mScreenModeSetting:I

.field public mScreenOn:Z

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSupportAPmDNIe:Z

.field public mWakeupTime_friday:I

.field public mWakeupTime_monday:I

.field public mWakeupTime_saturday:I

.field public mWakeupTime_sunday:I

.field public mWakeupTime_thursday:I

.field public mWakeupTime_tuesday:I

.field public mWakeupTime_wednesday:I

.field public prevTotalStep:I


# direct methods
.method public static -$$Nest$mgetBoprValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getCoprValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 26
    .line 27
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 35
    .line 36
    const/16 v3, 0x36

    .line 37
    .line 38
    if-ge v2, v3, :cond_3

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    .line 49
    .line 50
    int-to-long v3, p0

    .line 51
    add-long/2addr v0, v3

    .line 52
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    invoke-virtual {v1, v0, p0, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-nez v1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-string v3, "blue_light_filter"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, -0x2

    .line 15
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v6, :cond_0

    .line 21
    .line 22
    move v3, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v4

    .line 25
    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 26
    .line 27
    const-string v3, "blue_light_filter_night_dim"

    .line 28
    .line 29
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v3, v6, :cond_1

    .line 34
    .line 35
    move v3, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v4

    .line 38
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 39
    .line 40
    const-string v3, "blue_light_filter_adaptive_mode"

    .line 41
    .line 42
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v3, v6, :cond_2

    .line 47
    .line 48
    move v3, v6

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v3, v4

    .line 51
    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 52
    .line 53
    const-string v3, "current_sec_active_themepackage"

    .line 54
    .line 55
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    move v3, v6

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v3, v4

    .line 64
    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 65
    .line 66
    const-string v3, "blue_light_filter_type"

    .line 67
    .line 68
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    move v0, v6

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    move v0, v4

    .line 77
    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string/jumbo v3, "screen_mode_setting"

    .line 86
    .line 87
    .line 88
    const/4 v7, 0x4

    .line 89
    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "mBlueLightFilterModeEnabled : "

    .line 98
    .line 99
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, " , mNightDimModeEnabled : "

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, " , mBlueLightFilterAdaptiveModeEnabled : "

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, " , mDefaultThemeEnabled : "

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, " , mBlueLightFilterCustomAlwaysOn : "

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 143
    .line 144
    const-string v5, "EyeComfortSolutionService"

    .line 145
    .line 146
    invoke-static {v5, v0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 147
    .line 148
    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 150
    .line 151
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 152
    .line 153
    const/4 v7, 0x2

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 157
    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    const-string v0, "All"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 166
    .line 167
    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 169
    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 173
    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    .line 178
    .line 179
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    .line 180
    .line 181
    int-to-long v4, v0

    .line 182
    add-long/2addr v1, v4

    .line 183
    invoke-virtual {v3, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    .line 192
    .line 193
    const/4 v0, 0x3

    .line 194
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    .line 199
    .line 200
    const-string/jumbo v0, "reset blue_light_filter_data_reset"

    .line 201
    .line 202
    .line 203
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 207
    .line 208
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 209
    .line 210
    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 212
    .line 213
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 214
    .line 215
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 216
    .line 217
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 218
    .line 219
    :cond_6
    :goto_5
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevmDNIeMode:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "eng"

    .line 10
    .line 11
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const/16 v2, 0xfa0

    .line 17
    .line 18
    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 19
    .line 20
    const/16 v3, 0x2710

    .line 21
    .line 22
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 26
    .line 27
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 34
    .line 35
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    .line 37
    iput v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    iput v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 41
    .line 42
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 43
    .line 44
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 45
    .line 46
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 47
    .line 48
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 49
    .line 50
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 51
    .line 52
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 53
    .line 54
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    .line 55
    .line 56
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 57
    .line 58
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 59
    .line 60
    const/16 v5, 0x168

    .line 61
    .line 62
    iput v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 63
    .line 64
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 65
    .line 66
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 67
    .line 68
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 69
    .line 70
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 71
    .line 72
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 73
    .line 74
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 75
    .line 76
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 77
    .line 78
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 79
    .line 80
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 81
    .line 82
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 83
    .line 84
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 85
    .line 86
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 87
    .line 88
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 89
    .line 90
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 91
    .line 92
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 93
    .line 94
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    .line 95
    .line 96
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 97
    .line 98
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 99
    .line 100
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 101
    .line 102
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 103
    .line 104
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 105
    .line 106
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 107
    .line 108
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 109
    .line 110
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 111
    .line 112
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 113
    .line 114
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 115
    .line 116
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 117
    .line 118
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 119
    .line 120
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    .line 121
    .line 122
    new-instance v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    .line 128
    .line 129
    move-object/from16 v1, p1

    .line 130
    .line 131
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    const-string v5, "EyeComfortSolutionServiceThread"

    .line 134
    .line 135
    invoke-static {v5}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    new-instance v11, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-direct {v11, v0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V

    .line 146
    .line 147
    .line 148
    iput-object v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    const v6, 0x111019a

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const v6, 0x10e0017

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    iput v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 173
    .line 174
    const-string v13, "EyeComfortSolutionService"

    .line 175
    .line 176
    const-string v5, "mEnvironmentAdaptiveDisplaySupported false"

    .line 177
    .line 178
    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    new-instance v5, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    .line 182
    .line 183
    invoke-direct {v5, v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v14

    .line 194
    const-string v7, "blue_light_filter"

    .line 195
    .line 196
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v6, v7, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 201
    .line 202
    .line 203
    const-string v7, "blue_light_filter_night_dim"

    .line 204
    .line 205
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    .line 211
    .line 212
    const-string v7, "blue_light_filter_adaptive_mode"

    .line 213
    .line 214
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v6, v7, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 219
    .line 220
    .line 221
    const-string v7, "current_sec_active_themepackage"

    .line 222
    .line 223
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v6, v7, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 228
    .line 229
    .line 230
    const-string v7, "blue_light_filter_type"

    .line 231
    .line 232
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v6, v7, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 237
    .line 238
    .line 239
    const-string/jumbo v4, "screen_mode_setting"

    .line 240
    .line 241
    .line 242
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const/4 v7, -0x2

    .line 247
    invoke-virtual {v6, v4, v3, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 248
    .line 249
    .line 250
    new-instance v8, Landroid/content/IntentFilter;

    .line 251
    .line 252
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 256
    .line 257
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 258
    .line 259
    const-string v6, "android.intent.action.SCREEN_ON"

    .line 260
    .line 261
    const-string v7, "android.intent.action.SCREEN_OFF"

    .line 262
    .line 263
    invoke-static {v8, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v4, "android.intent.action.USER_PRESENT"

    .line 267
    .line 268
    const-string v5, "android.intent.action.TIME_TICK"

    .line 269
    .line 270
    const-string v6, "android.intent.action.TIME_SET"

    .line 271
    .line 272
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    .line 273
    .line 274
    invoke-static {v8, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 278
    .line 279
    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;

    .line 283
    .line 284
    invoke-direct {v6, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 285
    .line 286
    .line 287
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 288
    .line 289
    const/4 v9, 0x0

    .line 290
    const/4 v10, 0x0

    .line 291
    move-object/from16 v5, p1

    .line 292
    .line 293
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    const/4 v1, 0x1

    .line 297
    invoke-virtual {v11, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    .line 299
    .line 300
    int-to-long v4, v2

    .line 301
    add-long/2addr v14, v4

    .line 302
    invoke-virtual {v11, v1, v14, v15}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 310
    .line 311
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-lez v2, :cond_0

    .line 316
    .line 317
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 318
    .line 319
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-ne v2, v1, :cond_1

    .line 328
    .line 329
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 330
    .line 331
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NATURAL_MODE_TYPE"

    .line 336
    .line 337
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-ne v2, v1, :cond_2

    .line 342
    .line 343
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    .line 344
    .line 345
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    .line 350
    .line 351
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    const-string v3, "DDI"

    .line 356
    .line 357
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_3

    .line 362
    .line 363
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    .line 364
    .line 365
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v2, "A_BLF : "

    .line 368
    .line 369
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v2, " , COPR_IP : "

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 383
    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    const-string/jumbo v0, "sys.eyecomfortsolution.ecson"

    .line 395
    .line 396
    .line 397
    const-string v1, "false"

    .line 398
    .line 399
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    if-eqz v12, :cond_4

    .line 403
    .line 404
    const-string/jumbo v1, "true"

    .line 405
    .line 406
    .line 407
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    :cond_4
    const-string v0, "EyeComfortSolutionService Enabled"

    .line 411
    .line 412
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    return-void
.end method

.method public static sysfsWrite(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p0

    .line 34
    move-object p1, v1

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_2
    move-exception p0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_3
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final blue_light_filter_setting_bopr(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "screen_brightness"

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    int-to-float p1, p1

    .line 22
    const/high16 v1, 0x43800000    # 256.0f

    .line 23
    .line 24
    div-float v1, p1, v1

    .line 25
    .line 26
    float-to-double v3, v1

    .line 27
    const-wide v5, 0x40019999a0000000L    # 2.200000047683716

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 37
    .line 38
    mul-float/2addr v1, v0

    .line 39
    float-to-double v5, v1

    .line 40
    mul-double/2addr v3, v5

    .line 41
    double-to-float v1, v3

    .line 42
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 43
    .line 44
    add-float/2addr v3, v1

    .line 45
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "count : "

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, " , bopr_value : "

    .line 58
    .line 59
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ", platform_value : "

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " , app_weighting : "

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " , cal_value : "

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " , sum_value : "

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " , BOPR_MAX_VALUE : "

    .line 102
    .line 103
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 107
    .line 108
    const-string p2, "EyeComfortSolutionService"

    .line 109
    .line 110
    invoke-static {v3, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 114
    .line 115
    const/16 v1, 0x36

    .line 116
    .line 117
    if-ge v0, v1, :cond_1

    .line 118
    .line 119
    :goto_0
    if-ge v2, v1, :cond_1

    .line 120
    .line 121
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 122
    .line 123
    div-int/lit8 v3, p1, 0x36

    .line 124
    .line 125
    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 126
    .line 127
    add-int/lit8 v5, v4, 0x1

    .line 128
    .line 129
    mul-int/2addr v3, v5

    .line 130
    int-to-float v3, v3

    .line 131
    cmpl-float v0, v0, v3

    .line 132
    .line 133
    if-ltz v0, :cond_0

    .line 134
    .line 135
    if-ne v4, v2, :cond_0

    .line 136
    .line 137
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v3, "Change BLF step by B-opr, BLF dayIndex : ["

    .line 142
    .line 143
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, "] , boprIndex : ["

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 157
    .line 158
    const-string v4, "]"

    .line 159
    .line 160
    invoke-static {v0, v3, v4, p2}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 164
    .line 165
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 166
    .line 167
    add-int/2addr v0, v3

    .line 168
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 172
    .line 173
    .line 174
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 175
    .line 176
    add-int/2addr v0, v3

    .line 177
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 178
    .line 179
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public final blue_light_filter_setting_day(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string v4, "EE"

    .line 10
    .line 11
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    const-string v5, "HH"

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    const-string/jumbo v6, "mm"

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Ljava/util/Date;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v6, Ljava/util/Date;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v6, Ljava/util/Date;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    mul-int/lit8 v6, v6, 0x3c

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    add-int/2addr v7, v6

    .line 77
    const-string v8, "EyeComfortSolutionService"

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    if-eqz p1, :cond_21

    .line 81
    .line 82
    iget v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 83
    .line 84
    iget v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 85
    .line 86
    const/4 v12, 0x1

    .line 87
    if-lt v10, v11, :cond_1

    .line 88
    .line 89
    if-le v7, v11, :cond_0

    .line 90
    .line 91
    if-gt v7, v10, :cond_0

    .line 92
    .line 93
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 94
    .line 95
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 99
    .line 100
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    if-le v7, v10, :cond_2

    .line 104
    .line 105
    if-gt v7, v11, :cond_2

    .line 106
    .line 107
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 108
    .line 109
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 113
    .line 114
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 115
    .line 116
    :goto_0
    iget-boolean v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 117
    .line 118
    const-string v13, " , TimeValue : "

    .line 119
    .line 120
    const-string v14, " , Minute : "

    .line 121
    .line 122
    const-string v15, " , Hour : "

    .line 123
    .line 124
    const-string v6, "Week : "

    .line 125
    .line 126
    if-eqz v10, :cond_c

    .line 127
    .line 128
    invoke-static {v6, v3, v15, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    const-string v9, " , wakeup state, defaultBedTime : "

    .line 133
    .line 134
    invoke-static {v7, v5, v13, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 135
    .line 136
    .line 137
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 138
    .line 139
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v9, " , start sleep : "

    .line 143
    .line 144
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 148
    .line 149
    add-int/lit16 v9, v9, -0x168

    .line 150
    .line 151
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 162
    .line 163
    add-int/lit16 v10, v9, -0x168

    .line 164
    .line 165
    iget v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    .line 166
    .line 167
    iget-object v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 168
    .line 169
    if-gez v10, :cond_8

    .line 170
    .line 171
    add-int/lit16 v10, v9, 0x438

    .line 172
    .line 173
    move-object/from16 v16, v5

    .line 174
    .line 175
    if-lt v7, v10, :cond_4

    .line 176
    .line 177
    const/16 v5, 0x5a0

    .line 178
    .line 179
    if-ge v7, v5, :cond_4

    .line 180
    .line 181
    const/4 v5, 0x1

    .line 182
    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 183
    .line 184
    if-ne v7, v10, :cond_3

    .line 185
    .line 186
    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 187
    .line 188
    if-eqz v5, :cond_3

    .line 189
    .line 190
    const/4 v5, 0x2

    .line 191
    invoke-virtual {v11, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    .line 193
    .line 194
    int-to-long v9, v12

    .line 195
    add-long/2addr v1, v9

    .line 196
    invoke-virtual {v11, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 197
    .line 198
    .line 199
    :cond_3
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 200
    .line 201
    add-int/lit16 v1, v1, 0x438

    .line 202
    .line 203
    sub-int v1, v7, v1

    .line 204
    .line 205
    div-int/lit8 v1, v1, 0xa

    .line 206
    .line 207
    :goto_1
    const/4 v2, 0x1

    .line 208
    :goto_2
    add-int/2addr v1, v2

    .line 209
    goto :goto_5

    .line 210
    :cond_4
    const/4 v2, 0x1

    .line 211
    if-ltz v7, :cond_5

    .line 212
    .line 213
    if-ge v7, v9, :cond_5

    .line 214
    .line 215
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 216
    .line 217
    sub-int/2addr v9, v7

    .line 218
    rsub-int v1, v9, 0x168

    .line 219
    .line 220
    div-int/lit8 v1, v1, 0xa

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_5
    if-ne v7, v9, :cond_6

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 227
    .line 228
    const-string v2, "WakeupTime"

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_3
    const/16 v1, 0x24

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_6
    const/4 v1, 0x0

    .line 237
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 238
    .line 239
    :cond_7
    :goto_4
    const/4 v1, 0x0

    .line 240
    goto :goto_5

    .line 241
    :cond_8
    move-object/from16 v16, v5

    .line 242
    .line 243
    if-ltz v10, :cond_7

    .line 244
    .line 245
    if-lt v7, v10, :cond_a

    .line 246
    .line 247
    if-ge v7, v9, :cond_a

    .line 248
    .line 249
    const/4 v5, 0x1

    .line 250
    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 251
    .line 252
    if-ne v7, v10, :cond_9

    .line 253
    .line 254
    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 255
    .line 256
    if-eqz v5, :cond_9

    .line 257
    .line 258
    const/4 v5, 0x2

    .line 259
    invoke-virtual {v11, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    .line 261
    .line 262
    int-to-long v9, v12

    .line 263
    add-long/2addr v1, v9

    .line 264
    invoke-virtual {v11, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 265
    .line 266
    .line 267
    :cond_9
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 268
    .line 269
    add-int/lit16 v1, v1, -0x168

    .line 270
    .line 271
    sub-int v1, v7, v1

    .line 272
    .line 273
    div-int/lit8 v1, v1, 0xa

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_a
    if-ne v7, v9, :cond_b

    .line 277
    .line 278
    const/4 v1, 0x0

    .line 279
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 280
    .line 281
    const-string v2, "NextWakeupTime"

    .line 282
    .line 283
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_b
    const/4 v1, 0x0

    .line 288
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :goto_5
    const-string v2, "currentWakeupStep : "

    .line 292
    .line 293
    invoke-static {v1, v2, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_c
    move-object/from16 v16, v5

    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    :goto_6
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 301
    .line 302
    if-eqz v2, :cond_1c

    .line 303
    .line 304
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 305
    .line 306
    const-string v5, " , start wakeup : "

    .line 307
    .line 308
    const-string v9, " , sleep state, defaultWakeupTime : "

    .line 309
    .line 310
    const-string v10, "BedTime"

    .line 311
    .line 312
    if-eqz v2, :cond_13

    .line 313
    .line 314
    invoke-static {v6, v3, v15, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    move-object/from16 v11, v16

    .line 319
    .line 320
    invoke-static {v7, v11, v13, v9, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 321
    .line 322
    .line 323
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 324
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 332
    .line 333
    add-int/lit16 v3, v3, -0xb4

    .line 334
    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 346
    .line 347
    add-int/lit16 v3, v2, -0xb4

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    const-string/jumbo v5, "reset blue_light_filter_data_reset"

    .line 351
    .line 352
    .line 353
    if-gez v3, :cond_10

    .line 354
    .line 355
    add-int/lit16 v3, v2, 0x4ec

    .line 356
    .line 357
    if-lt v7, v3, :cond_d

    .line 358
    .line 359
    const/16 v6, 0x5a0

    .line 360
    .line 361
    if-ge v7, v6, :cond_d

    .line 362
    .line 363
    const/4 v6, 0x0

    .line 364
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 365
    .line 366
    sub-int/2addr v7, v3

    .line 367
    const/4 v3, 0x2

    .line 368
    div-int/2addr v7, v3

    .line 369
    :goto_7
    rsub-int/lit8 v9, v7, 0x59

    .line 370
    .line 371
    goto/16 :goto_c

    .line 372
    .line 373
    :cond_d
    const/4 v3, 0x2

    .line 374
    const/4 v6, 0x0

    .line 375
    if-ltz v7, :cond_e

    .line 376
    .line 377
    if-ge v7, v2, :cond_e

    .line 378
    .line 379
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 380
    .line 381
    sub-int/2addr v2, v7

    .line 382
    rsub-int v2, v2, 0xb4

    .line 383
    .line 384
    div-int/2addr v2, v3

    .line 385
    rsub-int/lit8 v9, v2, 0x59

    .line 386
    .line 387
    goto/16 :goto_c

    .line 388
    .line 389
    :cond_e
    if-ne v7, v2, :cond_f

    .line 390
    .line 391
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 395
    .line 396
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 397
    .line 398
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 399
    .line 400
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 401
    .line 402
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 403
    .line 404
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 405
    .line 406
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 407
    .line 408
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :goto_8
    move v9, v6

    .line 412
    goto/16 :goto_c

    .line 413
    .line 414
    :cond_f
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 415
    .line 416
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 417
    .line 418
    const/16 v2, 0x24

    .line 419
    .line 420
    if-ge v9, v2, :cond_1b

    .line 421
    .line 422
    :goto_9
    const/16 v9, 0x24

    .line 423
    .line 424
    goto/16 :goto_c

    .line 425
    .line 426
    :cond_10
    const/4 v6, 0x0

    .line 427
    if-ltz v3, :cond_1a

    .line 428
    .line 429
    if-lt v7, v3, :cond_11

    .line 430
    .line 431
    if-ge v7, v2, :cond_11

    .line 432
    .line 433
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 434
    .line 435
    sub-int/2addr v7, v3

    .line 436
    const/4 v2, 0x2

    .line 437
    div-int/2addr v7, v2

    .line 438
    goto :goto_7

    .line 439
    :cond_11
    if-ne v7, v2, :cond_12

    .line 440
    .line 441
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 445
    .line 446
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 447
    .line 448
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 449
    .line 450
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 451
    .line 452
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 453
    .line 454
    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 455
    .line 456
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 457
    .line 458
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto :goto_8

    .line 462
    :cond_12
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 463
    .line 464
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 465
    .line 466
    const/16 v2, 0x24

    .line 467
    .line 468
    if-ge v9, v2, :cond_1b

    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_13
    move-object/from16 v11, v16

    .line 472
    .line 473
    if-nez v2, :cond_1a

    .line 474
    .line 475
    invoke-static {v6, v3, v15, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-static {v7, v11, v13, v9, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 480
    .line 481
    .line 482
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 483
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 491
    .line 492
    add-int/lit16 v3, v3, -0xb4

    .line 493
    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 505
    .line 506
    add-int/lit16 v3, v2, -0xb4

    .line 507
    .line 508
    if-gez v3, :cond_17

    .line 509
    .line 510
    add-int/lit16 v3, v2, 0x4ec

    .line 511
    .line 512
    if-lt v7, v3, :cond_14

    .line 513
    .line 514
    const/16 v4, 0x5a0

    .line 515
    .line 516
    if-ge v7, v4, :cond_14

    .line 517
    .line 518
    const/4 v4, 0x0

    .line 519
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 520
    .line 521
    sub-int/2addr v7, v3

    .line 522
    div-int/lit8 v7, v7, 0x5

    .line 523
    .line 524
    :goto_a
    rsub-int/lit8 v9, v7, 0x23

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_14
    const/4 v4, 0x0

    .line 528
    if-ltz v7, :cond_15

    .line 529
    .line 530
    if-ge v7, v2, :cond_15

    .line 531
    .line 532
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 533
    .line 534
    sub-int/2addr v2, v7

    .line 535
    rsub-int v2, v2, 0xb4

    .line 536
    .line 537
    div-int/lit8 v2, v2, 0x5

    .line 538
    .line 539
    rsub-int/lit8 v9, v2, 0x23

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_15
    if-ne v7, v2, :cond_16

    .line 543
    .line 544
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 545
    .line 546
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :goto_b
    move v9, v4

    .line 550
    goto :goto_c

    .line 551
    :cond_16
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 552
    .line 553
    goto/16 :goto_9

    .line 554
    .line 555
    :cond_17
    const/4 v4, 0x0

    .line 556
    if-ltz v3, :cond_1a

    .line 557
    .line 558
    if-lt v7, v3, :cond_18

    .line 559
    .line 560
    if-ge v7, v2, :cond_18

    .line 561
    .line 562
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 563
    .line 564
    sub-int/2addr v7, v3

    .line 565
    div-int/lit8 v7, v7, 0x5

    .line 566
    .line 567
    goto :goto_a

    .line 568
    :cond_18
    if-ne v7, v2, :cond_19

    .line 569
    .line 570
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 571
    .line 572
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    goto :goto_b

    .line 576
    :cond_19
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 577
    .line 578
    goto/16 :goto_9

    .line 579
    .line 580
    :cond_1a
    const/4 v9, 0x0

    .line 581
    :cond_1b
    :goto_c
    const-string v2, "currentSleepStep : "

    .line 582
    .line 583
    invoke-static {v9, v2, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_1c
    const/4 v9, 0x0

    .line 588
    :goto_d
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 589
    .line 590
    const-string v3, "] , boprIndex : ["

    .line 591
    .line 592
    const-string v4, "Change BLF step by mCurrentStateWakeup, BLF dayIndex : ["

    .line 593
    .line 594
    const-string v5, "]"

    .line 595
    .line 596
    if-eqz v2, :cond_1d

    .line 597
    .line 598
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 599
    .line 600
    if-eq v2, v1, :cond_22

    .line 601
    .line 602
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 603
    .line 604
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 605
    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 620
    .line 621
    invoke-static {v1, v2, v5, v8}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 625
    .line 626
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 627
    .line 628
    add-int/2addr v1, v2

    .line 629
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 630
    .line 631
    const/4 v2, 0x1

    .line 632
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_e

    .line 636
    .line 637
    :cond_1d
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 638
    .line 639
    if-eqz v1, :cond_22

    .line 640
    .line 641
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 642
    .line 643
    if-eqz v1, :cond_20

    .line 644
    .line 645
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 646
    .line 647
    const/4 v2, -0x1

    .line 648
    if-ne v1, v2, :cond_1f

    .line 649
    .line 650
    const/16 v1, 0x24

    .line 651
    .line 652
    if-le v9, v1, :cond_1e

    .line 653
    .line 654
    move v9, v1

    .line 655
    :cond_1e
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 656
    .line 657
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 658
    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    const-string v2, "Change BLF step by mCurrentStateSleep_1, BLF totalIndex : ["

    .line 662
    .line 663
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 667
    .line 668
    invoke-static {v1, v2, v5, v8}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 672
    .line 673
    const/4 v2, 0x1

    .line 674
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 675
    .line 676
    .line 677
    :cond_1f
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 678
    .line 679
    if-eq v1, v9, :cond_22

    .line 680
    .line 681
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 682
    .line 683
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 684
    .line 685
    if-ge v9, v1, :cond_22

    .line 686
    .line 687
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 688
    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    const-string v2, "Change BLF step by mCurrentStateSleep_2, BLF totalIndex : ["

    .line 692
    .line 693
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 697
    .line 698
    invoke-static {v1, v2, v5, v8}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 702
    .line 703
    const/4 v2, 0x1

    .line 704
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 705
    .line 706
    .line 707
    goto :goto_e

    .line 708
    :cond_20
    if-nez v1, :cond_22

    .line 709
    .line 710
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 711
    .line 712
    if-eq v1, v9, :cond_22

    .line 713
    .line 714
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 715
    .line 716
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 717
    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 724
    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 732
    .line 733
    invoke-static {v1, v2, v5, v8}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 737
    .line 738
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 739
    .line 740
    add-int/2addr v1, v2

    .line 741
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 742
    .line 743
    const/4 v2, 0x1

    .line 744
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 745
    .line 746
    .line 747
    goto :goto_e

    .line 748
    :cond_21
    const/4 v1, -0x1

    .line 749
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 750
    .line 751
    const/4 v1, 0x0

    .line 752
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 753
    .line 754
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 755
    .line 756
    const-string/jumbo v2, "set ead offset to 0"

    .line 757
    .line 758
    .line 759
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 763
    .line 764
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 765
    .line 766
    if-nez v2, :cond_22

    .line 767
    .line 768
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 769
    .line 770
    if-eqz v2, :cond_22

    .line 771
    .line 772
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 773
    .line 774
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 775
    .line 776
    add-int/2addr v2, v3

    .line 777
    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 778
    .line 779
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 780
    .line 781
    .line 782
    :cond_22
    :goto_e
    return-void
.end method

.method public final setBlueLightFilterMode(IZ)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 6
    .line 7
    const-string v1, " , ead offset : "

    .line 8
    .line 9
    const-string v2, " + 11] = "

    .line 10
    .line 11
    const-string v3, " , targetIndex : ["

    .line 12
    .line 13
    const-string v4, "BLF Adaptive Mode Enable : "

    .line 14
    .line 15
    const-wide v5, 0x40b7700000000000L    # 6000.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-string v7, "EyeComfortSolutionService"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-wide v8, 0x403638e38e38e38eL    # 22.22222222222222

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    int-to-double v10, p1

    .line 30
    mul-double/2addr v10, v8

    .line 31
    sub-double/2addr v5, v10

    .line 32
    invoke-static {p1, v4, v3, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 43
    .line 44
    invoke-static {v0, v1, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-nez v0, :cond_1

    .line 49
    .line 50
    const-wide v8, 0x404bc71c71c71c72L    # 55.55555555555556

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    int-to-double v10, p1

    .line 56
    mul-double/2addr v10, v8

    .line 57
    sub-double/2addr v5, v10

    .line 58
    invoke-static {p1, v4, v3, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 69
    .line 70
    invoke-static {v0, v1, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const-string v1, "mDNIe"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v1, "mMdnieManager : "

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    add-int/lit8 v1, p1, 0xb

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeStep(I)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 115
    .line 116
    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method

.method public final updateNightDimSettings(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_c

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 13
    .line 14
    if-eqz v1, :cond_c

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 17
    .line 18
    const/16 v3, 0x4b

    .line 19
    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    if-eqz v1, :cond_8

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 25
    .line 26
    if-eqz v1, :cond_7

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    const/16 v1, 0xb

    .line 35
    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    if-gt p1, v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x26

    .line 41
    .line 42
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v4, 0x16

    .line 46
    .line 47
    if-le p1, v1, :cond_2

    .line 48
    .line 49
    if-gt p1, v4, :cond_2

    .line 50
    .line 51
    const/16 v1, 0x2c

    .line 52
    .line 53
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/16 v1, 0x22

    .line 57
    .line 58
    if-le p1, v4, :cond_3

    .line 59
    .line 60
    if-gt p1, v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x32

    .line 63
    .line 64
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/16 v4, 0x2d

    .line 68
    .line 69
    const/16 v5, 0x38

    .line 70
    .line 71
    if-le p1, v1, :cond_4

    .line 72
    .line 73
    if-gt p1, v4, :cond_4

    .line 74
    .line 75
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    if-le p1, v4, :cond_5

    .line 79
    .line 80
    if-gt p1, v5, :cond_5

    .line 81
    .line 82
    const/16 v1, 0x3e

    .line 83
    .line 84
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const/16 v1, 0x44

    .line 88
    .line 89
    if-le p1, v5, :cond_6

    .line 90
    .line 91
    if-gt p1, v1, :cond_6

    .line 92
    .line 93
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    if-le p1, v1, :cond_d

    .line 97
    .line 98
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 105
    .line 106
    if-nez v1, :cond_a

    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 109
    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_9
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 117
    .line 118
    if-eqz v1, :cond_b

    .line 119
    .line 120
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_b
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_c
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 127
    .line 128
    :cond_d
    :goto_1
    const-string/jumbo v1, "updateNightDimSettings index : "

    .line 129
    .line 130
    .line 131
    const-string v3, " , mNightDimFontConfigValue : "

    .line 132
    .line 133
    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 138
    .line 139
    const-string v4, "EyeComfortSolutionService"

    .line 140
    .line 141
    invoke-static {v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 145
    .line 146
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    .line 147
    .line 148
    if-eq v1, v3, :cond_e

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo v3, "updateConfiguration ("

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v3, ") -> ("

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 169
    .line 170
    const-string v5, ")"

    .line 171
    .line 172
    invoke-static {v1, v3, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 176
    .line 177
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    .line 178
    .line 179
    const-string v3, "enhanced_comfort_font_value"

    .line 180
    .line 181
    const/4 v5, -0x2

    .line 182
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 183
    .line 184
    .line 185
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v1, Landroid/os/Handler;

    .line 190
    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V

    .line 201
    .line 202
    .line 203
    const-wide/16 v5, 0x0

    .line 204
    .line 205
    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    .line 207
    .line 208
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    .line 209
    .line 210
    if-nez v0, :cond_19

    .line 211
    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 213
    .line 214
    const-string v1, "NIGHT_DIM Mode : 0 (CLUT Off setting)"

    .line 215
    .line 216
    const-string v3, "/sys/class/lcd/panel/night_dim"

    .line 217
    .line 218
    const-string v5, "/sys/class/lcd/panel1/night_dim"

    .line 219
    .line 220
    if-eqz v0, :cond_17

    .line 221
    .line 222
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 223
    .line 224
    if-eqz v0, :cond_17

    .line 225
    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 227
    .line 228
    const-string v6, "NIGHT_DIM Mode : 1 (CLUT On)"

    .line 229
    .line 230
    const/4 v7, 0x1

    .line 231
    if-eqz v0, :cond_12

    .line 232
    .line 233
    if-nez p1, :cond_10

    .line 234
    .line 235
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance p0, Ljava/io/File;

    .line 239
    .line 240
    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    if-eqz p0, :cond_f

    .line 248
    .line 249
    invoke-static {v2, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_f
    const-string p0, "NIGHT_DIM Mode : 0 (CLUT Off index)"

    .line 253
    .line 254
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_10
    invoke-static {v7, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance p0, Ljava/io/File;

    .line 262
    .line 263
    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-eqz p0, :cond_11

    .line 271
    .line 272
    invoke-static {v7, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_11
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_12
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 280
    .line 281
    if-nez p1, :cond_15

    .line 282
    .line 283
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 284
    .line 285
    if-eqz p0, :cond_13

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_13
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance p0, Ljava/io/File;

    .line 292
    .line 293
    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    if-eqz p0, :cond_14

    .line 301
    .line 302
    invoke-static {v2, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_14
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_15
    :goto_2
    invoke-static {v7, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance p0, Ljava/io/File;

    .line 313
    .line 314
    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-eqz p0, :cond_16

    .line 322
    .line 323
    invoke-static {v7, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_16
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_17
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance p0, Ljava/io/File;

    .line 334
    .line 335
    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    if-eqz p0, :cond_18

    .line 343
    .line 344
    invoke-static {v2, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_18
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :cond_19
    :goto_3
    return-void
.end method

.method public final updateSleepWakeupTime(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "currentRubinState"

    .line 2
    .line 3
    const-string v1, "isDeviceRubinSupported"

    .line 4
    .line 5
    const-string v2, "EyeComfortSolutionService"

    .line 6
    .line 7
    const-string/jumbo v3, "mRubinDataValid : "

    .line 8
    .line 9
    .line 10
    const-string v4, "O-Runestone currentRubinState : "

    .line 11
    .line 12
    const-string v5, "D-Runestone isDeviceRubinSupported : "

    .line 13
    .line 14
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    const-string v7, "HH"

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 23
    .line 24
    .line 25
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    const-string/jumbo v8, "mm"

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 35
    .line 36
    .line 37
    new-instance v8, Ljava/util/Date;

    .line 38
    .line 39
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance v8, Ljava/util/Date;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const-string v8, "content://com.samsung.android.rubin.state"

    .line 69
    .line 70
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const-string v9, "getRubinState"

    .line 75
    .line 76
    const-string v10, "com.samsung.android.bluelightfilter"

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    const/4 v9, 0x1

    .line 90
    if-eqz v8, :cond_0

    .line 91
    .line 92
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    if-eqz v8, :cond_0

    .line 97
    .line 98
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    :try_start_2
    const-string v1, "OK"

    .line 119
    .line 120
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    const-string v5, "isEnabledInSupportedApps"

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    :try_start_3
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    if-eqz v1, :cond_1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    move v9, v6

    .line 140
    :goto_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, " , isEnabledInSupportedApps : "

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :catch_0
    :cond_2
    move v9, v6

    .line 188
    :catch_1
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 189
    .line 190
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 191
    .line 192
    const-string v3, "EE"

    .line 193
    .line 194
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 195
    .line 196
    .line 197
    new-instance v4, Ljava/util/Date;

    .line 198
    .line 199
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v4, "Sun"

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    const/16 v4, 0x168

    .line 213
    .line 214
    const-string v5, "NextWakeupTime"

    .line 215
    .line 216
    const-string v7, "WakeupTime"

    .line 217
    .line 218
    const-string v8, "BedTime"

    .line 219
    .line 220
    const/4 v10, -0x1

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 224
    .line 225
    if-eq v0, v10, :cond_6

    .line 226
    .line 227
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 228
    .line 229
    if-eq v0, v10, :cond_6

    .line 230
    .line 231
    if-eqz v9, :cond_6

    .line 232
    .line 233
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_3

    .line 238
    .line 239
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 240
    .line 241
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :cond_3
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_4

    .line 250
    .line 251
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 252
    .line 253
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_5

    .line 262
    .line 263
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 264
    .line 265
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 266
    .line 267
    goto/16 :goto_3

    .line 268
    .line 269
    :cond_5
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 270
    .line 271
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 272
    .line 273
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 274
    .line 275
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 276
    .line 277
    goto/16 :goto_3

    .line 278
    .line 279
    :cond_6
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 280
    .line 281
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 286
    .line 287
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 288
    .line 289
    .line 290
    new-instance v11, Ljava/util/Date;

    .line 291
    .line 292
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const-string v11, "Mon"

    .line 300
    .line 301
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 308
    .line 309
    if-eq v0, v10, :cond_b

    .line 310
    .line 311
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 312
    .line 313
    if-eq v0, v10, :cond_b

    .line 314
    .line 315
    if-eqz v9, :cond_b

    .line 316
    .line 317
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_8

    .line 322
    .line 323
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 324
    .line 325
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :cond_8
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_9

    .line 334
    .line 335
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 336
    .line 337
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 338
    .line 339
    goto/16 :goto_3

    .line 340
    .line 341
    :cond_9
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_a

    .line 346
    .line 347
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 348
    .line 349
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 350
    .line 351
    goto/16 :goto_3

    .line 352
    .line 353
    :cond_a
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 354
    .line 355
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 356
    .line 357
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 358
    .line 359
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    :cond_b
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 364
    .line 365
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :cond_c
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 370
    .line 371
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 372
    .line 373
    .line 374
    new-instance v11, Ljava/util/Date;

    .line 375
    .line 376
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const-string v11, "Tue"

    .line 384
    .line 385
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_11

    .line 390
    .line 391
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 392
    .line 393
    if-eq v0, v10, :cond_10

    .line 394
    .line 395
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 396
    .line 397
    if-eq v0, v10, :cond_10

    .line 398
    .line 399
    if-eqz v9, :cond_10

    .line 400
    .line 401
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_d

    .line 406
    .line 407
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 408
    .line 409
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 410
    .line 411
    goto/16 :goto_3

    .line 412
    .line 413
    :cond_d
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_e

    .line 418
    .line 419
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 420
    .line 421
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_e
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_f

    .line 430
    .line 431
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 432
    .line 433
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 434
    .line 435
    goto/16 :goto_3

    .line 436
    .line 437
    :cond_f
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 438
    .line 439
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 440
    .line 441
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 442
    .line 443
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 444
    .line 445
    goto/16 :goto_3

    .line 446
    .line 447
    :cond_10
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 448
    .line 449
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 450
    .line 451
    goto/16 :goto_3

    .line 452
    .line 453
    :cond_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 454
    .line 455
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 456
    .line 457
    .line 458
    new-instance v11, Ljava/util/Date;

    .line 459
    .line 460
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    const-string v11, "Wed"

    .line 468
    .line 469
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_16

    .line 474
    .line 475
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 476
    .line 477
    if-eq v0, v10, :cond_15

    .line 478
    .line 479
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 480
    .line 481
    if-eq v0, v10, :cond_15

    .line 482
    .line 483
    if-eqz v9, :cond_15

    .line 484
    .line 485
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_12

    .line 490
    .line 491
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 492
    .line 493
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :cond_12
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-eqz v0, :cond_13

    .line 502
    .line 503
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 504
    .line 505
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :cond_13
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_14

    .line 514
    .line 515
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 516
    .line 517
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 518
    .line 519
    goto/16 :goto_3

    .line 520
    .line 521
    :cond_14
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 522
    .line 523
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 524
    .line 525
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 526
    .line 527
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 528
    .line 529
    goto/16 :goto_3

    .line 530
    .line 531
    :cond_15
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 532
    .line 533
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 534
    .line 535
    goto/16 :goto_3

    .line 536
    .line 537
    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 538
    .line 539
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 540
    .line 541
    .line 542
    new-instance v11, Ljava/util/Date;

    .line 543
    .line 544
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    const-string v11, "Thu"

    .line 552
    .line 553
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_1b

    .line 558
    .line 559
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 560
    .line 561
    if-eq v0, v10, :cond_1a

    .line 562
    .line 563
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 564
    .line 565
    if-eq v0, v10, :cond_1a

    .line 566
    .line 567
    if-eqz v9, :cond_1a

    .line 568
    .line 569
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_17

    .line 574
    .line 575
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 576
    .line 577
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 578
    .line 579
    goto/16 :goto_3

    .line 580
    .line 581
    :cond_17
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-eqz v0, :cond_18

    .line 586
    .line 587
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 588
    .line 589
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 590
    .line 591
    goto/16 :goto_3

    .line 592
    .line 593
    :cond_18
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-eqz v0, :cond_19

    .line 598
    .line 599
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 600
    .line 601
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 602
    .line 603
    goto/16 :goto_3

    .line 604
    .line 605
    :cond_19
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 606
    .line 607
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 608
    .line 609
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 610
    .line 611
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 612
    .line 613
    goto/16 :goto_3

    .line 614
    .line 615
    :cond_1a
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 616
    .line 617
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 618
    .line 619
    goto/16 :goto_3

    .line 620
    .line 621
    :cond_1b
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 622
    .line 623
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 624
    .line 625
    .line 626
    new-instance v11, Ljava/util/Date;

    .line 627
    .line 628
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    const-string v11, "Fri"

    .line 636
    .line 637
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_20

    .line 642
    .line 643
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 644
    .line 645
    if-eq v0, v10, :cond_1f

    .line 646
    .line 647
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 648
    .line 649
    if-eq v0, v10, :cond_1f

    .line 650
    .line 651
    if-eqz v9, :cond_1f

    .line 652
    .line 653
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-eqz v0, :cond_1c

    .line 658
    .line 659
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 660
    .line 661
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 662
    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    :cond_1c
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eqz v0, :cond_1d

    .line 670
    .line 671
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 672
    .line 673
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 674
    .line 675
    goto/16 :goto_3

    .line 676
    .line 677
    :cond_1d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-eqz v0, :cond_1e

    .line 682
    .line 683
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 684
    .line 685
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 686
    .line 687
    goto :goto_3

    .line 688
    :cond_1e
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 689
    .line 690
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 691
    .line 692
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 693
    .line 694
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 695
    .line 696
    goto :goto_3

    .line 697
    :cond_1f
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 698
    .line 699
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 700
    .line 701
    goto :goto_3

    .line 702
    :cond_20
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 703
    .line 704
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 705
    .line 706
    .line 707
    new-instance v1, Ljava/util/Date;

    .line 708
    .line 709
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    const-string v1, "Sat"

    .line 717
    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_25

    .line 723
    .line 724
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 725
    .line 726
    if-eq v0, v10, :cond_24

    .line 727
    .line 728
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 729
    .line 730
    if-eq v0, v10, :cond_24

    .line 731
    .line 732
    if-eqz v9, :cond_24

    .line 733
    .line 734
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-eqz v0, :cond_21

    .line 739
    .line 740
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 741
    .line 742
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 743
    .line 744
    goto :goto_3

    .line 745
    :cond_21
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-eqz v0, :cond_22

    .line 750
    .line 751
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 752
    .line 753
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 754
    .line 755
    goto :goto_3

    .line 756
    :cond_22
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v0

    .line 760
    if-eqz v0, :cond_23

    .line 761
    .line 762
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 763
    .line 764
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 765
    .line 766
    goto :goto_3

    .line 767
    :cond_23
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 768
    .line 769
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 770
    .line 771
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 772
    .line 773
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 774
    .line 775
    goto :goto_3

    .line 776
    :cond_24
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 777
    .line 778
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 779
    .line 780
    :cond_25
    :goto_3
    const-string/jumbo v0, "updateSleepWakeupTime. type : "

    .line 781
    .line 782
    .line 783
    const-string v1, " , defaultBedTime : "

    .line 784
    .line 785
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 790
    .line 791
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    const-string v0, " , defaultWakeupTime : "

    .line 795
    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 800
    .line 801
    invoke-static {p1, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 802
    .line 803
    .line 804
    return-void
.end method
