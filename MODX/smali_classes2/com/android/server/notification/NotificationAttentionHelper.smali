.class public final Lcom/android/server/notification/NotificationAttentionHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field static final NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

.field static final NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

.field public static mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public final mAudioGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCallNotificationToken:Landroid/os/Binder;

.field public mCallState:I

.field public final mContext:Landroid/content/Context;

.field public mDisableNotificationEffects:Z

.field public mDisableVibration:Z

.field public final mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

.field public mGoodCatchNotiMutedOn:Z

.field public mGoodCatchSoundPlayedOn:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasLight:Z

.field public final mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field public final mInCallNotificationUri:Landroid/net/Uri;

.field public final mInCallNotificationVolume:F

.field public mInCallStateOffHook:Z

.field public final mIntentReceiver:Lcom/android/server/notification/NotificationAttentionHelper$5;

.field public mIsAutomotive:Z

.field public mIsEnableAlertByCall:Z

.field public mIsMutedByWearableApps:I

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLights:Ljava/util/ArrayList;

.field public final mNMP:Lcom/android/server/notification/NotificationManagerService$3;

.field public final mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

.field public mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public mNotificationEffectsEnabledForAutomotive:Z

.field public mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field public mNotificationPulseEnabled:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mScreenOn:Z

.field public final mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

.field public mSoundNotificationKey:Ljava/lang/String;

.field public mSystemReady:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public final mUseAttentionLight:Z

.field public mUserPresent:Z

.field public mVibrateNotificationKey:Ljava/lang/String;

