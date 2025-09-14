.class public final Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field public static final DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field static final KEY_ADVERTISE_IS_ENABLED:Ljava/lang/String; = "advertise_is_enabled"

.field static final KEY_DEFER_FULL_BACKUP:Ljava/lang/String; = "defer_full_backup"

.field static final KEY_DEFER_KEYVALUE_BACKUP:Ljava/lang/String; = "defer_keyvalue_backup"

.field static final KEY_DISABLE_ANIMATION:Ljava/lang/String; = "disable_animation"

.field static final KEY_DISABLE_AOD:Ljava/lang/String; = "disable_aod"

.field static final KEY_DISABLE_LAUNCH_BOOST:Ljava/lang/String; = "disable_launch_boost"

.field static final KEY_DISABLE_OPTIONAL_SENSORS:Ljava/lang/String; = "disable_optional_sensors"

.field static final KEY_DISABLE_VIBRATION:Ljava/lang/String; = "disable_vibration"

.field static final KEY_ENABLE_BRIGHTNESS_ADJUSTMENT:Ljava/lang/String; = "enable_brightness_adjustment"

.field static final KEY_ENABLE_DATASAVER:Ljava/lang/String; = "enable_datasaver"

.field static final KEY_ENABLE_FIREWALL:Ljava/lang/String; = "enable_firewall"

.field static final KEY_ENABLE_NIGHT_MODE:Ljava/lang/String; = "enable_night_mode"

.field static final KEY_ENABLE_QUICK_DOZE:Ljava/lang/String; = "enable_quick_doze"

.field static final KEY_FORCE_ALL_APPS_STANDBY:Ljava/lang/String; = "force_all_apps_standby"

.field static final KEY_FORCE_BACKGROUND_CHECK:Ljava/lang/String; = "force_background_check"

.field static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field static final KEY_SOUNDTRIGGER_MODE:Ljava/lang/String; = "soundtrigger_mode"

.field static final OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;


# instance fields
.field public final DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field final mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

.field public mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field final mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public mDeviceSpecificSettings:Ljava/lang/String;

.field public mDeviceSpecificSettingsSource:Ljava/lang/String;

.field public mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public mEventLogKeys:Ljava/lang/String;

.field public mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public final mHandler:Landroid/os/Handler;

.field public mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mOnProjectionStateChangedListener:Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;

.field public mPolicyLevel:I

.field public mSettings:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v19, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 2
    .line 3
    move-object/from16 v0, v19

    .line 4
    .line 5
    const/16 v17, 0x0

    .line 6
    .line 7
    const/16 v18, 0x0

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    const/4 v15, 0x0

    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    invoke-direct/range {v0 .. v18}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    .line 28
    .line 29
    .line 30
    sput-object v19, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 31
    .line 32
    sput-object v19, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 11
    .line 12
    const-string v2, "accessibility"

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 20
    .line 21
    const-string v2, "automotiveProjection"

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 27
    .line 28
    sget-object v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 33
    .line 34
    sget-object v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mOnProjectionStateChangedListener:Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 54
    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    move-object/from16 v1, p2

    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    .line 75
    move-object/from16 v2, p3

    .line 76
    .line 77
    iput-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v12, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 84
    .line 85
    move-object v2, v12

    .line 86
    const v3, 0x1110048

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const v3, 0x1110049

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const v3, 0x111004a

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    const v3, 0x111004b

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const v3, 0x111004c

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    const v3, 0x111004d

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    const v3, 0x111004e

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    const v3, 0x1110050

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    const v3, 0x1110051

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    const v3, 0x1110053

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    const v3, 0x1110054

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 160
    .line 161
    .line 162
    move-result v17

    .line 163
    const v3, 0x1110055

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 167
    .line 168
    .line 169
    move-result v18

    .line 170
    const v3, 0x10e0041

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 174
    .line 175
    .line 176
    move-result v20

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v19, 0x1

    .line 179
    .line 180
    const v3, 0x3f666666    # 0.9f

    .line 181
    .line 182
    .line 183
    const/4 v4, 0x1

    .line 184
    const/4 v1, 0x1

    .line 185
    move-object/from16 v21, v12

    .line 186
    .line 187
    move v12, v1

    .line 188
    invoke-direct/range {v2 .. v20}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    .line 189
    .line 190
    .line 191
    move-object/from16 v1, v21

    .line 192
    .line 193
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 194
    .line 195
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 196
    .line 197
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 198
    .line 199
    return-void
