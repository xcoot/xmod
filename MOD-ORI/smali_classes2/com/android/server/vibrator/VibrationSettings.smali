.class public final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

.field public static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mBatterySaverMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field public final mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

.field public final mFallbackEffects:Landroid/util/SparseArray;

.field public mHapticFeedbackEnabled:Z

.field public mKeyboardVibrationOn:Z

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mNotificationManager:Landroid/app/INotificationManager;

.field public mOnWirelessCharger:Z

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRingerMode:I

.field final mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public final mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

.field final mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

.field public mVibrateInputDevices:Z

.field public mVibrateOn:Z

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const/16 v2, 0x31

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/16 v2, 0x41

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    const/16 v2, 0x32

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    const/16 v2, 0x22

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    move-object v2, v1

    .line 40
    move-object v3, v8

    .line 41
    move-object v5, v9

    .line 42
    move-object v6, v10

    .line 43
    move-object v7, v11

    .line 44
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 58
    .line 59
    filled-new-array {v1, v8, v9, v11, v10}, [Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 71
    .line 72
    new-instance v0, Ljava/util/HashSet;

    .line 73
    .line 74
    const/16 v1, 0x12

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/16 v2, 0x42

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    filled-new-array {v1, v2, v11, v10}, [Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 98
    .line 99
    new-instance v0, Ljava/util/HashSet;

    .line 100
    .line 101
    const/16 v1, 0x9

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x2

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    .line 124
    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    .line 126
    .line 127
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 133
    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 28
    .line 29
    new-instance p3, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 30
    .line 31
    invoke-direct {p3, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 35
    .line 36
    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    .line 42
    .line 43
    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 44
    .line 45
    invoke-direct {p2}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 49
    .line 50
    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    .line 56
    .line 57
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const v0, 0x10701d0

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const v1, 0x10700f1

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const v2, 0x107011b

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const v3, 0x10700b7

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    new-instance v3, Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 p2, 0x1

    .line 131
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    const/4 p2, 0x2

    .line 135
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const/4 v0, 0x5

    .line 139
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const/16 v0, 0x15

    .line 143
    .line 144
    invoke-static {p2, v4}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance p2, Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 152
    .line 153
    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/vibrator/VibrationCustomSettings;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 154
    .line 155
    .line 156
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 157
    .line 158
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationManager:Landroid/app/INotificationManager;

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public static createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v1, p0

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    move v2, p1

    .line 15
    :goto_0
    array-length v3, p0

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    aget v3, p0, v2

    .line 19
    .line 20
    int-to-long v3, v3

    .line 21
    aput-wide v3, v1, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 27
    .line 28
    array-length p0, v1

    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    array-length p0, v1

    .line 33
    const/4 v0, 0x1

    .line 34
    const/4 v2, -0x1

    .line 35
    if-ne p0, v0, :cond_3

    .line 36
    .line 37
    aget-wide p0, v1, p1

    .line 38
    .line 39
    invoke-static {p0, p1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string v0, "UNKNOWN INTENSITY "

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "HIGH"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p0, "MEDIUM"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string p0, "LOW"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const-string p0, "OFF"

    .line 29
    .line 30
    :goto_0
    return-object p0
.end method

.method public static toIntensity(II)I
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-le p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return p0

    .line 8
    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "processStateCache size = "

    const-string/jumbo v1, "onWirelessCharger = "

    const-string/jumbo v2, "ringerMode = "

    const-string v3, "batterySaverMode = "

    const-string/jumbo v4, "vibrateInputDevices = "

    const-string v5, "keyboardVibrationOn = "

    const-string/jumbo v6, "vibrateOn = "

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2
    :try_start_0
    const-string v8, "VibrationSettings:"

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mKeyboardVibrationOn:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", default: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 6
    invoke-virtual {v5}, Landroid/os/vibrator/VibrationConfig;->isDefaultKeyboardVibrationEnabled()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo v2, "normal"

    goto :goto_0

    .line 13
    :cond_1
    const-string/jumbo v2, "vibrate"

    goto :goto_0

    .line 14
    :cond_2
    const-string/jumbo v2, "silent"

    .line 15
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 18
    const-string v0, "VibrationIntensities:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 21
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", default: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    .line 26
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 29
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V

    .line 30
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 31
    monitor-exit v7

    return-void

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-wide v2, 0x10800000018L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 34
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mKeyboardVibrationOn:Z

    const-wide v2, 0x10800000019L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 35
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/16 v1, 0x11

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000012L

    .line 37
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 38
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000013L

    .line 39
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x32

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000016L

    .line 41
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000017L

    .line 43
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x12

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000007L

    .line 45
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 46
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000008L

    .line 47
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x13

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000014L

    .line 49
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 50
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000015L

    .line 51
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x31

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000009L

    .line 53
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x1050000000aL

    .line 55
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x21

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x1050000000bL

    .line 57
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 58
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p0

    const-wide v1, 0x1050000000cL

    .line 59
    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentIntensity(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    monitor-exit v1

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getCurrentMagnitude(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x11

    .line 7
    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0x12

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    const/16 v0, 0x21

    .line 15
    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/16 v0, 0x22

    .line 19
    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/16 v0, 0x31

    .line 23
    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x32

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 46
    .line 47
    :goto_0
    return p0
.end method

.method public final loadSystemSetting(IILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final notifyListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final onSystemReady()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v3, Landroid/media/AudioManager;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/media/AudioManager;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v4

    .line 28
    :try_start_0
    iput-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 29
    .line 30
    iput-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    .line 32
    iput v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 33
    .line 34
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x3

    .line 37
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 42
    .line 43
    const/4 v6, -0x1

    .line 44
    invoke-interface {v4, v5, v3, v6, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    .line 52
    .line 53
    const-string v6, "VibrationSettings"

    .line 54
    .line 55
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    .line 57
    .line 58
    :catch_1
    new-instance v4, Lcom/android/server/vibrator/VibrationSettings$1;

    .line 59
    .line 60
    invoke-direct {v4, v0}, Lcom/android/server/vibrator/VibrationSettings$1;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 67
    .line 68
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    .line 71
    .line 72
    const/4 v6, 0x2

    .line 73
    invoke-virtual {v4, v5, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "vibrate_input_devices"

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "vibrate_on"

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "haptic_feedback_enabled"

    .line 97
    .line 98
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "alarm_vibration_intensity"

    .line 106
    .line 107
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "haptic_feedback_intensity"

    .line 115
    .line 116
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "hardware_haptic_feedback_intensity"

    .line 124
    .line 125
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v1, "media_vibration_intensity"

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v1, "notification_vibration_intensity"

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v1, "ring_vibration_intensity"

    .line 153
    .line 154
    .line 155
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "keyboard_vibration_enabled"

    .line 163
    .line 164
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    const/4 v4, 0x1

    .line 178
    const/4 v5, 0x0

    .line 179
    if-eqz v1, :cond_1

    .line 180
    .line 181
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    new-instance v7, Lcom/android/server/vibrator/VibrationSettings$2;

    .line 184
    .line 185
    invoke-direct {v7, v0}, Lcom/android/server/vibrator/VibrationSettings$2;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 186
    .line 187
    .line 188
    new-instance v8, Landroid/content/IntentFilter;

    .line 189
    .line 190
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    .line 191
    .line 192
    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 v9, 0x4

    .line 196
    invoke-virtual {v1, v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_1

    .line 201
    .line 202
    const-string/jumbo v7, "plugged"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget-object v7, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 210
    .line 211
    monitor-enter v7

    .line 212
    if-ne v1, v9, :cond_0

    .line 213
    .line 214
    move v1, v4

    .line 215
    goto :goto_0

    .line 216
    :cond_0
    move v1, v5

    .line 217
    :goto_0
    :try_start_3
    iput-boolean v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 218
    .line 219
    monitor-exit v7

    .line 220
    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    throw v0

    .line 224
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 225
    .line 226
    iget-object v7, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    const-class v8, Landroid/media/AudioManager;

    .line 229
    .line 230
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    check-cast v7, Landroid/media/AudioManager;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    .line 237
    .line 238
    monitor-enter v1

    .line 239
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v7, "VIB_FEEDBACK_MAGNITUDE"

    .line 246
    .line 247
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v1, v7}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 252
    .line 253
    .line 254
    const-string v7, "hardware_haptic_feedback_intensity"

    .line 255
    .line 256
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v1, v7}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 261
    .line 262
    .line 263
    const-string v7, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 264
    .line 265
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v1, v7}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 270
    .line 271
    .line 272
    const-string v7, "VIB_RECVCALL_MAGNITUDE"

    .line 273
    .line 274
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v1, v7}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 282
    .line 283
    iget-object v7, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 284
    .line 285
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    iput v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 290
    .line 291
    iget-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    const v9, 0x107017d

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    iget-object v9, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 305
    .line 306
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    const v10, 0x107017e

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 318
    .line 319
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    const v11, 0x107017f

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    iget-object v11, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 331
    .line 332
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    const v12, 0x1070180

    .line 337
    .line 338
    .line 339
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    iget-object v12, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    const v13, 0x1070182

    .line 350
    .line 351
    .line 352
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    iget-object v13, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    .line 360
    .line 361
    move-result-object v13

    .line 362
    const v14, 0x107017c

    .line 363
    .line 364
    .line 365
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    if-eqz v14, :cond_2

    .line 374
    .line 375
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 380
    .line 381
    invoke-virtual {v2, v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(I)[I

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    iget-object v14, v14, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 390
    .line 391
    invoke-virtual {v14, v4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(I)[I

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    goto :goto_2

    .line 396
    :cond_2
    move-object v14, v2

    .line 397
    :goto_2
    sget-boolean v15, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 398
    .line 399
    const-string v5, "VibratorManagerService"

    .line 400
    .line 401
    if-eqz v15, :cond_3

    .line 402
    .line 403
    iget v3, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 404
    .line 405
    if-ne v3, v4, :cond_3

    .line 406
    .line 407
    if-eqz v14, :cond_4

    .line 408
    .line 409
    if-eqz v13, :cond_4

    .line 410
    .line 411
    array-length v3, v14

    .line 412
    array-length v6, v13

    .line 413
    if-ne v3, v6, :cond_4

    .line 414
    .line 415
    const-string v3, "HAL DC touch amplitude list is used!!"

    .line 416
    .line 417
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    :goto_3
    move v3, v4

    .line 421
    goto :goto_4

    .line 422
    :cond_3
    if-eqz v2, :cond_4

    .line 423
    .line 424
    if-eqz v14, :cond_4

    .line 425
    .line 426
    const-string v3, "HAL amplitude list is used!!"

    .line 427
    .line 428
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    goto :goto_3

    .line 432
    :cond_4
    const/4 v3, 0x0

    .line 433
    :goto_4
    iget v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 434
    .line 435
    if-ne v6, v4, :cond_7

    .line 436
    .line 437
    if-eqz v15, :cond_16

    .line 438
    .line 439
    if-eqz v3, :cond_5

    .line 440
    .line 441
    move-object v8, v2

    .line 442
    :cond_5
    iput-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 443
    .line 444
    if-eqz v3, :cond_6

    .line 445
    .line 446
    move-object v13, v14

    .line 447
    :cond_6
    iput-object v13, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 448
    .line 449
    goto/16 :goto_7

    .line 450
    .line 451
    :cond_7
    const/4 v13, 0x2

    .line 452
    if-ne v6, v13, :cond_9

    .line 453
    .line 454
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 455
    .line 456
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 457
    .line 458
    if-eqz v3, :cond_8

    .line 459
    .line 460
    move-object v8, v2

    .line 461
    :cond_8
    iput-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 462
    .line 463
    iput-object v14, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_9
    const/4 v13, 0x3

    .line 467
    if-ne v6, v13, :cond_c

    .line 468
    .line 469
    if-eqz v3, :cond_a

    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_a
    move-object v2, v12

    .line 473
    :goto_5
    iput-object v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 474
    .line 475
    if-eqz v3, :cond_b

    .line 476
    .line 477
    move-object v12, v14

    .line 478
    :cond_b
    iput-object v12, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 479
    .line 480
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 481
    .line 482
    const/4 v2, 0x0

    .line 483
    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 484
    .line 485
    goto :goto_7

    .line 486
    :cond_c
    const/4 v12, 0x5

    .line 487
    if-ne v6, v12, :cond_f

    .line 488
    .line 489
    if-eqz v3, :cond_d

    .line 490
    .line 491
    move-object v9, v2

    .line 492
    :cond_d
    iput-object v9, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 493
    .line 494
    if-eqz v3, :cond_e

    .line 495
    .line 496
    move-object v11, v14

    .line 497
    :cond_e
    iput-object v11, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 498
    .line 499
    invoke-static {v4}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 500
    .line 501
    .line 502
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 503
    .line 504
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 505
    .line 506
    goto :goto_7

    .line 507
    :cond_f
    const/4 v11, 0x6

    .line 508
    if-eq v6, v11, :cond_14

    .line 509
    .line 510
    const/4 v11, 0x7

    .line 511
    if-ne v6, v11, :cond_10

    .line 512
    .line 513
    goto :goto_6

    .line 514
    :cond_10
    const/16 v9, 0x8

    .line 515
    .line 516
    if-eq v6, v9, :cond_11

    .line 517
    .line 518
    const/16 v9, 0x9

    .line 519
    .line 520
    if-ne v6, v9, :cond_16

    .line 521
    .line 522
    :cond_11
    if-eqz v3, :cond_12

    .line 523
    .line 524
    move-object v8, v2

    .line 525
    :cond_12
    iput-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 526
    .line 527
    if-eqz v3, :cond_13

    .line 528
    .line 529
    move-object v10, v14

    .line 530
    :cond_13
    iput-object v10, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 531
    .line 532
    invoke-static {v4}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 533
    .line 534
    .line 535
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 536
    .line 537
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_14
    :goto_6
    if-eqz v3, :cond_15

    .line 541
    .line 542
    move-object v9, v2

    .line 543
    :cond_15
    iput-object v9, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 544
    .line 545
    iput-object v14, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 546
    .line 547
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 548
    .line 549
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 550
    .line 551
    :cond_16
    :goto_7
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    if-eqz v2, :cond_17

    .line 556
    .line 557
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 562
    .line 563
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine()Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    .line 568
    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    const-string v3, "mIsHapticEngineSupported : "

    .line 572
    .line 573
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    iget-boolean v1, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    .line 577
    .line 578
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    :cond_17
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 589
    .line 590
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 591
    .line 592
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    const-string/jumbo v3, "ringtone_vibration_sep_index_2"

    .line 597
    .line 598
    .line 599
    const/4 v4, 0x0

    .line 600
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-nez v2, :cond_18

    .line 605
    .line 606
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 607
    .line 608
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    const v4, 0x10e017f

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 620
    .line 621
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    .line 627
    .line 628
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 629
    .line 630
    .line 631
    return-void

    .line 632
    :catchall_1
    move-exception v0

    .line 633
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 634
    throw v0

    .line 635
    :catchall_2
    move-exception v0

    .line 636
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 637
    throw v0
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final shouldVibrateForUserSetting(Lcom/android/server/vibrator/Vibration$CallerInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/vibrator/Flags;->keyboardCategoryEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->hasFixedKeyboardAmplitude()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getCategory()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v3, 0x12

    .line 29
    .line 30
    if-ne v0, v3, :cond_0

    .line 31
    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mKeyboardVibrationOn:Z

    .line 35
    .line 36
    return p0

    .line 37
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 45
    .line 46
    const-string v4, "INTENSITY_MAX"

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 55
    .line 56
    const-string v4, "INTENSITY_MIN"

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 65
    .line 66
    const-string v1, "INDIVIDUAL_INTENSITY"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    return v3

    .line 75
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v2, v3

    .line 83
    :goto_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v2, "{"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, "=("

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, ",default:"

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "), "

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_0
    const/16 v2, 0x7d

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mKeyboardVibrationOn:Z

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " (default: "

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/os/vibrator/VibrationConfig;->isDefaultKeyboardVibrationEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, ")"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v5, "VibrationSettings{mVibratorConfig="

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v5, ", mVibrateOn="

    .line 135
    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-boolean v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v5, ", mKeyboardVibrationOn="

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v3, ", mVibrateInputDevices="

    .line 153
    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, ", mBatterySaverMode="

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    .line 168
    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, ", mRingerMode="

    .line 173
    .line 174
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 178
    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    const/4 v5, 0x1

    .line 182
    if-eq v3, v5, :cond_2

    .line 183
    .line 184
    const/4 v5, 0x2

    .line 185
    if-eq v3, v5, :cond_1

    .line 186
    .line 187
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const-string/jumbo v3, "normal"

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_2
    const-string/jumbo v3, "vibrate"

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_3
    const-string/jumbo v3, "silent"

    .line 201
    .line 202
    .line 203
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, ", mOnWirelessCharger="

    .line 207
    .line 208
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 212
    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v3, ", mVibrationIntensities="

    .line 217
    .line 218
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", mProcStatesCache="

    .line 225
    .line 226
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    .line 232
    .line 233
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    monitor-exit v0

    .line 244
    return-object p0

    .line 245
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    throw p0
.end method

.method public final update()V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final updateAmplitudeLevel()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 4
    .line 5
    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    .line 6
    .line 7
    const-string v2, "VibratorManagerService"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 13
    .line 14
    array-length v4, v0

    .line 15
    sub-int/2addr v4, v3

    .line 16
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 17
    .line 18
    array-length v6, v5

    .line 19
    sub-int/2addr v6, v3

    .line 20
    const/4 v7, 0x2

    .line 21
    if-lt v4, v7, :cond_7

    .line 22
    .line 23
    if-ge v6, v7, :cond_0

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    aget v5, v5, v6

    .line 28
    .line 29
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 30
    .line 31
    aget v5, v0, v4

    .line 32
    .line 33
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 34
    .line 35
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 36
    .line 37
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 38
    .line 39
    aget v0, v0, v3

    .line 40
    .line 41
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    .line 42
    .line 43
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 44
    .line 45
    invoke-virtual {p0, v6, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-le v0, v6, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 53
    .line 54
    aget v0, v1, v0

    .line 55
    .line 56
    :goto_0
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 57
    .line 58
    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    .line 59
    .line 60
    invoke-virtual {p0, v4, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-le v0, v4, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 68
    .line 69
    aget v0, v1, v0

    .line 70
    .line 71
    :goto_1
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 72
    .line 73
    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 74
    .line 75
    invoke-virtual {p0, v4, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-le v0, v4, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 83
    .line 84
    aget v0, v1, v0

    .line 85
    .line 86
    :goto_2
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 87
    .line 88
    const-string/jumbo v0, "media_vibration_intensity"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-le v0, v4, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 99
    .line 100
    aget v0, v1, v0

    .line 101
    .line 102
    :goto_3
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    .line 105
    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v1, 0x1070181

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 122
    .line 123
    array-length v1, v0

    .line 124
    sub-int/2addr v1, v3

    .line 125
    aget v0, v0, v1

    .line 126
    .line 127
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 128
    .line 129
    if-ge v1, v7, :cond_5

    .line 130
    .line 131
    const-string/jumbo p0, "touchForceMagnitudeMaxLevel : "

    .line 132
    .line 133
    .line 134
    invoke-static {v1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_5
    const-string v0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 139
    .line 140
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-le v0, v1, :cond_6

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 148
    .line 149
    aget v0, v1, v0

    .line 150
    .line 151
    :goto_4
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_7
    :goto_5
    const-string/jumbo p0, "magnitudeMaxLevel : "

    .line 155
    .line 156
    .line 157
    const-string v0, ", touchMagnitudeMaxLevel : "

    .line 158
    .line 159
    invoke-static {v4, v6, p0, v0, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 164
    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    iget v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 168
    .line 169
    if-ne v0, v3, :cond_9

    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 172
    .line 173
    array-length v0, v0

    .line 174
    sub-int/2addr v0, v3

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 180
    .line 181
    aget v0, v1, v0

    .line 182
    .line 183
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :catch_0
    const-string v0, "failed to set DcHapticFeedbackMagnitude"

    .line 187
    .line 188
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 192
    .line 193
    aget v0, v0, v3

    .line 194
    .line 195
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 196
    .line 197
    :cond_9
    :goto_6
    return-void
.end method

.method public final updateCustomSettings()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 14
    .line 15
    array-length v2, v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    const-string v3, "VibratorManagerService"

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-lt v0, v4, :cond_7

    .line 22
    .line 23
    if-ge v1, v4, :cond_0

    .line 24
    .line 25
    goto :goto_5

    .line 26
    :cond_0
    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    .line 27
    .line 28
    invoke-virtual {p0, v1, v5}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-le v5, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 36
    .line 37
    aget v5, v1, v5

    .line 38
    .line 39
    :goto_0
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 40
    .line 41
    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-le v1, v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 51
    .line 52
    aget v1, v5, v1

    .line 53
    .line 54
    :goto_1
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 55
    .line 56
    const-string v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-le v1, v0, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 66
    .line 67
    aget v1, v5, v1

    .line 68
    .line 69
    :goto_2
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 70
    .line 71
    if-ge v2, v4, :cond_4

    .line 72
    .line 73
    const-string p0, "forceTouchMagnitudeMaxLevel : "

    .line 74
    .line 75
    invoke-static {v2, p0, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_4
    const-string v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 80
    .line 81
    invoke-virtual {p0, v2, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-le v1, v2, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 89
    .line 90
    aget v1, v2, v1

    .line 91
    .line 92
    :goto_3
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 93
    .line 94
    const-string/jumbo v1, "media_vibration_intensity"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-le v1, v0, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 105
    .line 106
    aget v1, v0, v1

    .line 107
    .line 108
    :goto_4
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_7
    :goto_5
    const-string/jumbo p0, "magnitudeMaxLevel : "

    .line 112
    .line 113
    .line 114
    const-string v2, ", touchMagnitudeMaxLevel : "

    .line 115
    .line 116
    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_6
    return-void
.end method

.method public final updateSettings(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    const-string/jumbo v3, "vibrate_input_devices"

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v5, 0x1

    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    move v3, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v4

    .line 22
    :goto_0
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 23
    .line 24
    const-string/jumbo v3, "vibrate_on"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v5, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-lez v3, :cond_1

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v3, v4

    .line 36
    :goto_1
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    .line 37
    .line 38
    const-string v3, "keyboard_vibration_enabled"

    .line 39
    .line 40
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 41
    .line 42
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationConfig;->isDefaultKeyboardVibrationEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v0, v6, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-lez v3, :cond_2

    .line 51
    .line 52
    move v3, v5

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v3, v4

    .line 55
    :goto_2
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mKeyboardVibrationOn:Z

    .line 56
    .line 57
    const-string v3, "haptic_feedback_enabled"

    .line 58
    .line 59
    invoke-virtual {v0, v5, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-lez v3, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move v5, v4

    .line 67
    :goto_3
    iput-boolean v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackEnabled:Z

    .line 68
    .line 69
    const-string v3, "alarm_vibration_intensity"

    .line 70
    .line 71
    const/4 v5, -0x1

    .line 72
    invoke-virtual {v0, v5, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 77
    .line 78
    const/16 v7, 0x11

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {v3, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 89
    .line 90
    const/16 v8, 0x12

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    sget-object v9, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 97
    .line 98
    const-string v9, "VIB_FEEDBACK_MAGNITUDE"

    .line 99
    .line 100
    invoke-virtual {v0, v5, v1, v9}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-static {v9, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    invoke-static {v9, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    :goto_4
    const-string v10, "hardware_haptic_feedback_intensity"

    .line 116
    .line 117
    invoke-virtual {v0, v5, v1, v10}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    invoke-static {v10, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    const-string/jumbo v11, "media_vibration_intensity"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v5, v1, v11}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    iget-object v12, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 133
    .line 134
    const/16 v13, 0x13

    .line 135
    .line 136
    invoke-virtual {v12, v13}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    invoke-static {v11, v12}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    iget-object v12, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 145
    .line 146
    const/16 v14, 0x31

    .line 147
    .line 148
    invoke-virtual {v12, v14}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    const-string v15, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 153
    .line 154
    invoke-virtual {v0, v5, v1, v15}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    invoke-static {v15, v12}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    if-nez v15, :cond_5

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_5
    invoke-static {v15, v12}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    :goto_5
    const-string v8, "VIB_RECVCALL_MAGNITUDE"

    .line 170
    .line 171
    invoke-virtual {v0, v5, v1, v8}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 176
    .line 177
    const/16 v8, 0x21

    .line 178
    .line 179
    invoke-virtual {v5, v8}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-static {v1, v5}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 188
    .line 189
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 190
    .line 191
    .line 192
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 193
    .line 194
    invoke-virtual {v5, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 198
    .line 199
    invoke-virtual {v3, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 203
    .line 204
    invoke-virtual {v3, v13, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    .line 206
    .line 207
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 208
    .line 209
    invoke-virtual {v3, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    .line 211
    .line 212
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 213
    .line 214
    invoke-virtual {v3, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 218
    .line 219
    const/16 v3, 0x41

    .line 220
    .line 221
    invoke-virtual {v1, v3, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 225
    .line 226
    const/16 v3, 0x32

    .line 227
    .line 228
    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 232
    .line 233
    const/16 v3, 0x22

    .line 234
    .line 235
    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 239
    .line 240
    const/16 v3, 0x12

    .line 241
    .line 242
    invoke-virtual {v1, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 246
    .line 247
    const/16 v3, 0x42

    .line 248
    .line 249
    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->updateAmplitudeLevel()V

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->updateCustomSettings()V

    .line 256
    .line 257
    .line 258
    monitor-exit v2

    .line 259
    return-void

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    throw v0
.end method
