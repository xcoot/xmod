.class public final Lcom/android/server/vibrator/VibrationCustomSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public LEVEL_TO_FORCE_MAGNITUDE:[I

.field public LEVEL_TO_MAGNITUDE:[I

.field public LEVEL_TO_TOUCH_MAGNITUDE:[I

.field public mCallMagnitude:I

.field public final mContext:Landroid/content/Context;

.field public mForceMagnitude:I

.field public mIsEnableIntensity:Z

.field public mIsHapticEngineSupported:Z

.field public mIsHapticSupported:Z

.field public final mLock:Ljava/lang/Object;

.field public mMaxMagnitude:I

.field public mMediaMagnitude:I

.field public mMinMagnitude:I

.field public mMotorType:I

.field public mNotiMagnitude:I

.field public final mService:Lcom/android/server/vibrator/VibratorManagerService;

.field public final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public mTouchMagnitude:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 3

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
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 23
    .line 24
    new-array v2, v1, [I

    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 27
    .line 28
    new-array v1, v1, [I

    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 31
    .line 32
    const/16 v1, 0x270f

    .line 33
    .line 34
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 35
    .line 36
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 37
    .line 38
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 39
    .line 40
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 43
    .line 44
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    .line 45
    .line 46
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 47
    .line 48
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 55
    .line 56
    sget-object p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 57
    .line 58
    if-nez p0, :cond_0

    .line 59
    .line 60
    new-instance p0, Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 66
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final loadSystemSetting(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x2

    .line 8
    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

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