.field public mVibrationIndex:I

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "NotifAttentionHelper"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 9
    .line 10
    const-string v0, "debug.notification.interruptiveness"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    .line 18
    .line 19
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 20
    .line 21
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 22
    .line 23
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 24
    .line 25
    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    .line 32
    .line 33
    new-instance v1, Landroid/util/Pair;

    .line 34
    .line 35
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    const-string/jumbo v4, "state"

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroid/util/Pair;

    .line 44
    .line 45
    const-string v5, "android.intent.extra.QUIET_MODE"

    .line 46
    .line 47
    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, v3, v4}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerService$3;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/PreferencesHelper;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 p5, 0x0

    .line 12
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    .line 13
    .line 14
    const/4 p9, 0x1

    .line 15
    iput-boolean p9, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    .line 19
    .line 20
    iput p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    .line 21
    .line 22
    const v0, 0xc372

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationIndex:I

    .line 26
    .line 27
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    .line 28
    .line 29
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchSoundPlayedOn:Z

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$1;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    .line 38
    .line 39
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchNotiMutedOn:Z

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$1;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$5;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationAttentionHelper$5;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Lcom/android/server/notification/NotificationAttentionHelper$5;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    const-class p4, Landroid/telephony/TelephonyManager;

    .line 66
    .line 67
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    check-cast p4, Landroid/telephony/TelephonyManager;

    .line 72
    .line 73
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    .line 75
    iput-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 76
    .line 77
    iput-object p7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    .line 78
    .line 79
    iput-object p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 80
    .line 81
    iput-object p8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 82
    .line 83
    new-instance p3, Lcom/android/server/notification/VibratorHelper;

    .line 84
    .line 85
    invoke-direct {p3, p1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    iput-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 89
    .line 90
    const/4 p3, 0x4

    .line 91
    invoke-virtual {p2, p3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 96
    .line 97
    const/4 p4, 0x5

    .line 98
    invoke-virtual {p2, p4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const p4, 0x111026f

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 112
    .line 113
    .line 114
    move-result p4

    .line 115
    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    .line 116
    .line 117
    iput-object p10, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 118
    .line 119
    iput-object p11, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHandler:Landroid/os/Handler;

    .line 120
    .line 121
    new-instance p4, Ljava/io/File;

    .line 122
    .line 123
    const-string p6, "/sys/class/sec/led/led_pattern"

    .line 124
    .line 125
    invoke-direct {p4, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4}, Ljava/io/File;->isFile()Z

    .line 129
    .line 130
    .line 131
    move-result p4

    .line 132
    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    .line 133
    .line 134
    new-instance p4, Lcom/android/server/notification/EasyMuteController;

    .line 135
    .line 136
    invoke-direct {p4, p1}, Lcom/android/server/notification/EasyMuteController;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string p4, "device_provisioned"

    .line 146
    .line 147
    invoke-static {p1, p4, p5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_0

    .line 152
    .line 153
    iput-boolean p9, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 154
    .line 155
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string p4, "file://"

    .line 158
    .line 159
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const p4, 0x104036a

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p4

    .line 169
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    .line 181
    .line 182
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 183
    .line 184
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const/4 p3, 0x2

    .line 192
    invoke-virtual {p1, p3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 201
    .line 202
    const p1, 0x10500eb

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    .line 210
    .line 211
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 212
    .line 213
    .line 214
    new-instance p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    .line 215
    .line 216
    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 217
    .line 218
    .line 219
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "CALL_STATE_UNKNOWN_"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "CALL_STATE_OFFHOOK"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string p0, "CALL_STATE_RINGING"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "CALL_STATE_IDLE"

    .line 23
    .line 24
    return-object p0
.end method

.method public static isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eq p0, v2, :cond_1

    .line 28
    .line 29
    iget-boolean p0, p1, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->isCurrentProfile:Z

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method


# virtual methods
.method public buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const/4 v9, 0x4

    .line 8
    const/4 v10, 0x3

    .line 9
    const/4 v11, 0x1

    .line 10
    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 11
    .line 12
    const/4 v12, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v12

    .line 20
    :cond_0
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v13

    .line 26
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v14, "NotifAttentionHelper"

    .line 31
    .line 32
    new-instance v15, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "buzzBeepBlinkLocked "

    .line 35
    .line 36
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 50
    .line 51
    .line 52
    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    iget v4, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 57
    .line 58
    if-le v4, v10, :cond_2

    .line 59
    .line 60
    :goto_0
    move v4, v11

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v4, v12

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget v4, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 65
    .line 66
    if-lt v4, v10, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_1
    if-eqz v13, :cond_4

    .line 70
    .line 71
    iget-object v14, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_4

    .line 78
    .line 79
    move v14, v11

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move v14, v12

    .line 82
    :goto_2
    if-eqz v13, :cond_5

    .line 83
    .line 84
    iget-object v15, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-eqz v15, :cond_5

    .line 91
    .line 92
    move v15, v11

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move v15, v12

    .line 95
    :goto_3
    iget-boolean v10, v2, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 96
    .line 97
    if-eqz v10, :cond_6

    .line 98
    .line 99
    iget v10, v2, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 100
    .line 101
    and-int/lit8 v10, v10, 0x20

    .line 102
    .line 103
    if-eqz v10, :cond_6

    .line 104
    .line 105
    move v10, v11

    .line 106
    goto :goto_4

    .line 107
    :cond_6
    move v10, v12

    .line 108
    :goto_4
    iget-boolean v8, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 109
    .line 110
    if-nez v8, :cond_7

    .line 111
    .line 112
    iget v8, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 113
    .line 114
    if-le v8, v11, :cond_7

    .line 115
    .line 116
    if-nez v10, :cond_7

    .line 117
    .line 118
    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_7

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 125
    .line 126
    .line 127
    move v8, v11

    .line 128
    goto :goto_5

    .line 129
    :cond_7
    move v8, v12

    .line 130
    :goto_5
    iput-boolean v12, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    .line 131
    .line 132
    if-eqz v4, :cond_40

    .line 133
    .line 134
    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    if-eqz v10, :cond_40

    .line 139
    .line 140
    iget-boolean v10, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 141
    .line 142
    if-eqz v10, :cond_40

    .line 143
    .line 144
    iget-object v10, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    .line 146
    if-eqz v10, :cond_40

    .line 147
    .line 148
    iget-object v10, v2, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 149
    .line 150
    if-eqz v10, :cond_8

    .line 151
    .line 152
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 153
    .line 154
    invoke-virtual {v5, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_8

    .line 159
    .line 160
    move v5, v11

    .line 161
    goto :goto_6

    .line 162
    :cond_8
    move v5, v12

    .line 163
    :goto_6
    iget-object v12, v2, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    .line 166
    .line 167
    .line 168
    move-result v17

    .line 169
    and-int/lit8 v17, v17, 0x4

    .line 170
    .line 171
    if-eqz v17, :cond_9

    .line 172
    .line 173
    move v9, v11

    .line 174
    goto :goto_7

    .line 175
    :cond_9
    const/4 v9, 0x0

    .line 176
    :goto_7
    if-nez v12, :cond_b

    .line 177
    .line 178
    if-eqz v5, :cond_b

    .line 179
    .line 180
    iget-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 181
    .line 182
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-ne v6, v11, :cond_b

    .line 187
    .line 188
    iget-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 189
    .line 190
    iget-object v11, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 191
    .line 192
    invoke-static {v11}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-nez v6, :cond_b

    .line 201
    .line 202
    iget-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 203
    .line 204
    iget-object v11, v6, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 205
    .line 206
    invoke-virtual {v11}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_a

    .line 211
    .line 212
    iget-object v11, v6, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    .line 213
    .line 214
    invoke-static {v11, v9}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    if-eqz v11, :cond_a

    .line 219
    .line 220
    move-object v12, v11

    .line 221
    goto :goto_8

    .line 222
    :cond_a
    iget-object v6, v6, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    .line 223
    .line 224
    invoke-static {v6, v9}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    move-object v12, v6

    .line 229
    :cond_b
    :goto_8
    if-eqz v12, :cond_c

    .line 230
    .line 231
    const/4 v6, 0x1

    .line 232
    goto :goto_9

    .line 233
    :cond_c
    const/4 v6, 0x0

    .line 234
    :goto_9
    if-nez v5, :cond_e

    .line 235
    .line 236
    if-eqz v6, :cond_d

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_d
    :goto_a
    move/from16 v24, v4

    .line 240
    .line 241
    move/from16 v26, v14

    .line 242
    .line 243
    move/from16 v27, v15

    .line 244
    .line 245
    :goto_b
    const/4 v7, 0x6

    .line 246
    goto/16 :goto_11

    .line 247
    .line 248
    :cond_e
    :goto_c
    iget-object v11, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 249
    .line 250
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 255
    .line 256
    if-eqz v7, :cond_f

    .line 257
    .line 258
    iget v7, v11, Landroid/app/Notification;->flags:I

    .line 259
    .line 260
    const/16 v17, 0x8

    .line 261
    .line 262
    and-int/lit8 v7, v7, 0x8

    .line 263
    .line 264
    if-eqz v7, :cond_f

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_f
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->mPostSilently:Z

    .line 268
    .line 269
    if-eqz v7, :cond_10

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_10
    iget v7, v3, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    .line 273
    .line 274
    invoke-virtual {v1, v2, v7}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    if-eqz v7, :cond_11

    .line 279
    .line 280
    sget-object v0, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 281
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 288
    .line 289
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v8, ","

    .line 297
    .line 298
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    const/16 v7, 0xd

    .line 309
    .line 310
    invoke-static {v7, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_11
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 315
    .line 316
    if-eqz v7, :cond_12

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_12
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 320
    .line 321
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_13

    .line 326
    .line 327
    invoke-virtual {v11}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_13

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_13
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 335
    .line 336
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 341
    .line 342
    monitor-enter v11

    .line 343
    :try_start_0
    invoke-virtual {v11, v7}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    move/from16 v24, v4

    .line 348
    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 350
    .line 351
    .line 352
    move-result-wide v3

    .line 353
    move-object/from16 v25, v12

    .line 354
    .line 355
    iget-object v12, v7, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    .line 356
    .line 357
    move/from16 v26, v14

    .line 358
    .line 359
    move/from16 v27, v15

    .line 360
    .line 361
    iget-wide v14, v12, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    .line 362
    .line 363
    sub-long v14, v3, v14

    .line 364
    .line 365
    const-wide/16 v17, 0x0

    .line 366
    .line 367
    cmp-long v17, v14, v17

    .line 368
    .line 369
    if-ltz v17, :cond_15

    .line 370
    .line 371
    const-wide/16 v17, 0x3e8

    .line 372
    .line 373
    cmp-long v14, v14, v17

    .line 374
    .line 375
    if-gez v14, :cond_14

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_14
    iput-wide v3, v12, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    .line 379
    .line 380
    const/4 v3, 0x0

    .line 381
    goto :goto_e

    .line 382
    :cond_15
    :goto_d
    const/4 v3, 0x1

    .line 383
    :goto_e
    if-eqz v3, :cond_16

    .line 384
    .line 385
    iget v4, v7, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 386
    .line 387
    const/4 v12, 0x1

    .line 388
    add-int/2addr v4, v12

    .line 389
    iput v4, v7, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 390
    .line 391
    :cond_16
    monitor-exit v11

    .line 392
    if-eqz v3, :cond_17

    .line 393
    .line 394
    const-string v0, "NotifAttentionHelper"

    .line 395
    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string v4, "Muting recently noisy "

    .line 399
    .line 400
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 404
    .line 405
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    iput-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    .line 421
    .line 422
    goto/16 :goto_b

    .line 423
    .line 424
    :cond_17
    const/4 v3, 0x0

    .line 425
    iput-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    .line 426
    .line 427
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 428
    .line 429
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    .line 430
    .line 431
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    if-eqz v3, :cond_18

    .line 436
    .line 437
    iget-object v7, v3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 438
    .line 439
    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    const/4 v11, 0x6

    .line 444
    if-ne v7, v11, :cond_18

    .line 445
    .line 446
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 447
    .line 448
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 453
    .line 454
    const/4 v7, 0x4

    .line 455
    and-int/2addr v3, v7

    .line 456
    if-eqz v3, :cond_18

    .line 457
    .line 458
    const/4 v7, 0x6

    .line 459
    goto :goto_f

    .line 460
    :cond_18
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    if-eqz v3, :cond_19

    .line 467
    .line 468
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 469
    .line 470
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    const/4 v7, 0x6

    .line 475
    if-ne v4, v7, :cond_1a

    .line 476
    .line 477
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 478
    .line 479
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 484
    .line 485
    const/4 v4, 0x4

    .line 486
    and-int/2addr v3, v4

    .line 487
    if-eqz v3, :cond_1a

    .line 488
    .line 489
    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-nez v3, :cond_1a

    .line 494
    .line 495
    goto/16 :goto_11

    .line 496
    .line 497
    :cond_19
    const/4 v7, 0x6

    .line 498
    :cond_1a
    iget-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 499
    .line 500
    if-eqz v3, :cond_1c

    .line 501
    .line 502
    iget-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    .line 503
    .line 504
    if-nez v3, :cond_1b

    .line 505
    .line 506
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 507
    .line 508
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v3}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_1c

    .line 517
    .line 518
    :cond_1b
    const/4 v3, 0x1

    .line 519
    goto :goto_10

    .line 520
    :cond_1c
    const/4 v3, 0x0

    .line 521
    :goto_10
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 522
    .line 523
    if-eqz v4, :cond_1d

    .line 524
    .line 525
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 526
    .line 527
    if-nez v4, :cond_1d

    .line 528
    .line 529
    if-eqz v3, :cond_1d

    .line 530
    .line 531
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 532
    .line 533
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v3}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    if-eqz v3, :cond_1d

    .line 542
    .line 543
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 544
    .line 545
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v3}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-eqz v3, :cond_1d

    .line 558
    .line 559
    goto :goto_11

    .line 560
    :cond_1d
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 561
    .line 562
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 563
    .line 564
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    iget-object v11, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 569
    .line 570
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 571
    .line 572
    .line 573
    move-result v11

    .line 574
    invoke-virtual {v3, v4, v11}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    if-nez v3, :cond_1e

    .line 579
    .line 580
    goto :goto_11

    .line 581
    :cond_1e
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 582
    .line 583
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 588
    .line 589
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    iget v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    .line 594
    .line 595
    const/4 v12, 0x1

    .line 596
    if-eq v11, v12, :cond_1f

    .line 597
    .line 598
    const/4 v14, 0x2

    .line 599
    if-ne v11, v14, :cond_21

    .line 600
    .line 601
    :cond_1f
    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 602
    .line 603
    invoke-virtual {v11, v4, v3}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v11

    .line 607
    if-ne v11, v12, :cond_21

    .line 608
    .line 609
    const-string v0, "NotifAttentionHelper"

    .line 610
    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    const-string v9, "NMS : muted by wearable app condition : ByListenerHint="

    .line 614
    .line 615
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    .line 619
    .line 620
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v9, ", ByWearableAppList="

    .line 624
    .line 625
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    iget-object v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 629
    .line 630
    invoke-virtual {v9, v4, v3}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    const/4 v3, 0x4

    .line 649
    and-int/2addr v0, v3

    .line 650
    if-eqz v0, :cond_20

    .line 651
    .line 652
    const/4 v0, 0x0

    .line 653
    const/4 v3, 0x0

    .line 654
    const/4 v5, 0x0

    .line 655
    goto/16 :goto_2b

    .line 656
    .line 657
    :cond_20
    const/4 v0, 0x0

    .line 658
    const/4 v3, 0x0

    .line 659
    goto/16 :goto_2b

    .line 660
    .line 661
    :cond_21
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 662
    .line 663
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    if-nez v3, :cond_22

    .line 668
    .line 669
    const/4 v3, 0x1

    .line 670
    goto :goto_12

    .line 671
    :cond_22
    const/4 v3, 0x0

    .line 672
    :goto_12
    if-eqz v6, :cond_23

    .line 673
    .line 674
    if-nez v3, :cond_23

    .line 675
    .line 676
    const/4 v4, 0x1

    .line 677
    goto :goto_13

    .line 678
    :cond_23
    const/4 v4, 0x0

    .line 679
    :goto_13
    if-nez v8, :cond_24

    .line 680
    .line 681
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 682
    .line 683
    .line 684
    :cond_24
    if-eqz v0, :cond_25

    .line 685
    .line 686
    const-string v8, "NotifAttentionHelper"

    .line 687
    .line 688
    const-string v11, "Interrupting!"

    .line 689
    .line 690
    invoke-static {v8, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    :cond_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    .line 694
    .line 695
    .line 696
    move-result v8

    .line 697
    if-eqz v5, :cond_36

    .line 698
    .line 699
    if-eqz v8, :cond_26

    .line 700
    .line 701
    move/from16 v28, v5

    .line 702
    .line 703
    move/from16 v29, v8

    .line 704
    .line 705
    const/4 v0, 0x1

    .line 706
    goto/16 :goto_20

    .line 707
    .line 708
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    .line 709
    .line 710
    .line 711
    move-result v11

    .line 712
    if-eqz v11, :cond_2a

    .line 713
    .line 714
    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    .line 715
    .line 716
    if-eqz v0, :cond_28

    .line 717
    .line 718
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 719
    .line 720
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 725
    .line 726
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    const/4 v10, 0x2

    .line 731
    if-ne v4, v10, :cond_27

    .line 732
    .line 733
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    const-string v10, "in_call_notification_enabled"

    .line 738
    .line 739
    const/4 v11, 0x1

    .line 740
    invoke-static {v0, v10, v11, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-eqz v0, :cond_27

    .line 745
    .line 746
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$4;

    .line 747
    .line 748
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationAttentionHelper$4;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 752
    .line 753
    .line 754
    :cond_27
    move/from16 v28, v5

    .line 755
    .line 756
    move/from16 v29, v8

    .line 757
    .line 758
    :goto_14
    const/4 v0, 0x1

    .line 759
    goto/16 :goto_1f

    .line 760
    .line 761
    :cond_28
    move/from16 v28, v5

    .line 762
    .line 763
    move/from16 v29, v8

    .line 764
    .line 765
    :cond_29
    :goto_15
    const/4 v0, 0x0

    .line 766
    goto/16 :goto_1f

    .line 767
    .line 768
    :cond_2a
    const-string v11, "NotifAttentionHelper"

    .line 769
    .line 770
    const-string v12, "Playing sound with new AudioAttributes - "

    .line 771
    .line 772
    const-string v14, "Playing sound "

    .line 773
    .line 774
    iget-object v15, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 775
    .line 776
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 777
    .line 778
    .line 779
    move-result-object v15

    .line 780
    iget v15, v15, Landroid/app/Notification;->flags:I

    .line 781
    .line 782
    const/16 v17, 0x4

    .line 783
    .line 784
    and-int/lit8 v15, v15, 0x4

    .line 785
    .line 786
    if-eqz v15, :cond_2b

    .line 787
    .line 788
    const/16 v21, 0x1

    .line 789
    .line 790
    goto :goto_16

    .line 791
    :cond_2b
    const/16 v21, 0x0

    .line 792
    .line 793
    :goto_16
    iget-object v15, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 794
    .line 795
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 796
    .line 797
    .line 798
    move-result v15

    .line 799
    const/4 v7, 0x2

    .line 800
    if-ne v15, v7, :cond_2c

    .line 801
    .line 802
    const/4 v7, 0x1

    .line 803
    goto :goto_17

    .line 804
    :cond_2c
    const/4 v7, 0x0

    .line 805
    :goto_17
    iget-object v15, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 806
    .line 807
    move/from16 v28, v5

    .line 808
    .line 809
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 810
    .line 811
    invoke-static {v5}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 812
    .line 813
    .line 814
    move-result v5

    .line 815
    invoke-virtual {v15, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 816
    .line 817
    .line 818
    move-result v5

    .line 819
    iget-object v15, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 820
    .line 821
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 822
    .line 823
    .line 824
    move-result v15

    .line 825
    move/from16 v29, v8

    .line 826
    .line 827
    const/4 v8, 0x1

    .line 828
    if-eq v15, v8, :cond_2e

    .line 829
    .line 830
    if-nez v5, :cond_2d

    .line 831
    .line 832
    if-eqz v7, :cond_2d

    .line 833
    .line 834
    goto :goto_18

    .line 835
    :cond_2d
    const/4 v8, 0x0

    .line 836
    goto :goto_19

    .line 837
    :cond_2e
    :goto_18
    const/4 v8, 0x1

    .line 838
    :goto_19
    iget-object v15, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 839
    .line 840
    invoke-virtual {v15}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    .line 841
    .line 842
    .line 843
    move-result v15

    .line 844
    if-nez v15, :cond_29

    .line 845
    .line 846
    sget-boolean v15, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    .line 847
    .line 848
    if-eqz v15, :cond_2f

    .line 849
    .line 850
    if-nez v8, :cond_30

    .line 851
    .line 852
    :cond_2f
    if-eqz v5, :cond_29

    .line 853
    .line 854
    if-eqz v7, :cond_29

    .line 855
    .line 856
    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 857
    .line 858
    .line 859
    move-result-wide v30

    .line 860
    :try_start_1
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 861
    .line 862
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 863
    .line 864
    .line 865
    move-result-object v18

    .line 866
    if-eqz v18, :cond_35

    .line 867
    .line 868
    if-eqz v0, :cond_31

    .line 869
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v5, " with attributes "

    .line 879
    .line 880
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 884
    .line 885
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .line 894
    .line 895
    goto :goto_1a

    .line 896
    :catchall_0
    move-exception v0

    .line 897
    goto/16 :goto_1e

    .line 898
    .line 899
    :catch_0
    move-exception v0

    .line 900
    goto/16 :goto_1d

    .line 901
    .line 902
    :cond_31
    :goto_1a
    if-eqz v15, :cond_34

    .line 903
    .line 904
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 905
    .line 906
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 907
    .line 908
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 909
    .line 910
    .line 911
    move-result-object v5

    .line 912
    invoke-static {v0, v10, v5}, Landroid/media/RingtoneManager;->getActualAchRingtoneUriIfAvailable(Landroid/content/Context;Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    if-eqz v4, :cond_32

    .line 917
    .line 918
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 919
    .line 920
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    if-nez v4, :cond_32

    .line 925
    .line 926
    if-eqz v0, :cond_32

    .line 927
    .line 928
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 929
    .line 930
    invoke-static {v4, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 931
    .line 932
    .line 933
    move-result v4

    .line 934
    if-eqz v4, :cond_32

    .line 935
    .line 936
    const/4 v4, 0x1

    .line 937
    iput-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    .line 938
    .line 939
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 940
    .line 941
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 942
    .line 943
    invoke-direct {v4, v5}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 944
    .line 945
    .line 946
    const/4 v5, 0x0

    .line 947
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    .line 948
    .line 949
    .line 950
    move-result-object v4

    .line 951
    const-string v5, "RINGTONE_HAPTIC"

    .line 952
    .line 953
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 954
    .line 955
    .line 956
    move-result-object v4

    .line 957
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 958
    .line 959
    .line 960
    move-result-object v4

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v5

    .line 973
    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .line 975
    .line 976
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 977
    .line 978
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 979
    .line 980
    .line 981
    move-result-object v20

    .line 982
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 983
    .line 984
    .line 985
    const/high16 v23, 0x3f800000    # 1.0f

    .line 986
    .line 987
    move-object/from16 v19, v0

    .line 988
    .line 989
    move-object/from16 v22, v4

    .line 990
    .line 991
    invoke-interface/range {v18 .. v23}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    .line 992
    .line 993
    .line 994
    goto :goto_1b

    .line 995
    :cond_32
    if-nez v8, :cond_33

    .line 996
    .line 997
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 998
    .line 999
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v19

    .line 1003
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 1004
    .line 1005
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 1006
    .line 1007
    .line 1008
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1009
    .line 1010
    move-object/from16 v17, v18

    .line 1011
    .line 1012
    move-object/from16 v18, v10

    .line 1013
    .line 1014
    move/from16 v20, v21

    .line 1015
    .line 1016
    move-object/from16 v21, v0

    .line 1017
    .line 1018
    invoke-interface/range {v17 .. v22}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    .line 1019
    .line 1020
    .line 1021
    :cond_33
    :goto_1b
    if-nez v8, :cond_34

    .line 1022
    .line 1023
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    .line 1024
    .line 1025
    if-eqz v0, :cond_34

    .line 1026
    .line 1027
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mHandler:Landroid/os/Handler;

    .line 1028
    .line 1029
    new-instance v4, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;

    .line 1030
    .line 1031
    invoke-direct {v4, v1}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v0, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1035
    .line 1036
    .line 1037
    const-string v0, "Easymute controller is registered."

    .line 1038
    .line 1039
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    .line 1041
    .line 1042
    :cond_34
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_14

    .line 1046
    .line 1047
    :cond_35
    :try_start_2
    const-string v0, "Couldn\'t get a ringtone player!!"

    .line 1048
    .line 1049
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    .line 1051
    .line 1052
    :goto_1c
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_15

    .line 1056
    .line 1057
    :goto_1d
    :try_start_3
    const-string v4, "Couldn\'t play notification sound!! : "

    .line 1058
    .line 1059
    invoke-static {v11, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1060
    .line 1061
    .line 1062
    goto :goto_1c

    .line 1063
    :goto_1e
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1064
    .line 1065
    .line 1066
    throw v0

    .line 1067
    :goto_1f
    if-eqz v0, :cond_37

    .line 1068
    .line 1069
    iput-object v13, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 1070
    .line 1071
    sget-object v17, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 1072
    .line 1073
    if-eqz v17, :cond_37

    .line 1074
    .line 1075
    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchSoundPlayedOn:Z

    .line 1076
    .line 1077
    if-eqz v4, :cond_37

    .line 1078
    .line 1079
    const-string/jumbo v18, "playback"

    .line 1080
    .line 1081
    .line 1082
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1083
    .line 1084
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v19

    .line 1088
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 1089
    .line 1090
    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 1091
    .line 1092
    .line 1093
    move-result v20

    .line 1094
    const-string v21, ""

    .line 1095
    .line 1096
    const-string v22, ""

    .line 1097
    .line 1098
    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    const-string v4, "NotifAttentionHelper"

    .line 1102
    .line 1103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    const-string v7, "Playing sound : "

    .line 1106
    .line 1107
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1111
    .line 1112
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v7

    .line 1116
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    const-string v7, "/"

    .line 1120
    .line 1121
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1125
    .line 1126
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 1127
    .line 1128
    .line 1129
    move-result v7

    .line 1130
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v5

    .line 1137
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    .line 1139
    .line 1140
    goto :goto_20

    .line 1141
    :cond_36
    move/from16 v28, v5

    .line 1142
    .line 1143
    move/from16 v29, v8

    .line 1144
    .line 1145
    const/4 v0, 0x0

    .line 1146
    :cond_37
    :goto_20
    sget-boolean v4, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    .line 1147
    .line 1148
    const/4 v5, -0x1

    .line 1149
    if-eqz v4, :cond_39

    .line 1150
    .line 1151
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1152
    .line 1153
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    if-nez v4, :cond_39

    .line 1158
    .line 1159
    iget v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationIndex:I

    .line 1160
    .line 1161
    if-eqz v9, :cond_38

    .line 1162
    .line 1163
    const/4 v7, 0x0

    .line 1164
    goto :goto_21

    .line 1165
    :cond_38
    move v7, v5

    .line 1166
    :goto_21
    sget-object v8, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1167
    .line 1168
    invoke-static {v4, v7, v8}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v12

    .line 1172
    goto :goto_22

    .line 1173
    :cond_39
    move-object/from16 v12, v25

    .line 1174
    .line 1175
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    .line 1176
    .line 1177
    .line 1178
    move-result v4

    .line 1179
    if-nez v4, :cond_3d

    .line 1180
    .line 1181
    if-eqz v6, :cond_3d

    .line 1182
    .line 1183
    if-nez v3, :cond_3d

    .line 1184
    .line 1185
    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    .line 1186
    .line 1187
    if-nez v4, :cond_3d

    .line 1188
    .line 1189
    if-eqz v29, :cond_3a

    .line 1190
    .line 1191
    :goto_23
    const/4 v4, 0x1

    .line 1192
    goto :goto_27

    .line 1193
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v7

    .line 1197
    :try_start_4
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 1198
    .line 1199
    .line 1200
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1201
    .line 1202
    invoke-static {v4, v4}, Ljava/lang/Float;->compare(FF)I

    .line 1203
    .line 1204
    .line 1205
    move-result v9

    .line 1206
    if-eqz v9, :cond_3b

    .line 1207
    .line 1208
    iget-object v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 1209
    .line 1210
    iget v9, v9, Lcom/android/server/notification/VibratorHelper;->mDefaultVibrationAmplitude:I

    .line 1211
    .line 1212
    invoke-virtual {v12, v9}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v9

    .line 1216
    invoke-virtual {v9, v4}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v12

    .line 1220
    goto :goto_24

    .line 1221
    :catchall_1
    move-exception v0

    .line 1222
    goto :goto_26

    .line 1223
    :cond_3b
    :goto_24
    if-eqz v28, :cond_3c

    .line 1224
    .line 1225
    new-instance v4, Ljava/lang/Thread;

    .line 1226
    .line 1227
    new-instance v9, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    .line 1228
    .line 1229
    const/4 v10, 0x1

    .line 1230
    invoke-direct {v9, v1, v2, v12, v10}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;I)V

    .line 1231
    .line 1232
    .line 1233
    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1237
    .line 1238
    .line 1239
    goto :goto_25

    .line 1240
    :cond_3c
    const/4 v4, 0x0

    .line 1241
    invoke-virtual {v1, v2, v12, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1242
    .line 1243
    .line 1244
    :goto_25
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    .line 1246
    .line 1247
    iput-object v13, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1248
    .line 1249
    goto :goto_23

    .line 1250
    :goto_26
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1251
    .line 1252
    .line 1253
    throw v0

    .line 1254
    :cond_3d
    const/4 v4, 0x0

    .line 1255
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    .line 1256
    .line 1257
    .line 1258
    move-result v7

    .line 1259
    if-eqz v7, :cond_3f

    .line 1260
    .line 1261
    if-eqz v6, :cond_3f

    .line 1262
    .line 1263
    if-nez v3, :cond_3f

    .line 1264
    .line 1265
    iget-boolean v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    .line 1266
    .line 1267
    if-eqz v3, :cond_3f

    .line 1268
    .line 1269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1270
    .line 1271
    .line 1272
    move-result-wide v3

    .line 1273
    const/4 v7, 0x3

    .line 1274
    :try_start_5
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 1275
    .line 1276
    .line 1277
    move-result v8

    .line 1278
    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1279
    .line 1280
    invoke-static {v8, v5, v7}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v5

    .line 1284
    if-eqz v28, :cond_3e

    .line 1285
    .line 1286
    new-instance v7, Ljava/lang/Thread;

    .line 1287
    .line 1288
    new-instance v8, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    .line 1289
    .line 1290
    const/4 v9, 0x0

    .line 1291
    invoke-direct {v8, v1, v2, v5, v9}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;I)V

    .line 1292
    .line 1293
    .line 1294
    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1298
    .line 1299
    .line 1300
    goto :goto_28

    .line 1301
    :catchall_2
    move-exception v0

    .line 1302
    goto :goto_29

    .line 1303
    :cond_3e
    const/4 v7, 0x0

    .line 1304
    invoke-virtual {v1, v2, v5, v7}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1305
    .line 1306
    .line 1307
    :goto_28
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    .line 1309
    .line 1310
    iput-object v13, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1311
    .line 1312
    const/4 v4, 0x1

    .line 1313
    goto :goto_2a

    .line 1314
    :goto_29
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1315
    .line 1316
    .line 1317
    throw v0

    .line 1318
    :cond_3f
    :goto_2a
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1319
    .line 1320
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 1321
    .line 1322
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1323
    .line 1324
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v7

    .line 1328
    const/4 v8, 0x3

    .line 1329
    invoke-virtual {v3, v5, v8, v7}, Landroid/view/accessibility/AccessibilityManager;->startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1330
    .line 1331
    .line 1332
    move v3, v4

    .line 1333
    move/from16 v5, v28

    .line 1334
    .line 1335
    goto :goto_2b

    .line 1336
    :catchall_3
    move-exception v0

    .line 1337
    monitor-exit v11

    .line 1338
    throw v0

    .line 1339
    :cond_40
    move/from16 v24, v4

    .line 1340
    .line 1341
    move/from16 v26, v14

    .line 1342
    .line 1343
    move/from16 v27, v15

    .line 1344
    .line 1345
    const/4 v0, 0x0

    .line 1346
    const/4 v3, 0x0

    .line 1347
    const/4 v5, 0x0

    .line 1348
    const/4 v6, 0x0

    .line 1349
    :goto_2b
    if-eqz v26, :cond_41

    .line 1350
    .line 1351
    if-nez v5, :cond_41

    .line 1352
    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 1354
    .line 1355
    .line 1356
    :cond_41
    if-eqz v27, :cond_42

    .line 1357
    .line 1358
    if-nez v6, :cond_42

    .line 1359
    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 1361
    .line 1362
    .line 1363
    :cond_42
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 1364
    .line 1365
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v4

    .line 1369
    iget-boolean v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 1370
    .line 1371
    if-nez v5, :cond_43

    .line 1372
    .line 1373
    goto :goto_2c

    .line 1374
    :cond_43
    iget-boolean v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    .line 1375
    .line 1376
    if-nez v5, :cond_44

    .line 1377
    .line 1378
    goto :goto_2c

    .line 1379
    :cond_44
    iget-boolean v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 1380
    .line 1381
    if-nez v5, :cond_45

    .line 1382
    .line 1383
    goto :goto_2c

    .line 1384
    :cond_45
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 1385
    .line 1386
    if-nez v5, :cond_46

    .line 1387
    .line 1388
    goto :goto_2c

    .line 1389
    :cond_46
    if-nez v24, :cond_47

    .line 1390
    .line 1391
    goto :goto_2c

    .line 1392
    :cond_47
    iget v5, v2, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 1393
    .line 1394
    const/16 v6, 0x8

    .line 1395
    .line 1396
    and-int/2addr v5, v6

    .line 1397
    if-eqz v5, :cond_48

    .line 1398
    .line 1399
    goto :goto_2c

    .line 1400
    :cond_48
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1401
    .line 1402
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v5

    .line 1406
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 1407
    .line 1408
    if-eqz v7, :cond_49

    .line 1409
    .line 1410
    iget v5, v5, Landroid/app/Notification;->flags:I

    .line 1411
    .line 1412
    and-int/2addr v5, v6

    .line 1413
    if-eqz v5, :cond_49

    .line 1414
    .line 1415
    goto :goto_2c

    .line 1416
    :cond_49
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1417
    .line 1418
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 1419
    .line 1420
    .line 1421
    move-result v5

    .line 1422
    if-eqz v5, :cond_4a

    .line 1423
    .line 1424
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1425
    .line 1426
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v5

    .line 1430
    invoke-virtual {v5}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 1431
    .line 1432
    .line 1433
    move-result v5

    .line 1434
    if-eqz v5, :cond_4a

    .line 1435
    .line 1436
    goto :goto_2c

    .line 1437
    :cond_4a
    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    .line 1438
    .line 1439
    .line 1440
    move-result v5

    .line 1441
    if-nez v5, :cond_4c

    .line 1442
    .line 1443
    :goto_2c
    if-eqz v4, :cond_4b

    .line 1444
    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1446
    .line 1447
    .line 1448
    :cond_4b
    const/4 v7, 0x7

    .line 1449
    const/4 v12, 0x0

    .line 1450
    goto/16 :goto_30

    .line 1451
    .line 1452
    :cond_4c
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 1453
    .line 1454
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1458
    .line 1459
    .line 1460
    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    .line 1461
    .line 1462
    if-eqz v4, :cond_4f

    .line 1463
    .line 1464
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 1465
    .line 1466
    if-eqz v4, :cond_4f

    .line 1467
    .line 1468
    check-cast v4, Lcom/android/server/lights/LightsService$LightImpl;

    .line 1469
    .line 1470
    const-string v5, "LightsService"

    .line 1471
    .line 1472
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    const-string v7, "[api] pulse : lightType: "

    .line 1475
    .line 1476
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    iget-object v7, v4, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 1480
    .line 1481
    iget-object v8, v4, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 1482
    .line 1483
    iget-byte v8, v8, Landroid/hardware/light/HwLight;->type:B

    .line 1484
    .line 1485
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1486
    .line 1487
    .line 1488
    invoke-static {v8}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v7

    .line 1492
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    const-string v7, ", color: "

    .line 1496
    .line 1497
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    .line 1499
    .line 1500
    const v7, 0xffffff

    .line 1501
    .line 1502
    .line 1503
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v8

    .line 1507
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    const-string v8, ", onMS: 7"

    .line 1511
    .line 1512
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v8

    .line 1519
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v6

    .line 1526
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    .line 1528
    .line 1529
    monitor-enter v4

    .line 1530
    :try_start_6
    iget-boolean v5, v4, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 1531
    .line 1532
    if-eqz v5, :cond_4e

    .line 1533
    .line 1534
    const-string v5, "LightsService"

    .line 1535
    .line 1536
    const-string v6, "[SvcLED] pulse : Not Support"

    .line 1537
    .line 1538
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .line 1540
    .line 1541
    :cond_4d
    const/4 v7, 0x7

    .line 1542
    goto :goto_2d

    .line 1543
    :catchall_4
    move-exception v0

    .line 1544
    goto :goto_2e

    .line 1545
    :cond_4e
    iget v5, v4, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 1546
    .line 1547
    if-nez v5, :cond_4d

    .line 1548
    .line 1549
    const/16 v5, 0x3e8

    .line 1550
    .line 1551
    const/4 v6, 0x2

    .line 1552
    const/4 v8, 0x7

    .line 1553
    invoke-virtual {v4, v7, v6, v8, v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 1554
    .line 1555
    .line 1556
    const/4 v5, 0x0

    .line 1557
    iput v5, v4, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 1558
    .line 1559
    iget-object v5, v4, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 1560
    .line 1561
    iget-object v5, v5, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 1562
    .line 1563
    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    .line 1564
    .line 1565
    invoke-direct {v6, v4}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    .line 1566
    .line 1567
    .line 1568
    const/4 v7, 0x7

    .line 1569
    int-to-long v8, v7

    .line 1570
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1571
    .line 1572
    .line 1573
    :goto_2d
    monitor-exit v4

    .line 1574
    goto :goto_2f

    .line 1575
    :goto_2e
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1576
    throw v0

    .line 1577
    :cond_4f
    const/4 v7, 0x7

    .line 1578
    :goto_2f
    const/4 v12, 0x1

    .line 1579
    :goto_30
    if-eqz v0, :cond_50

    .line 1580
    .line 1581
    const/4 v4, 0x2

    .line 1582
    goto :goto_31

    .line 1583
    :cond_50
    const/4 v4, 0x0

    .line 1584
    :goto_31
    or-int/2addr v4, v3

    .line 1585
    if-eqz v12, :cond_51

    .line 1586
    .line 1587
    const/4 v5, 0x4

    .line 1588
    goto :goto_32

    .line 1589
    :cond_51
    const/4 v5, 0x0

    .line 1590
    :goto_32
    or-int/2addr v4, v5

    .line 1591
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 1592
    .line 1593
    .line 1594
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 1595
    .line 1596
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1597
    .line 1598
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 1599
    .line 1600
    .line 1601
    move-result v6

    .line 1602
    and-int/lit8 v6, v6, 0x20

    .line 1603
    .line 1604
    if-eqz v6, :cond_52

    .line 1605
    .line 1606
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1607
    .line 1608
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v6

    .line 1612
    if-nez v6, :cond_52

    .line 1613
    .line 1614
    const/4 v6, 0x1

    .line 1615
    goto :goto_33

    .line 1616
    :cond_52
    const/4 v6, 0x0

    .line 1617
    :goto_33
    if-eqz v5, :cond_53

    .line 1618
    .line 1619
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1620
    .line 1621
    invoke-virtual {v8, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1622
    .line 1623
    .line 1624
    move-result v5

    .line 1625
    if-nez v5, :cond_53

    .line 1626
    .line 1627
    const/4 v5, 0x1

    .line 1628
    goto :goto_34

    .line 1629
    :cond_53
    const/4 v5, 0x0

    .line 1630
    :goto_34
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 1631
    .line 1632
    if-nez v8, :cond_56

    .line 1633
    .line 1634
    if-eqz v5, :cond_56

    .line 1635
    .line 1636
    iget-object v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1637
    .line 1638
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 1639
    .line 1640
    .line 1641
    move-result v9

    .line 1642
    const/4 v10, 0x1

    .line 1643
    if-ne v9, v10, :cond_56

    .line 1644
    .line 1645
    iget-object v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1646
    .line 1647
    iget-object v10, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 1648
    .line 1649
    invoke-static {v10}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 1650
    .line 1651
    .line 1652
    move-result v10

    .line 1653
    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 1654
    .line 1655
    .line 1656
    move-result v9

    .line 1657
    if-nez v9, :cond_56

    .line 1658
    .line 1659
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    .line 1660
    .line 1661
    .line 1662
    move-result v8

    .line 1663
    const/4 v9, 0x4

    .line 1664
    and-int/2addr v8, v9

    .line 1665
    if-eqz v8, :cond_54

    .line 1666
    .line 1667
    const/4 v8, 0x1

    .line 1668
    goto :goto_35

    .line 1669
    :cond_54
    const/4 v8, 0x0

    .line 1670
    :goto_35
    iget-object v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 1671
    .line 1672
    iget-object v10, v9, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 1673
    .line 1674
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    .line 1675
    .line 1676
    .line 1677
    move-result v10

    .line 1678
    if-eqz v10, :cond_55

    .line 1679
    .line 1680
    iget-object v10, v9, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    .line 1681
    .line 1682
    invoke-static {v10, v8}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v10

    .line 1686
    if-eqz v10, :cond_55

    .line 1687
    .line 1688
    move-object v8, v10

    .line 1689
    goto :goto_36

    .line 1690
    :cond_55
    iget-object v9, v9, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    .line 1691
    .line 1692
    invoke-static {v9, v8}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v8

    .line 1696
    :cond_56
    :goto_36
    iget-object v9, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1697
    .line 1698
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 1699
    .line 1700
    .line 1701
    move-result v9

    .line 1702
    const/16 v10, 0x10

    .line 1703
    .line 1704
    and-int/2addr v9, v10

    .line 1705
    if-eqz v9, :cond_57

    .line 1706
    .line 1707
    iget-object v9, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1708
    .line 1709
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 1710
    .line 1711
    .line 1712
    move-result v9

    .line 1713
    if-nez v9, :cond_57

    .line 1714
    .line 1715
    const/4 v9, 0x1

    .line 1716
    goto :goto_37

    .line 1717
    :cond_57
    const/4 v9, 0x0

    .line 1718
    :goto_37
    if-eqz v8, :cond_58

    .line 1719
    .line 1720
    const/4 v8, 0x1

    .line 1721
    goto :goto_38

    .line 1722
    :cond_58
    const/4 v8, 0x0

    .line 1723
    :goto_38
    if-nez v5, :cond_59

    .line 1724
    .line 1725
    if-eqz v6, :cond_5a

    .line 1726
    .line 1727
    :cond_59
    if-eqz v0, :cond_5d

    .line 1728
    .line 1729
    :cond_5a
    if-nez v8, :cond_5b

    .line 1730
    .line 1731
    if-eqz v9, :cond_5c

    .line 1732
    .line 1733
    :cond_5b
    if-nez v3, :cond_5c

    .line 1734
    .line 1735
    goto :goto_39

    .line 1736
    :cond_5c
    const/4 v11, 0x0

    .line 1737
    goto :goto_3a

    .line 1738
    :cond_5d
    :goto_39
    const/4 v11, 0x1

    .line 1739
    :goto_3a
    if-eqz v11, :cond_76

    .line 1740
    .line 1741
    iget-object v13, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1742
    .line 1743
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v13

    .line 1747
    iget-object v14, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1748
    .line 1749
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v14

    .line 1753
    iget-object v15, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1754
    .line 1755
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 1756
    .line 1757
    .line 1758
    move-result v15

    .line 1759
    iget v7, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1760
    .line 1761
    iget-object v10, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1762
    .line 1763
    const/16 v18, 0xe

    .line 1764
    .line 1765
    move/from16 v19, v11

    .line 1766
    .line 1767
    const/4 v11, 0x3

    .line 1768
    if-ge v7, v11, :cond_60

    .line 1769
    .line 1770
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1771
    .line 1772
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 1773
    .line 1774
    .line 1775
    move-result v7

    .line 1776
    const/16 v16, 0x4

    .line 1777
    .line 1778
    and-int/lit8 v7, v7, 0x4

    .line 1779
    .line 1780
    if-eqz v7, :cond_5e

    .line 1781
    .line 1782
    move v7, v11

    .line 1783
    goto/16 :goto_3d

    .line 1784
    .line 1785
    :cond_5e
    invoke-virtual {v10, v14, v15}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    .line 1786
    .line 1787
    .line 1788
    move-result v7

    .line 1789
    if-nez v7, :cond_5f

    .line 1790
    .line 1791
    :goto_3b
    move/from16 v7, v18

    .line 1792
    .line 1793
    goto/16 :goto_3d

    .line 1794
    .line 1795
    :cond_5f
    const/4 v7, 0x0

    .line 1796
    const/16 v19, 0x0

    .line 1797
    .line 1798
    goto/16 :goto_3d

    .line 1799
    .line 1800
    :cond_60
    move-object/from16 v7, p2

    .line 1801
    .line 1802
    const/16 v16, 0x4

    .line 1803
    .line 1804
    iget v11, v7, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    .line 1805
    .line 1806
    invoke-virtual {v1, v2, v11}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v11

    .line 1810
    if-eqz v11, :cond_61

    .line 1811
    .line 1812
    const/4 v7, 0x2

    .line 1813
    goto :goto_3d

    .line 1814
    :cond_61
    iget-boolean v11, v2, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 1815
    .line 1816
    if-eqz v11, :cond_62

    .line 1817
    .line 1818
    move/from16 v7, v16

    .line 1819
    .line 1820
    goto :goto_3d

    .line 1821
    :cond_62
    invoke-virtual {v10, v14, v15}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    .line 1822
    .line 1823
    .line 1824
    move-result v11

    .line 1825
    if-nez v11, :cond_63

    .line 1826
    .line 1827
    goto :goto_3b

    .line 1828
    :cond_63
    iget-boolean v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 1829
    .line 1830
    if-eqz v11, :cond_6b

    .line 1831
    .line 1832
    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1833
    .line 1834
    if-nez v11, :cond_64

    .line 1835
    .line 1836
    goto :goto_3c

    .line 1837
    :cond_64
    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    .line 1838
    .line 1839
    .line 1840
    move-result v7

    .line 1841
    if-nez v7, :cond_65

    .line 1842
    .line 1843
    const/16 v7, 0xc

    .line 1844
    .line 1845
    goto :goto_3d

    .line 1846
    :cond_65
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 1847
    .line 1848
    if-eqz v7, :cond_66

    .line 1849
    .line 1850
    iget v7, v13, Landroid/app/Notification;->flags:I

    .line 1851
    .line 1852
    const/16 v11, 0x8

    .line 1853
    .line 1854
    and-int/2addr v7, v11

    .line 1855
    if-eqz v7, :cond_66

    .line 1856
    .line 1857
    const/4 v7, 0x6

    .line 1858
    goto :goto_3d

    .line 1859
    :cond_66
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1860
    .line 1861
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 1862
    .line 1863
    .line 1864
    move-result v7

    .line 1865
    if-eqz v7, :cond_67

    .line 1866
    .line 1867
    invoke-virtual {v13}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v7

    .line 1871
    if-eqz v7, :cond_67

    .line 1872
    .line 1873
    const/4 v7, 0x7

    .line 1874
    goto :goto_3d

    .line 1875
    :cond_67
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    .line 1876
    .line 1877
    if-eqz v7, :cond_68

    .line 1878
    .line 1879
    const/16 v7, 0xd

    .line 1880
    .line 1881
    goto :goto_3d

    .line 1882
    :cond_68
    iget v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    .line 1883
    .line 1884
    const/4 v11, 0x1

    .line 1885
    if-eq v7, v11, :cond_69

    .line 1886
    .line 1887
    const/4 v13, 0x2

    .line 1888
    if-ne v7, v13, :cond_6a

    .line 1889
    .line 1890
    :cond_69
    invoke-virtual {v10, v15, v14}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    .line 1891
    .line 1892
    .line 1893
    move-result v7

    .line 1894
    if-ne v7, v11, :cond_6a

    .line 1895
    .line 1896
    const/16 v7, 0x12

    .line 1897
    .line 1898
    goto :goto_3d

    .line 1899
    :cond_6a
    const/4 v7, 0x0

    .line 1900
    goto :goto_3d

    .line 1901
    :cond_6b
    :goto_3c
    const/4 v7, 0x5

    .line 1902
    :goto_3d
    const/16 v10, 0xb

    .line 1903
    .line 1904
    if-nez v5, :cond_6d

    .line 1905
    .line 1906
    if-eqz v6, :cond_6c

    .line 1907
    .line 1908
    goto :goto_3e

    .line 1909
    :cond_6c
    const/4 v11, 0x2

    .line 1910
    goto :goto_3f

    .line 1911
    :cond_6d
    :goto_3e
    if-nez v0, :cond_6c

    .line 1912
    .line 1913
    if-nez v7, :cond_6c

    .line 1914
    .line 1915
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1916
    .line 1917
    invoke-virtual {v5}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    .line 1918
    .line 1919
    .line 1920
    move-result v5

    .line 1921
    if-eqz v5, :cond_6e

    .line 1922
    .line 1923
    const/16 v5, 0x8

    .line 1924
    .line 1925
    const/4 v11, 0x2

    .line 1926
    goto :goto_40

    .line 1927
    :cond_6e
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1928
    .line 1929
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 1930
    .line 1931
    .line 1932
    move-result v5

    .line 1933
    const/4 v11, 0x2

    .line 1934
    if-eq v5, v11, :cond_6f

    .line 1935
    .line 1936
    move v5, v10

    .line 1937
    goto :goto_40

    .line 1938
    :cond_6f
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1939
    .line 1940
    iget-object v13, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 1941
    .line 1942
    invoke-static {v13}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 1943
    .line 1944
    .line 1945
    move-result v13

    .line 1946
    invoke-virtual {v5, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 1947
    .line 1948
    .line 1949
    move-result v5

    .line 1950
    if-gtz v5, :cond_70

    .line 1951
    .line 1952
    const/16 v5, 0x9

    .line 1953
    .line 1954
    goto :goto_40

    .line 1955
    :cond_70
    if-eqz v6, :cond_71

    .line 1956
    .line 1957
    const/16 v5, 0x11

    .line 1958
    .line 1959
    goto :goto_40

    .line 1960
    :cond_71
    const/16 v5, 0xa

    .line 1961
    .line 1962
    goto :goto_40

    .line 1963
    :goto_3f
    move v5, v7

    .line 1964
    :goto_40
    if-nez v8, :cond_72

    .line 1965
    .line 1966
    if-eqz v9, :cond_75

    .line 1967
    .line 1968
    :cond_72
    if-nez v3, :cond_75

    .line 1969
    .line 1970
    if-nez v7, :cond_75

    .line 1971
    .line 1972
    iget-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1973
    .line 1974
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 1975
    .line 1976
    .line 1977
    move-result v6

    .line 1978
    if-nez v6, :cond_73

    .line 1979
    .line 1980
    move/from16 v17, v10

    .line 1981
    .line 1982
    goto :goto_41

    .line 1983
    :cond_73
    iget-boolean v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    .line 1984
    .line 1985
    if-eqz v6, :cond_74

    .line 1986
    .line 1987
    const/16 v6, 0xf

    .line 1988
    .line 1989
    move/from16 v17, v6

    .line 1990
    .line 1991
    goto :goto_41

    .line 1992
    :cond_74
    if-eqz v9, :cond_75

    .line 1993
    .line 1994
    const/16 v17, 0x10

    .line 1995
    .line 1996
    goto :goto_41

    .line 1997
    :cond_75
    move/from16 v17, v7

    .line 1998
    .line 1999
    goto :goto_41

    .line 2000
    :cond_76
    move/from16 v19, v11

    .line 2001
    .line 2002
    const/4 v11, 0x2

    .line 2003
    const/16 v16, 0x4

    .line 2004
    .line 2005
    const/4 v5, 0x0

    .line 2006
    const/16 v17, 0x0

    .line 2007
    .line 2008
    :goto_41
    if-eqz v0, :cond_77

    .line 2009
    .line 2010
    move v8, v11

    .line 2011
    goto :goto_42

    .line 2012
    :cond_77
    const/4 v8, 0x0

    .line 2013
    :goto_42
    or-int v6, v3, v8

    .line 2014
    .line 2015
    if-eqz v12, :cond_78

    .line 2016
    .line 2017
    move/from16 v9, v16

    .line 2018
    .line 2019
    goto :goto_43

    .line 2020
    :cond_78
    const/4 v9, 0x0

    .line 2021
    :goto_43
    or-int/2addr v6, v9

    .line 2022
    if-gtz v6, :cond_79

    .line 2023
    .line 2024
    if-eqz v19, :cond_7f

    .line 2025
    .line 2026
    :cond_79
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2027
    .line 2028
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 2029
    .line 2030
    .line 2031
    move-result v7

    .line 2032
    const-string v8, "INTERRUPTIVENESS: "

    .line 2033
    .line 2034
    const-string v9, "NotifAttentionHelper"

    .line 2035
    .line 2036
    sget-boolean v10, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    .line 2037
    .line 2038
    if-eqz v7, :cond_7a

    .line 2039
    .line 2040
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2041
    .line 2042
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v7

    .line 2046
    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    .line 2047
    .line 2048
    .line 2049
    move-result v7

    .line 2050
    if-eqz v7, :cond_7a

    .line 2051
    .line 2052
    if-eqz v10, :cond_7c

    .line 2053
    .line 2054
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2055
    .line 2056
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2057
    .line 2058
    .line 2059
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2060
    .line 2061
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v8

    .line 2065
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    .line 2067
    .line 2068
    const-string v8, " is not interruptive: summary"

    .line 2069
    .line 2070
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v7

    .line 2077
    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .line 2079
    .line 2080
    goto :goto_44

    .line 2081
    :cond_7a
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 2082
    .line 2083
    if-eqz v7, :cond_7b

    .line 2084
    .line 2085
    if-eqz v10, :cond_7c

    .line 2086
    .line 2087
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2088
    .line 2089
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2090
    .line 2091
    .line 2092
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2093
    .line 2094
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v8

    .line 2098
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    .line 2100
    .line 2101
    const-string v8, " is not interruptive: bubble"

    .line 2102
    .line 2103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v7

    .line 2110
    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    .line 2112
    .line 2113
    goto :goto_44

    .line 2114
    :cond_7b
    if-lez v6, :cond_7c

    .line 2115
    .line 2116
    const/4 v7, 0x1

    .line 2117
    invoke-virtual {v2, v7}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 2118
    .line 2119
    .line 2120
    if-eqz v10, :cond_7c

    .line 2121
    .line 2122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2123
    .line 2124
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2125
    .line 2126
    .line 2127
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2128
    .line 2129
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v8

    .line 2133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    .line 2135
    .line 2136
    const-string v8, " is interruptive: alerted"

    .line 2137
    .line 2138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    .line 2140
    .line 2141
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v7

    .line 2145
    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    .line 2147
    .line 2148
    :cond_7c
    :goto_44
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v7

    .line 2152
    const/16 v8, 0xc7

    .line 2153
    .line 2154
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v7

    .line 2158
    const/4 v8, 0x1

    .line 2159
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v7

    .line 2163
    invoke-virtual {v7, v6}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v6

    .line 2167
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2168
    .line 2169
    .line 2170
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2171
    .line 2172
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v6

    .line 2176
    if-eqz v3, :cond_7d

    .line 2177
    .line 2178
    move v7, v8

    .line 2179
    goto :goto_45

    .line 2180
    :cond_7d
    move/from16 v7, v17

    .line 2181
    .line 2182
    :goto_45
    if-eqz v0, :cond_7e

    .line 2183
    .line 2184
    move v11, v8

    .line 2185
    goto :goto_46

    .line 2186
    :cond_7e
    move v11, v5

    .line 2187
    :goto_46
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 2188
    .line 2189
    .line 2190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v7

    .line 2194
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v8

    .line 2198
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v9

    .line 2202
    const/4 v10, 0x0

    .line 2203
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v10

    .line 2207
    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/Object;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v6

    .line 2211
    const/16 v7, 0x6b8c

    .line 2212
    .line 2213
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2214
    .line 2215
    .line 2216
    :cond_7f
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2217
    .line 2218
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v6

    .line 2222
    iget-boolean v7, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 2223
    .line 2224
    if-eqz v7, :cond_80

    .line 2225
    .line 2226
    iget v7, v6, Landroid/app/Notification;->flags:I

    .line 2227
    .line 2228
    const/16 v8, 0x8

    .line 2229
    .line 2230
    and-int/2addr v7, v8

    .line 2231
    if-nez v7, :cond_83

    .line 2232
    .line 2233
    :cond_80
    iget v6, v6, Landroid/app/Notification;->flags:I

    .line 2234
    .line 2235
    and-int/lit16 v6, v6, 0x200

    .line 2236
    .line 2237
    if-nez v6, :cond_83

    .line 2238
    .line 2239
    if-eqz v0, :cond_81

    .line 2240
    .line 2241
    if-nez v3, :cond_83

    .line 2242
    .line 2243
    :cond_81
    if-eqz v0, :cond_82

    .line 2244
    .line 2245
    move/from16 v10, v17

    .line 2246
    .line 2247
    goto :goto_47

    .line 2248
    :cond_82
    move v10, v5

    .line 2249
    :goto_47
    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 2250
    .line 2251
    if-eqz v7, :cond_83

    .line 2252
    .line 2253
    iget-boolean v1, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchNotiMutedOn:Z

    .line 2254
    .line 2255
    if-eqz v1, :cond_83

    .line 2256
    .line 2257
    iget-object v1, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2258
    .line 2259
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v9

    .line 2263
    const/4 v12, 0x0

    .line 2264
    const-string/jumbo v8, "noti_muted"

    .line 2265
    .line 2266
    .line 2267
    const/4 v11, 0x0

    .line 2268
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2269
    .line 2270
    .line 2271
    :cond_83
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 2272
    .line 2273
    .line 2274
    if-nez v3, :cond_85

    .line 2275
    .line 2276
    if-eqz v0, :cond_84

    .line 2277
    .line 2278
    goto :goto_48

    .line 2279
    :cond_84
    const-wide/16 v0, -0x1

    .line 2280
    .line 2281
    goto :goto_49

    .line 2282
    :cond_85
    :goto_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2283
    .line 2284
    .line 2285
    move-result-wide v0

    .line 2286
    :goto_49
    iput-wide v0, v2, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    .line 2287
    .line 2288
    return v4
.end method

.method public final clearEffectsLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final clearSoundLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    .line 2
    .line 3
    const-string v1, "Failed clearSoundLocked: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_4

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :goto_2
    :try_start_1
    const-string v4, "NotifAttentionHelper"

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_3
    return-void

    .line 61
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 67
    .line 68
    .line 69
    :cond_2
    throw p0
.end method

.method public final clearVibrateLocked()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 11
    .line 12
    const/16 v2, -0xf

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/os/Vibrator;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "booleanState"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    and-int/lit8 v0, p2, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string p0, "listenerHints"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    and-int/lit8 v1, p2, 0x2

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    const-string p0, "listenerNoti"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    and-int/lit8 p2, p2, 0x4

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-ne p2, v2, :cond_3

    .line 46
    .line 47
    const-string p0, "listenerCall"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_3
    iget p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_4

    .line 63
    .line 64
    const-string p0, "callState"

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_4
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "\n  Notification attention state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "    "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "  mSoundNotificationKey="

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "  mVibrateNotificationKey="

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "  mDisableNotificationEffects="

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "  mCallState="

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    .line 85
    .line 86
    invoke-static {v2}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v2, "  mSystemReady="

    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v2, "  mNotificationPulseEnabled="

    .line 128
    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 133
    .line 134
    invoke-static {v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-lez v1, :cond_2

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v2, "  Lights List:"

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    :goto_0
    if-ge v2, v1, :cond_1

    .line 155
    .line 156
    add-int/lit8 v3, v1, -0x1

    .line 157
    .line 158
    if-ne v2, v3, :cond_0

    .line 159
    .line 160
    const-string v3, "  > "

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_1
    const-string p0, "  "

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    return-void
.end method

.method public getPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isInCall()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_2
    :goto_0
    return v1
.end method

.method public final isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x6

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v2, v1, :cond_1

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p1, p1, Landroid/app/Notification;->flags:I

    .line 55
    .line 56
    and-int/lit8 p1, p1, 0x4

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne p1, v1, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 84
    .line 85
    and-int/lit8 p0, p0, 0x4

    .line 86
    .line 87
    if-eqz p0, :cond_2

    .line 88
    .line 89
    :goto_0
    const/4 p0, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 p0, 0x0

    .line 92
    :goto_1
    return p0
.end method

.method public final loadUserSettings()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string/jumbo v2, "notification_light_pulse"

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 20
    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    .line 23
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0x40

    .line 23
    .line 24
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    const-class v1, Landroid/app/Notification;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget v1, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 41
    .line 42
    const/16 v3, -0x3e8

    .line 43
    .line 44
    if-ne v1, v3, :cond_1

    .line 45
    .line 46
    iget v1, v0, Landroid/app/Notification;->visibility:I

    .line 47
    .line 48
    :cond_1
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ltz p1, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    if-eq v1, p1, :cond_2

    .line 70
    .line 71
    iget-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    return-void
.end method

.method public setInCallStateOffHook(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsAutomotive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeyguardManager(Landroid/app/KeyguardManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2
    .line 3
    return-void
.end method

.method public setLights(Lcom/android/server/lights/LogicalLight;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    .line 9
    .line 10
    return-void
.end method

.method public setNotificationEffectsEnabledForAutomotive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSystemReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUserPresent(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 2
    .line 3
    return-void
.end method

.method public final updateLightsLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v2, v1

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "LED Notification does not exist: "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "NotifAttentionHelper"

    .line 54
    .line 55
    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    move-object v0, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 87
    .line 88
    iget v2, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 89
    .line 90
    iget v3, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 91
    .line 92
    iget v0, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 93
    .line 94
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 101
    .line 102
    .line 103
    :cond_5
    :goto_2
    return-void
.end method

.method public final vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Notification ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ") "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    const-string p3, "(Delayed)"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p3, ""

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 53
    .line 54
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