.end method

.method public static dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Policy \'"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "\'"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "advertise_is_enabled="

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 37
    .line 38
    const-string v1, "disable_vibration="

    .line 39
    .line 40
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 45
    .line 46
    const-string v1, "disable_animation="

    .line 47
    .line 48
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 53
    .line 54
    const-string v1, "defer_full_backup="

    .line 55
    .line 56
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 61
    .line 62
    const-string v1, "defer_keyvalue_backup="

    .line 63
    .line 64
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 69
    .line 70
    const-string v1, "enable_firewall="

    .line 71
    .line 72
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 77
    .line 78
    const-string v1, "enable_datasaver="

    .line 79
    .line 80
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 85
    .line 86
    const-string v1, "disable_launch_boost="

    .line 87
    .line 88
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 93
    .line 94
    const-string v1, "enable_brightness_adjustment="

    .line 95
    .line 96
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 101
    .line 102
    const-string v1, "adjust_brightness_factor="

    .line 103
    .line 104
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v0, "location_mode="

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "force_all_apps_standby="

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 147
    .line 148
    const-string v1, "force_background_check="

    .line 149
    .line 150
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 155
    .line 156
    const-string v1, "disable_optional_sensors="

    .line 157
    .line 158
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 163
    .line 164
    const-string v1, "disable_aod="

    .line 165
    .line 166
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 171
    .line 172
    const-string/jumbo v1, "soundtrigger_mode="

    .line 173
    .line 174
    .line 175
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v0, "enable_quick_doze="

    .line 194
    .line 195
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-boolean v0, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 199
    .line 200
    const-string v1, "enable_night_mode="

    .line 201
    .line 202
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-boolean p2, p2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 219
    .line 220
    .line 221
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "value: "

    .line 2
    .line 3
    .line 4
    const-string v1, "Settings: "

    .line 5
    .line 6
    const-string/jumbo v2, "value: "

    .line 7
    .line 8
    .line 9
    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    const-string v4, "  "

    .line 12
    .line 13
    invoke-direct {v3, p1, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 28
    .line 29
    .line 30
    const-string v4, "Battery saver policy (*NOTE* they only apply when battery saver is ON):"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 36
    .line 37
    .line 38
    const-string v4, "Settings: battery_saver_constants"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 44
    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 64
    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 104
    .line 105
    .line 106
    const-string v0, "DeviceConfig: battery_saver"

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_0

    .line 125
    .line 126
    const-string v0, "N/A"

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_1

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v2, ": "

    .line 155
    .line 156
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    invoke-virtual {v2, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 171
    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v1, "mAccessibilityEnabled="

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 184
    .line 185
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v1, "mAutomotiveProjectionActive="

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 210
    .line 211
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string/jumbo v1, "mPolicyLevel="

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v0, "default full"

    .line 249
    .line 250
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 251
    .line 252
    invoke-static {v3, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "current full"

    .line 256
    .line 257
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 258
    .line 259
    invoke-static {v3, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 260
    .line 261
    .line 262
    const-string v0, "default adaptive"

    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 265
    .line 266
    invoke-static {v3, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 267
    .line 268
    .line 269
    const-string v0, "current adaptive"

    .line 270
    .line 271
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 272
    .line 273
    invoke-static {v3, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 274
    .line 275
    .line 276
    const-string v0, "effective"

    .line 277
    .line 278
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 279
    .line 280
    invoke-static {v3, v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 284
    .line 285
    .line 286
    monitor-exit p1

    .line 287
    return-void

    .line 288
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    throw p0
.end method

.method public final getBatterySaverPolicy(I)Landroid/os/PowerSaveState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 5
    .line 6
    new-instance v1, Landroid/os/PowerSaveState$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/PowerSaveState$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    monitor-exit v0

    .line 48
    return-object p0

    .line 49
    :pswitch_2
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    monitor-exit v0

    .line 60
    return-object p0

    .line 61
    :pswitch_3
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    monitor-exit v0

    .line 72
    return-object p0

    .line 73
    :pswitch_4
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 74
    .line 75
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    monitor-exit v0

    .line 84
    return-object p0

    .line 85
    :pswitch_5
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 86
    .line 87
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    monitor-exit v0

    .line 96
    return-object p0

    .line 97
    :pswitch_6
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    monitor-exit v0

    .line 108
    return-object p0

    .line 109
    :pswitch_7
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 110
    .line 111
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    monitor-exit v0

    .line 120
    return-object p0

    .line 121
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 122
    .line 123
    if-nez p1, :cond_1

    .line 124
    .line 125
    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 126
    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move v2, v3

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Landroid/os/PowerSaveState$Builder;->setSoundTriggerMode(I)Landroid/os/PowerSaveState$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    monitor-exit v0

    .line 146
    return-object p0

    .line 147
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 148
    .line 149
    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    monitor-exit v0

    .line 164
    return-object p0

    .line 165
    :pswitch_a
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 166
    .line 167
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    monitor-exit v0

    .line 176
    return-object p0

    .line 177
    :pswitch_b
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 178
    .line 179
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    monitor-exit v0

    .line 188
    return-object p0

    .line 189
    :pswitch_c
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 190
    .line 191
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    monitor-exit v0

    .line 200
    return-object p0

    .line 201
    :pswitch_d
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 202
    .line 203
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    monitor-exit v0

    .line 212
    return-object p0

    .line 213
    :pswitch_e
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 214
    .line 215
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    monitor-exit v0

    .line 224
    return-object p0

    .line 225
    :pswitch_f
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 226
    .line 227
    if-nez p1, :cond_3

    .line 228
    .line 229
    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 230
    .line 231
    if-eqz p1, :cond_2

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_2
    move v2, v3

    .line 235
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 240
    .line 241
    invoke-virtual {p1, p0}, Landroid/os/PowerSaveState$Builder;->setLocationMode(I)Landroid/os/PowerSaveState$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    monitor-exit v0

    .line 250
    return-object p0

    .line 251
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    throw p0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceSpecificConfigResId()I
    .locals 0

    .line 1
    const p0, 0x10402e5

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public invalidatePowerSaveModeCaches()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final maybeNotifyListenersOfPolicyChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    new-array v2, v2, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 22
    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v2, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final maybeUpdateDefaultFullPolicy(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    xor-int/2addr v0, v2

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 23
    .line 24
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v0, v3, :cond_0

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 31
    .line 32
    :cond_1
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    const-string p1, "[api] refreshSettings: deviceSpecificSetting: "

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    const-string v0, "battery_saver_constants"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "battery_saver_device_specific_constants"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "battery_saver_device_specific_constants"

    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string/jumbo v2, "null"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getDeviceSpecificConfigResId()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "(overlay)"

    .line 51
    .line 52
    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 53
    .line 54
    :cond_1
    const-string v2, "BatterySaverPolicy"

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " ("

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, ")"

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    monitor-exit p2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeNotifyListenersOfPolicyChange()V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 9

    .line 1
    const-string v0, "battery_saver"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v3, v2

    .line 25
    move-object v4, v3

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/lang/String;

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v6, "_adaptive"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    const-string v4, ""

    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 56
    .line 57
    const-string v7, "_adaptive"

    .line 58
    .line 59
    sget-object v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 60
    .line 61
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    if-nez v3, :cond_0

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 75
    .line 76
    iget-object v7, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 77
    .line 78
    invoke-static {v3, v5, v6, v2, v7}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeUpdateDefaultFullPolicy(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move p1, v1

    .line 91
    :goto_1
    if-eqz v4, :cond_6

    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_6

    .line 100
    .line 101
    iput-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 102
    .line 103
    iput-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    if-ne v2, v3, :cond_5

    .line 109
    .line 110
    move v1, v3

    .line 111
    :cond_5
    or-int/2addr p1, v1

    .line 112
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 113
    .line 114
    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeNotifyListenersOfPolicyChange()V

    .line 119
    .line 120
    .line 121
    :cond_7
    return-void

    .line 122
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw p0
.end method

.method public final setPolicyLevel(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "setPolicyLevel invalid level given: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return v3

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x2

    .line 17
    if-ne v2, v4, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 20
    .line 21
    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 22
    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    if-eq p1, v2, :cond_2

    .line 27
    .line 28
    if-eq p1, v4, :cond_2

    .line 29
    .line 30
    const-string p0, "BatterySaverPolicy"

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget v0, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return v3

    .line 51
    :cond_2
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 54
    .line 55
    .line 56
    monitor-exit v1

    .line 57
    return v2

    .line 58
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final shouldAdvertiseIsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 5
    .line 6
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeUpdateDefaultFullPolicy(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 45
    .line 46
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    const-string v2, "_adaptive"

    .line 51
    .line 52
    invoke-static {v1, v1, p2, v2, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 57
    .line 58
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    move p1, v1

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 73
    .line 74
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 77
    .line 78
    .line 79
    return p1
.end method

.method public final updatePolicyDependenciesLocked()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 18
    .line 19
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->invalidatePowerSaveModeCaches()V

    .line 20
    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    if-eq v3, v4, :cond_2

    .line 36
    .line 37
    :goto_1
    move/from16 v22, v4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_2
    new-instance v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 44
    .line 45
    iget v6, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 46
    .line 47
    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    iget-object v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 53
    .line 54
    invoke-static {v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    move v14, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v14, v5

    .line 63
    :goto_3
    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    iget-object v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 68
    .line 69
    invoke-static {v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_4

    .line 74
    .line 75
    move/from16 v18, v2

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move/from16 v18, v5

    .line 79
    .line 80
    :goto_4
    iget-boolean v2, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 81
    .line 82
    move/from16 v21, v2

    .line 83
    .line 84
    iget v2, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 85
    .line 86
    move/from16 v23, v2

    .line 87
    .line 88
    iget-boolean v7, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 89
    .line 90
    iget-boolean v8, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 91
    .line 92
    iget-boolean v9, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 93
    .line 94
    iget-boolean v10, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 95
    .line 96
    iget-boolean v11, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 97
    .line 98
    iget-boolean v12, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 99
    .line 100
    iget-boolean v13, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 101
    .line 102
    iget-boolean v15, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 103
    .line 104
    iget-boolean v2, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 105
    .line 106
    move/from16 v16, v2

    .line 107
    .line 108
    iget-boolean v2, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 109
    .line 110
    move/from16 v17, v2

    .line 111
    .line 112
    iget-boolean v2, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 113
    .line 114
    move/from16 v19, v2

    .line 115
    .line 116
    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 117
    .line 118
    move/from16 v20, v1

    .line 119
    .line 120
    move-object v5, v3

    .line 121
    invoke-direct/range {v5 .. v23}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    .line 122
    .line 123
    .line 124
    iput-object v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 132
    .line 133
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 134
    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    const-string v2, "A"

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 143
    .line 144
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 145
    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    const-string v2, "B"

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_6
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 154
    .line 155
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 156
    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    const-string/jumbo v2, "v"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_7
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 166
    .line 167
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 168
    .line 169
    if-eqz v2, :cond_8

    .line 170
    .line 171
    const-string v2, "a"

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_8
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 177
    .line 178
    iget v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 184
    .line 185
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 186
    .line 187
    if-eqz v2, :cond_9

    .line 188
    .line 189
    const-string v2, "F"

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    :cond_9
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 195
    .line 196
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 197
    .line 198
    if-eqz v2, :cond_a

    .line 199
    .line 200
    const-string v2, "K"

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    :cond_a
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 206
    .line 207
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 208
    .line 209
    if-eqz v2, :cond_b

    .line 210
    .line 211
    const-string v2, "f"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    :cond_b
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 217
    .line 218
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 219
    .line 220
    if-eqz v2, :cond_c

    .line 221
    .line 222
    const-string v2, "d"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_c
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 228
    .line 229
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 230
    .line 231
    if-eqz v2, :cond_d

    .line 232
    .line 233
    const-string v2, "b"

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_d
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 239
    .line 240
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 241
    .line 242
    if-eqz v2, :cond_e

    .line 243
    .line 244
    const-string v2, "l"

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_e
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 250
    .line 251
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 252
    .line 253
    if-eqz v2, :cond_f

    .line 254
    .line 255
    const-string v2, "S"

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    :cond_f
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 261
    .line 262
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 263
    .line 264
    if-eqz v2, :cond_10

    .line 265
    .line 266
    const-string/jumbo v2, "o"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    :cond_10
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 273
    .line 274
    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 275
    .line 276
    if-eqz v2, :cond_11

    .line 277
    .line 278
    const-string/jumbo v2, "q"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    :cond_11
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 285
    .line 286
    iget v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    .line 296
    .line 297
    return-void
.end method
