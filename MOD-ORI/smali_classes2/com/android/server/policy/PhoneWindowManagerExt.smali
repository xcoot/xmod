.class public final Lcom/android/server/policy/PhoneWindowManagerExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

.field public static final KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;


# instance fields
.field public escDialog:Landroid/app/AlertDialog;

.field public mAcceptCallHomeConsumed:Z

.field public mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppSwitchKeyConsumed:Z

.field public mAssistantAppName:Ljava/lang/String;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mBoldFontEnabled:I

.field public final mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mBootCompleted:Z

.field public final mBootMsgDialogs:Ljava/util/ArrayList;

.field public mButtonShapeEnabled:I

.field public final mContext:Landroid/content/Context;

.field public mCursorThicknessScale:F

.field public final mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public mDoublePressLaunchComponentName:Landroid/content/ComponentName;

.field public final mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

.field public final mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

.field public final mFoldSaLock:Ljava/lang/Object;

.field public final mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$16;

.field public mGlobalActionsByKeyCombnation:Z

.field public mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

.field public mIsAccessibilityShortcutVolupPower:Z

.field public mIsAiKeyDisabled:Z

.field public mIsAiKeyHandled:Z

.field public mIsAnyKeyMode:Z

.field public mIsAssistHapticEnabled:Z

.field public mIsCallOpenDictation:Z

.field public mIsCameraSensorToggleSupported:Z

.field public mIsCustomBugreportWriterEnabled:Z

.field public mIsDoubleTapPremiumWatchOn:Z

.field public mIsDoubleTapToWakeUp:Z

.field public mIsDoubleTapToWakeUpSupported:Z

.field public mIsHapticsEnabled:Z

.field public mIsHapticsSupported:Z

.field public mIsInteractionControlEnabled:Z

.field public mIsLastGesture3FingerBottom:Z

.field public mIsMicSensorToggleSupported:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsPowerKeyBlocked:Z

.field public mIsSamsungKeyboard:Z

.field public mIsScreenshotTriggered:Z

.field public mIsSktPhoneRelaxMode:Z

.field public mIsVolumeKeyBlocked:Z

.field public mIsVolumeUpKeyMode:Z

.field public mIsVolumeUpKeyPressed:Z

.field public mIssueTrackerLoggedIn:Z

.field public final mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public mKeyEventInjectionThread:Ljava/lang/Thread;

.field public final mKeyUpTime:[J

.field public mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

.field public final mLastDexMode:I

.field public final mLock:Ljava/lang/Object;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public mLockTaskModeState:I

.field public final mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

.field public final mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mNavBarImeBtnEnabled:Z

.field public final mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public final mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public mPenInsertIntent:Landroid/content/Intent;

.field public mPenSoundEnabled:Z

.field public mPenSoundFilePath:Ljava/lang/String;

.field public mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

.field public mPenState:I

.field public final mPenType:I

.field public mPenVibrationEnabled:Z

.field public mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public final mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field public mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field public final mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mQuadruplePressOnPowerBehavior:I

.field public mQuickLaunchCameraBehavior:I

.field public final mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public mQuintuplePressOnPowerBehavior:I

.field public mScreenOffMemoEnabled:Z

.field public mScreenOffMemoIntent:Landroid/content/Intent;

.field public mScreenshotEnabled:Z

.field public mScreenshotTriggeredTime:J

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public final mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mShowKeyboardBtnEnabled:Z

.field public mShownEsc:Z

.field public mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field public final mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

.field public mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

.field public mToast:Landroid/widget/Toast;

.field public mTopActivity:Landroid/content/ComponentName;

.field public mTspStateController:Lcom/android/server/wm/TspStateController;

.field public mTvModeDoublePressEnabled:Z

.field public mTvModeEnabled:Z

.field public final mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public final mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public mVibrator:Landroid/os/Vibrator;

.field public final mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

.field public mWakeAndUnlockTriggered:Z

.field public mWakingUpReason:I

.field public final mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const/16 v3, 0xbb

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/16 v5, 0x18

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x19

    .line 52
    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x3f7

    .line 61
    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const/16 v7, 0x437

    .line 70
    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const/16 v7, 0x436

    .line 79
    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    const/16 v7, 0x55

    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const/16 v7, 0x4f

    .line 97
    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    const/16 v7, 0x78

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v0, Landroid/util/ArraySet;

    .line 115
    .line 116
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;

    .line 120
    .line 121
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const/16 v1, 0x14

    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    const/16 v1, 0x17

    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerServiceExt;)V
    .locals 6

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
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 42
    .line 43
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 56
    .line 57
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    new-array v3, v2, [J

    .line 89
    .line 90
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 93
    .line 94
    const-wide/16 v3, 0x0

    .line 95
    .line 96
    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 110
    .line 111
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 112
    .line 113
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 117
    .line 118
    .line 119
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    .line 122
    .line 123
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 124
    .line 125
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 126
    .line 127
    const/4 v5, 0x5

    .line 128
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 129
    .line 130
    .line 131
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 132
    .line 133
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 134
    .line 135
    const/4 v5, 0x6

    .line 136
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 137
    .line 138
    .line 139
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 140
    .line 141
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 142
    .line 143
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 144
    .line 145
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 146
    .line 147
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 148
    .line 149
    const/4 v4, 0x3

    .line 150
    invoke-direct {v2, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 151
    .line 152
    .line 153
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 154
    .line 155
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    invoke-direct {v2, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 159
    .line 160
    .line 161
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 162
    .line 163
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 164
    .line 165
    const/4 v4, 0x1

    .line 166
    invoke-direct {v2, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 167
    .line 168
    .line 169
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 170
    .line 171
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 172
    .line 173
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 174
    .line 175
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 176
    .line 177
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 178
    .line 179
    new-instance v2, Ljava/lang/Object;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    .line 185
    .line 186
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 187
    .line 188
    const/4 v3, -0x1

    .line 189
    if-eqz v2, :cond_0

    .line 190
    .line 191
    sget v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_USP_LEVEL:I

    .line 192
    .line 193
    rem-int/lit8 v2, v2, 0xa

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_0
    move v2, v3

    .line 197
    :goto_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 198
    .line 199
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 200
    .line 201
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 202
    .line 203
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 204
    .line 205
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 206
    .line 207
    const/4 v4, 0x4

    .line 208
    invoke-direct {v2, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 209
    .line 210
    .line 211
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 212
    .line 213
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 214
    .line 215
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 216
    .line 217
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 218
    .line 219
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/4 v4, 0x3

    .line 222
    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 226
    .line 227
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$12;

    .line 228
    .line 229
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$12;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 230
    .line 231
    .line 232
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

    .line 233
    .line 234
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 235
    .line 236
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 237
    .line 238
    new-instance v2, Landroid/util/SparseIntArray;

    .line 239
    .line 240
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 244
    .line 245
    new-instance v2, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 251
    .line 252
    new-instance v2, Ljava/lang/Object;

    .line 253
    .line 254
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    .line 258
    .line 259
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$16;

    .line 260
    .line 261
    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 262
    .line 263
    .line 264
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$16;

    .line 265
    .line 266
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 267
    .line 268
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 269
    .line 270
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    invoke-direct {v2, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 274
    .line 275
    .line 276
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

    .line 277
    .line 278
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 279
    .line 280
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 281
    .line 282
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    .line 283
    .line 284
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    .line 285
    .line 286
    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCursorThicknessScale:F

    .line 288
    .line 289
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 290
    .line 291
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    .line 294
    .line 295
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 296
    .line 297
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 298
    .line 299
    iput-object p0, p2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 300
    .line 301
    new-instance p2, Lcom/android/server/policy/KeyCustomizationManager;

    .line 302
    .line 303
    invoke-direct {p2, p1, p0}, Lcom/android/server/policy/KeyCustomizationManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 304
    .line 305
    .line 306
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 307
    .line 308
    return-void
.end method

.method public static getFillInIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "afterKeyguardGone"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    const-string v1, "ignoreKeyguardState"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "dismissIfInsecure"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static isCameraRunning()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "service.camera.running"

    .line 2
    .line 3
    .line 4
    const-string v1, "0"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "isCameraRunning="

    .line 17
    .line 18
    const-string v2, "PhoneWindowManagerExt"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public static saLogForBasic(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "PhoneWindowManagerExt"

    .line 8
    .line 9
    const-string/jumbo v0, "saLogForBasic - eventId is null"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "det"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    const-string p0, "PhoneWindowManagerExt"

    .line 29
    .line 30
    const-string/jumbo p1, "saLogForBasic - eventId or details are null"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final addSingleKeyGestureRule(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "PhoneWindowManagerExt"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p0, "Already added rule of keyCode "

    .line 14
    .line 15
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x3

    .line 20
    if-eq p1, v1, :cond_8

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq p1, v1, :cond_7

    .line 24
    .line 25
    const/16 v1, 0x18

    .line 26
    .line 27
    if-eq p1, v1, :cond_6

    .line 28
    .line 29
    const/16 v1, 0x19

    .line 30
    .line 31
    if-eq p1, v1, :cond_5

    .line 32
    .line 33
    const/16 v1, 0x4f

    .line 34
    .line 35
    if-eq p1, v1, :cond_4

    .line 36
    .line 37
    const/16 v1, 0xbb

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    const/16 v1, 0x3f7

    .line 42
    .line 43
    if-eq p1, v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x437

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    const-string/jumbo p0, "updateSingleKeyGestureRule, keyCode was wrong. "

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    move-object p0, p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 66
    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_8
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_1
    if-eqz p0, :cond_9

    .line 114
    .line 115
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 118
    .line 119
    .line 120
    :cond_9
    return-void
.end method

.method public final callDictation(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "callDictation, method="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", keyCode="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PhoneWindowManagerExt"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "keyCode"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants$UriTags;->DICTATION:Landroid/net/Uri;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final canDispatchingSystemKeyEvent(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I
    .locals 2

    .line 1
    const-string/jumbo v0, "system key requested code="

    .line 2
    .line 3
    .line 4
    const-string v1, "PhoneWindowManagerExt"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget p2, p2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 20
    .line 21
    const/16 v0, 0x7f8

    .line 22
    .line 23
    if-ne p2, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string/jumbo p2, "reason"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p2, "Can not dispatch key event because of expanded status bar, keyCode="

    .line 42
    .line 43
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, -0x1

    .line 57
    return p0

    .line 58
    :cond_0
    const-string/jumbo p0, "sec check system key before dispatching, keyCode="

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public final clearKeyCustomizationInfoByAction(III)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    :goto_0
    if-ge v5, v4, :cond_3

    .line 20
    .line 21
    aget v7, v3, v5

    .line 22
    .line 23
    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Landroid/util/SparseArray;

    .line 32
    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 41
    .line 42
    if-nez v9, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 46
    .line 47
    if-ne v9, p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 50
    .line 51
    .line 52
    const/4 v6, -0x1

    .line 53
    invoke-virtual {v1, v7, p2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 54
    .line 55
    .line 56
    move v6, v0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v5, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    if-eqz v6, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 65
    .line 66
    .line 67
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v6, :cond_5

    .line 69
    .line 70
    const-string p0, "KeyCustomizationManager"

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "clearKeyCustomizationInfoByAction, Requested info is empty. "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, " keyCode="

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " "

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void

    .line 118
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method

.method public final clearKeyCustomizationInfoByKeyCode(II)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    move v7, v6

    .line 20
    :goto_0
    if-ge v6, v4, :cond_2

    .line 21
    .line 22
    aget v8, v3, v6

    .line 23
    .line 24
    invoke-virtual {v1, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    check-cast v9, Landroid/util/SparseArray;

    .line 33
    .line 34
    if-eqz v9, :cond_1

    .line 35
    .line 36
    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    if-nez v10, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    .line 45
    .line 46
    const/4 v7, -0x1

    .line 47
    invoke-virtual {v1, v8, p2, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 48
    .line 49
    .line 50
    move v7, v0

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/2addr v6, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v7, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 60
    .line 61
    .line 62
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez v7, :cond_4

    .line 64
    .line 65
    const-string p0, "KeyCustomizationManager"

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "clearKeyCustomizationInfoByKeyCode, Requested info is empty. "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " keyCode="

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_4
    const/16 p1, 0x1a

    .line 98
    .line 99
    if-ne p2, p1, :cond_7

    .line 100
    .line 101
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 102
    .line 103
    array-length v1, p1

    .line 104
    :goto_2
    if-ge v5, v1, :cond_8

    .line 105
    .line 106
    aget v2, p1, v5

    .line 107
    .line 108
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 109
    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    and-int/lit8 v3, v2, 0x10

    .line 113
    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    and-int/lit8 v3, v2, 0x40

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    .line 123
    .line 124
    .line 125
    :goto_3
    add-int/2addr v5, v0

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 145
    .line 146
    if-nez p1, :cond_9

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 150
    .line 151
    .line 152
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 165
    .line 166
    if-nez p0, :cond_a

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_a
    iget-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 170
    .line 171
    const-wide/16 v0, 0x0

    .line 172
    .line 173
    cmp-long v2, p1, v0

    .line 174
    .line 175
    if-eqz v2, :cond_b

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_b
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 179
    .line 180
    :goto_5
    cmp-long p1, v0, p1

    .line 181
    .line 182
    if-nez p1, :cond_c

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_c
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 186
    .line 187
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 188
    .line 189
    :goto_6
    return-void

    .line 190
    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p0
.end method

.method public final doublePressLaunchPolicy(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "PhoneWindowManagerExt"

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "double press was blocked because UserSetup isn\'t completed"

    .line 13
    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const-string/jumbo v1, "ril.domesticOtaStart"

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v4, "true"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string p0, "double press was blocked by OTA status"

    .line 35
    .line 36
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string p0, "double press was blocked by SimLock"

    .line 49
    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const-string p0, "double press was blocked by CarrierLock"

    .line 61
    .line 62
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    const-string p0, "double press was blocked because cover was closed"

    .line 81
    .line 82
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 87
    .line 88
    const/16 v1, 0x8

    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v0, "skip double press keyCode("

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, "), requestedSystemKey"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return v2

    .line 120
    :cond_5
    const/4 p1, 0x3

    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_6

    .line 127
    .line 128
    const-string p0, "double press was blocked by interaction control"

    .line 129
    .line 130
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v2

    .line 134
    :cond_6
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 12

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "--- PhoneWindowManagerExt ---"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "KeyCustomization info state: "

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 38
    .line 39
    iget v3, v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "All KeyCustomizationInfo"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 53
    .line 54
    array-length v4, v3

    .line 55
    const/4 v5, 0x0

    .line 56
    move v6, v5

    .line 57
    :goto_0
    if-ge v6, v4, :cond_3

    .line 58
    .line 59
    aget v7, v3, v6

    .line 60
    .line 61
    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v7, " ---"

    .line 83
    .line 84
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-ge v7, v9, :cond_2

    .line 93
    .line 94
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-nez v10, :cond_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    const-string v10, "    "

    .line 108
    .line 109
    const-string v11, "    KEY_CODE("

    .line 110
    .line 111
    invoke-static {p1, v10, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v11, ") :"

    .line 123
    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto/16 :goto_f

    .line 145
    .line 146
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v3, "Last KeyCustomizationInfo"

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 158
    .line 159
    array-length v4, v3

    .line 160
    move v6, v5

    .line 161
    :goto_4
    if-ge v6, v4, :cond_5

    .line 162
    .line 163
    aget v7, v3, v6

    .line 164
    .line 165
    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-nez v9, :cond_4

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v7, " ---"

    .line 187
    .line 188
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 192
    .line 193
    .line 194
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 198
    .line 199
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v4, "HotKeys="

    .line 212
    .line 213
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    move v4, v5

    .line 217
    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-ge v4, v6, :cond_7

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    check-cast v7, Landroid/content/ComponentName;

    .line 232
    .line 233
    if-nez v7, :cond_6

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v8, " KeyCode "

    .line 240
    .line 241
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    .line 246
    .line 247
    const-string v6, ", componentName: "

    .line 248
    .line 249
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_7
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_8

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v3, "ownerPackageList:"

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_8

    .line 289
    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v7, "    "

    .line 305
    .line 306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v3, "UserId:"

    .line 324
    .line 325
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 329
    .line 330
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 331
    .line 332
    .line 333
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v2, "XmlFileErrorCode="

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 348
    .line 349
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string/jumbo v1, "maxMultiPressPowerCount="

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 365
    .line 366
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string/jumbo v1, "mQuadruplePressOnPowerBehavior="

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 383
    .line 384
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 392
    .line 393
    monitor-enter v1

    .line 394
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v2, "mFocusedWindow="

    .line 398
    .line 399
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v2, v1, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v2, "SystemKeyInfo="

    .line 411
    .line 412
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    sget-object v2, Lcom/android/server/policy/SystemKeyManager;->SUPPORT_KEYCODE:[I

    .line 416
    .line 417
    move v3, v5

    .line 418
    :goto_9
    const/4 v4, 0x7

    .line 419
    if-ge v3, v4, :cond_c

    .line 420
    .line 421
    aget v4, v2, v3

    .line 422
    .line 423
    iget-object v6, v1, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 424
    .line 425
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    check-cast v4, Ljava/util/HashMap;

    .line 430
    .line 431
    if-nez v4, :cond_9

    .line 432
    .line 433
    goto :goto_b

    .line 434
    :cond_9
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-eqz v6, :cond_b

    .line 447
    .line 448
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    check-cast v6, Ljava/util/Map$Entry;

    .line 453
    .line 454
    if-nez v6, :cond_a

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_a
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    check-cast v6, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    .line 462
    .line 463
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string v7, "      "

    .line 467
    .line 468
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v6}, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto :goto_a

    .line 479
    :catchall_1
    move-exception p0

    .line 480
    goto/16 :goto_e

    .line 481
    .line 482
    :cond_b
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_c
    iget-object v2, v1, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-eqz v3, :cond_d

    .line 496
    .line 497
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    check-cast v3, Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string v4, "      "

    .line 507
    .line 508
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const-string v4, "META_KEY="

    .line 512
    .line 513
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_d
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 521
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    .line 522
    .line 523
    if-eqz v1, :cond_e

    .line 524
    .line 525
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    const-string v1, "mIsScreenshotTriggered="

    .line 529
    .line 530
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 534
    .line 535
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 536
    .line 537
    .line 538
    const-string v1, " mGlobalActionsByKeyCombination="

    .line 539
    .line 540
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    .line 544
    .line 545
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 546
    .line 547
    .line 548
    :cond_e
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 549
    .line 550
    if-eqz v1, :cond_f

    .line 551
    .line 552
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string/jumbo v1, "mQuintuplePressOnPowerBehavior="

    .line 556
    .line 557
    .line 558
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 562
    .line 563
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    const-string v1, "mIsHapticsEnabled="

    .line 574
    .line 575
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 579
    .line 580
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 581
    .line 582
    .line 583
    const-string v1, " mIsAssistHapticEnabled="

    .line 584
    .line 585
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 589
    .line 590
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 591
    .line 592
    .line 593
    const-string v1, " mIsHapticsSupported="

    .line 594
    .line 595
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 599
    .line 600
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 601
    .line 602
    .line 603
    const-string v1, " mNavBarVirtualKeyHapticFeedbackEnabled="

    .line 604
    .line 605
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 609
    .line 610
    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 611
    .line 612
    const-string v2, "cameraSensorToggleSupported="

    .line 613
    .line 614
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    .line 616
    .line 617
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 618
    .line 619
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    const-string/jumbo v1, "micSensorToggleSupported="

    .line 626
    .line 627
    .line 628
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 632
    .line 633
    const-string v2, "mIsInteractionControlEnabled="

    .line 634
    .line 635
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 636
    .line 637
    .line 638
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 639
    .line 640
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 641
    .line 642
    .line 643
    const-string v1, " mIsPowerKeyBlocked="

    .line 644
    .line 645
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 649
    .line 650
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 651
    .line 652
    .line 653
    const-string v1, " mIsVolumeKeyBlocked="

    .line 654
    .line 655
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 659
    .line 660
    const-string v2, "mIsDoubleTapToWakeUpSupported="

    .line 661
    .line 662
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    .line 664
    .line 665
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 666
    .line 667
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 668
    .line 669
    .line 670
    const-string v1, " mIsDoubleTapToWakeUp="

    .line 671
    .line 672
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 676
    .line 677
    const-string/jumbo v2, "mLockTaskModeState="

    .line 678
    .line 679
    .line 680
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 681
    .line 682
    .line 683
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 684
    .line 685
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 686
    .line 687
    .line 688
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 689
    .line 690
    if-eqz v1, :cond_11

    .line 691
    .line 692
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    const-string v1, "SPen state="

    .line 696
    .line 697
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 701
    .line 702
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 703
    .line 704
    .line 705
    const-string v1, " type="

    .line 706
    .line 707
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 711
    .line 712
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 713
    .line 714
    .line 715
    const-string v1, " vibrationEnabled="

    .line 716
    .line 717
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 721
    .line 722
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 723
    .line 724
    .line 725
    const-string v1, " soundEnabled="

    .line 726
    .line 727
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 731
    .line 732
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 733
    .line 734
    .line 735
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 736
    .line 737
    if-nez v1, :cond_10

    .line 738
    .line 739
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    const-string v1, "SoundInfo is null"

    .line 743
    .line 744
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    goto :goto_d

    .line 748
    :cond_10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    const-string v1, "PenSoundInfo attachSoundPath="

    .line 752
    .line 753
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 757
    .line 758
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 759
    .line 760
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    const-string v1, " detachSoundPath="

    .line 764
    .line 765
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 769
    .line 770
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 771
    .line 772
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    const-string v1, " attachSoundId="

    .line 776
    .line 777
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 781
    .line 782
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 783
    .line 784
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 785
    .line 786
    .line 787
    const-string v1, " detachSoundId="

    .line 788
    .line 789
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 793
    .line 794
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 795
    .line 796
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 797
    .line 798
    .line 799
    :cond_11
    :goto_d
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 800
    .line 801
    if-eqz v1, :cond_12

    .line 802
    .line 803
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    const-string/jumbo v1, "mScreenOffMemoEnabled="

    .line 807
    .line 808
    .line 809
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 813
    .line 814
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 815
    .line 816
    .line 817
    :cond_12
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    .line 818
    .line 819
    if-eqz v1, :cond_13

    .line 820
    .line 821
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    const-string/jumbo v1, "mWakeAndUnlockTriggered="

    .line 825
    .line 826
    .line 827
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 831
    .line 832
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 833
    .line 834
    .line 835
    const-string v1, " mWakeAndUnfoldedTriggered="

    .line 836
    .line 837
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 841
    .line 842
    .line 843
    :cond_13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    const-string v1, "mIsPogoKeyboardConnected="

    .line 847
    .line 848
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 852
    .line 853
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 854
    .line 855
    .line 856
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 857
    .line 858
    if-eqz v1, :cond_14

    .line 859
    .line 860
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    const-string v1, "mIsCallOpenDictation="

    .line 864
    .line 865
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 869
    .line 870
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 871
    .line 872
    .line 873
    :cond_14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    const-string/jumbo v1, "mWakingUpReason="

    .line 877
    .line 878
    .line 879
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 883
    .line 884
    invoke-static {v1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 892
    .line 893
    if-eqz v1, :cond_15

    .line 894
    .line 895
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    const-string v1, "mIsCalledOpenDictationXCoverTop="

    .line 899
    .line 900
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 904
    .line 905
    iget-boolean v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 906
    .line 907
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 908
    .line 909
    .line 910
    :cond_15
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    .line 911
    .line 912
    if-eqz v1, :cond_16

    .line 913
    .line 914
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    const-string v1, "mIsDoubleTapPremiumWatchOn="

    .line 918
    .line 919
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 923
    .line 924
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 925
    .line 926
    .line 927
    :cond_16
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 928
    .line 929
    if-eqz v1, :cond_17

    .line 930
    .line 931
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    const-string v0, "mIsAiKeyDisabled="

    .line 935
    .line 936
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    .line 940
    .line 941
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 942
    .line 943
    .line 944
    const-string v0, " mIsAiKeyHandled="

    .line 945
    .line 946
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 950
    .line 951
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 952
    .line 953
    .line 954
    :cond_17
    return-void

    .line 955
    :goto_e
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 956
    throw p0

    .line 957
    :goto_f
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 958
    throw p0
.end method

.method public final externalKeyboardPolicy()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 2
    .line 3
    const-string v1, "PhoneWindowManagerExt"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "preCondition : Boot is not completed"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "preCondition : User setup is not completed"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string/jumbo p0, "preCondition : Keyguard is shown"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const-string/jumbo p0, "preCondition : Factory binary"

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const-string/jumbo p0, "preCondition : Automatic test mode"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    return v2

    .line 76
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 85
    .line 86
    xor-int/2addr v0, v2

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 90
    .line 91
    if-nez p0, :cond_6

    .line 92
    .line 93
    return v2

    .line 94
    :cond_6
    const/4 p0, 0x0

    .line 95
    return p0
.end method

.method public final getAIPackages()Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.intent.action.AI_ASSIST"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 17
    .line 18
    const/high16 v2, 0xc0000

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object v0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "audio"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final getAvailableDictation()Z
    .locals 10

    .line 1
    const-string v0, "NAME"

    .line 2
    .line 3
    const-string/jumbo v1, "voice_input_side_key_status"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    const/4 v8, 0x1

    .line 11
    const/4 v9, 0x0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string p0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 19
    .line 20
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v9, :cond_3

    .line 32
    .line 33
    :goto_0
    move p0, v8

    .line 34
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, -0x1

    .line 45
    if-eq v2, v3, :cond_0

    .line 46
    .line 47
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    const-string v2, "VALUE"

    .line 74
    .line 75
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 80
    .line 81
    .line 82
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 p0, 0x0

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_5

    .line 90
    :catch_0
    move-exception v0

    .line 91
    move v8, p0

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    move v8, p0

    .line 94
    :cond_3
    if-eqz v9, :cond_4

    .line 95
    .line 96
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :catch_1
    move-exception v0

    .line 101
    :goto_3
    :try_start_2
    const-string p0, "PhoneWindowManagerExt"

    .line 102
    .line 103
    const-string v1, "Error while get voice_input_side_key_status value "

    .line 104
    .line 105
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    if-eqz v9, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    :goto_4
    return v8

    .line 112
    :goto_5
    if-eqz v9, :cond_5

    .line 113
    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 115
    .line 116
    .line 117
    :cond_5
    throw p0
.end method

.method public final getFreeformLaunchBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "PhoneWindowManagerExt"

    .line 12
    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v4, 0x2

    .line 36
    if-ne v0, v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    .line 41
    int-to-float v4, p0

    .line 42
    const v5, 0x3f333333    # 0.7f

    .line 43
    .line 44
    .line 45
    mul-float/2addr v4, v5

    .line 46
    float-to-int v4, v4

    .line 47
    add-int/lit8 p0, p0, -0x32

    .line 48
    .line 49
    sub-int/2addr v3, v2

    .line 50
    invoke-direct {v0, v4, v2, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    int-to-float v0, v3

    .line 55
    const v2, 0x3e8ccccd    # 0.275f

    .line 56
    .line 57
    .line 58
    mul-float/2addr v0, v2

    .line 59
    float-to-int v0, v0

    .line 60
    new-instance v2, Landroid/graphics/Rect;

    .line 61
    .line 62
    int-to-float v4, p0

    .line 63
    const v5, 0x3f051eb8    # 0.52f

    .line 64
    .line 65
    .line 66
    mul-float/2addr v4, v5

    .line 67
    float-to-int v4, v4

    .line 68
    add-int/lit8 p0, p0, -0x32

    .line 69
    .line 70
    sub-int/2addr v3, v0

    .line 71
    invoke-direct {v2, v4, v0, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .line 73
    .line 74
    move-object v0, v2

    .line 75
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "launch bound for focused display : "

    .line 78
    .line 79
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "Focused display is null, id="

    .line 100
    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 105
    .line 106
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/graphics/Rect;

    .line 119
    .line 120
    const/16 p0, 0x3e8

    .line 121
    .line 122
    invoke-direct {v0, v2, v2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-object v0
.end method

.method public final getPreferredActivity()Landroid/content/ComponentName;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.intent.action.AI_ASSIST"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 17
    .line 18
    const/high16 v2, 0xc0000

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    return-object p0
.end method

.method public final getVisibleAiTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAIPackages()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, p0

    .line 38
    check-cast v3, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v0, "visibleTask.packageName="

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "PhoneWindowManagerExt"

    .line 68
    .line 69
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public final handleLongPressOnHomeWithPolicy(IJ)Z
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    const/4 v8, 0x3

    .line 3
    const/4 v9, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->longPressOnHomePolicy()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v10, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v10

    .line 12
    :cond_0
    iget-object v11, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 13
    .line 14
    iget v0, v11, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v10

    .line 19
    :cond_1
    sget-boolean v12, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 20
    .line 21
    const-string v13, "PhoneWindowManagerExt"

    .line 22
    .line 23
    const/4 v14, 0x1

    .line 24
    if-eqz v12, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    :cond_2
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v4, "Home - Long Press"

    .line 48
    .line 49
    move-object v0, p0

    .line 50
    move v2, v10

    .line 51
    move v5, v14

    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string v0, "home long press haptic disabled"

    .line 57
    .line 58
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_0
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 62
    .line 63
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 64
    .line 65
    if-eq v0, v14, :cond_d

    .line 66
    .line 67
    if-eq v0, v9, :cond_7

    .line 68
    .line 69
    if-eq v0, v8, :cond_6

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    if-eq v0, v1, :cond_5

    .line 73
    .line 74
    const/16 v1, 0x65

    .line 75
    .line 76
    if-eq v0, v1, :cond_5

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "Undefined long press on home behavior: "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget v1, v11, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 86
    .line 87
    invoke-static {v0, v1, v13}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_5
    if-eqz v12, :cond_e

    .line 93
    .line 94
    invoke-virtual {p0, v10, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_7
    const/4 v6, 0x0

    .line 105
    const/4 v3, 0x5

    .line 106
    move/from16 v2, p1

    .line 107
    .line 108
    move-wide/from16 v4, p2

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 114
    .line 115
    if-eqz v0, :cond_e

    .line 116
    .line 117
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    const-string v0, "None"

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const/4 v1, -0x1

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    sparse-switch v2, :sswitch_data_0

    .line 139
    .line 140
    .line 141
    :goto_1
    move v8, v1

    .line 142
    goto :goto_2

    .line 143
    :sswitch_0
    const-string v2, "com.sec.android.app.launcher/.search.SearchActivity"

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_c

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :sswitch_1
    const-string v2, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_9

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_9
    move v8, v9

    .line 162
    goto :goto_2

    .line 163
    :sswitch_2
    const-string v2, "com.samsung.android.bixby.agent/.mainui.voiceinteraction.MainVoiceInteractionService"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_a

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_a
    const/4 v8, 0x1

    .line 173
    goto :goto_2

    .line 174
    :sswitch_3
    const-string v2, "com.sec.android.app.sbrowser/.SBrowserMainActivity"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_b

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_b
    const/4 v8, 0x0

    .line 184
    :cond_c
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :pswitch_0
    const-string v0, "Finder"

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :pswitch_1
    const-string v0, "Google assistant"

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :pswitch_2
    const-string v0, "Bixby voice"

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :pswitch_3
    const-string v0, "Samsung internet"

    .line 200
    .line 201
    :goto_3
    const-string v1, "NAVIB1003"

    .line 202
    .line 203
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    .line 208
    .line 209
    .line 210
    :cond_e
    :goto_4
    return v14

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x58668b19 -> :sswitch_3
        -0x2235b7cf -> :sswitch_2
        0x303d0d00 -> :sswitch_1
        0x6492b988 -> :sswitch_0
    .end sparse-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleLongPressOnRecent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0xbb

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    :try_start_0
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v0, "PhoneWindowManagerExt"

    .line 47
    .line 48
    const-string v1, "Unable to reach activity manager"

    .line 49
    .line 50
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final hasMetaKeyPass()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2
    .line 3
    const-string v0, "hasMetaKeyPass() : MetaKey is blocked by componentName="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 11
    .line 12
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "SystemKeyManager"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    const/4 p0, 0x0

    .line 43
    :goto_1
    return p0

    .line 44
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method public final hasRequestedActionBlockKeyEvent(IIZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    const-string v1, "Key was blocked by KeyCustomizationPolicy. keyCode="

    .line 20
    .line 21
    const-string v2, "PhoneWindowManagerExt"

    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    iget p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 31
    .line 32
    const/16 p2, 0xa

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const p3, 0x1040718

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p0, 0x2

    .line 53
    return p0

    .line 54
    :cond_2
    return v1
.end method

.method public final hasSingleKeyRule(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x18

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x19

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x4f

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0xbb

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x3f7

    .line 24
    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x437

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->init(Lcom/android/server/policy/PhoneWindowManagerExt$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManagerExt$Injector;)V
    .locals 21

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 3
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 4
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    const-string v3, "default_input_method"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 7
    :cond_1
    const-string v3, "any_screen_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 8
    const-string/jumbo v3, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 9
    const-string/jumbo v3, "show_keyboard_button"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v5, 0xb

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 10
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    if-eqz v3, :cond_2

    .line 11
    const-string/jumbo v4, "pen_attach_detach_vibration"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v6, 0xc

    invoke-direct {v5, v1, v2, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 12
    const-string/jumbo v4, "spen_feedback_sound"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v6, 0xd

    invoke-direct {v5, v1, v2, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 13
    const-string/jumbo v4, "pen_detachment_notification"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 14
    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v4, :cond_3

    .line 15
    const-string/jumbo v5, "screen_off_memo"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v7, 0xe

    invoke-direct {v6, v1, v2, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 16
    :cond_3
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v5, :cond_4

    .line 17
    const-string v5, "double_tab_launch"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 18
    :cond_4
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    const-string v6, "double_tab_launch_component"

    const-string/jumbo v7, "pwrkey_owner_status"

    const-string/jumbo v8, "tvmode_state"

    if-eqz v5, :cond_5

    .line 19
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 20
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 21
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 22
    :cond_5
    const-string v9, "haptic_feedback_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0xf

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 23
    const-string v9, "default_assist_vibration_feedback"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x10

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 24
    const-string v9, "anykey_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x11

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 25
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_SKT_PHONE_RELAX_MODE:Z

    if-eqz v9, :cond_6

    .line 26
    const-string/jumbo v9, "skt_phone20_relax_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0xa

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 27
    :cond_6
    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x12

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 28
    const-string v9, "access_control_power_button"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x13

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 29
    const-string v9, "access_control_volume_button"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x14

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 30
    const-string v9, "double_tab_to_wake_up"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x15

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 31
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v9, :cond_7

    .line 32
    const-string v9, "active_key_on_lockscreen"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x16

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 33
    :cond_7
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v9, :cond_8

    .line 34
    const-string/jumbo v9, "xcover_top_key_on_lockscreen"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x17

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 35
    :cond_8
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    if-eqz v9, :cond_9

    .line 36
    const-string/jumbo v9, "premium_tap_for_watch_face_switch_on_off"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x18

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 37
    :cond_9
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    if-eqz v9, :cond_a

    .line 38
    const-string v9, "ai_key_disable"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x19

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 39
    :cond_a
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v9, :cond_b

    .line 40
    const-string v9, "assistant"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 41
    :cond_b
    const-string v9, "development_custom_bugreport_writer"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x2

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 42
    const-string v9, "issuetracker_logged_in"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x3

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 43
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    if-eqz v9, :cond_c

    .line 44
    const-string/jumbo v9, "premium_watch_switch_onoff"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x4

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 45
    :cond_c
    const-string v9, "cursor_thickness"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x5

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 46
    const-string/jumbo v9, "show_button_background"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x6

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 47
    const-string v9, "bold_text"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v11, 0x7

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 48
    const-string/jumbo v9, "volumekey_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v11, 0x8

    invoke-direct {v10, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 49
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_f

    .line 50
    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_d

    move v5, v2

    goto :goto_0

    :cond_d
    move v5, v9

    :goto_0
    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 51
    invoke-static {v1, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_e

    move v5, v2

    goto :goto_1

    :cond_e
    move v5, v9

    :goto_1
    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 52
    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressLaunchInfo(Ljava/lang/String;)V

    .line 54
    :cond_f
    new-instance v13, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v13, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 55
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 56
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    move-object v12, v1

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-nez v5, :cond_10

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v5, :cond_11

    .line 58
    :cond_10
    const-string v5, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    .line 59
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v17

    .line 60
    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/16 v20, 0x2

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v20}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 61
    :cond_11
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 64
    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/16 v20, 0x2

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    invoke-virtual/range {v14 .. v20}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 65
    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v5, :cond_12

    .line 68
    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 70
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    :cond_12
    const-string v5, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 72
    const-string v6, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 73
    invoke-static {v5, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v17

    .line 74
    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x4

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v20}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 75
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_13

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$16;

    invoke-virtual {v6, v7, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_13
    if-eqz v3, :cond_14

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const/high16 v3, 0x1000000

    .line 79
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v4, :cond_14

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 81
    const-string v3, "com.samsung.android.app.notes/com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    :cond_14
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    new-instance v1, Lcom/android/server/policy/SystemKeyManager;

    .line 85
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 86
    iput-object v3, v1, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 87
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    .line 88
    iput-boolean v9, v1, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 89
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v1, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 90
    iput-boolean v9, v1, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    .line 91
    iput-boolean v9, v1, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    move-object/from16 v4, p1

    .line 92
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v4, v1, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 93
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 94
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v1, :cond_15

    const/16 v1, 0x66

    .line 95
    iput v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 96
    :cond_15
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator_manager"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibratorManager;

    .line 97
    invoke-virtual {v1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 98
    new-instance v1, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {v1, v6, v7}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/Vibrator;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 100
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    if-le v1, v2, :cond_16

    move v1, v2

    goto :goto_2

    :cond_16
    move v1, v9

    :goto_2
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 101
    new-instance v1, Lcom/android/server/policy/KeyboardShortcutManager;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, v0}, Lcom/android/server/policy/KeyboardShortcutManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 102
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v5}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v5

    const-string/jumbo v6, "privacy"

    if-eqz v5, :cond_17

    const-string v5, "camera_toggle_enabled"

    .line 105
    invoke-static {v6, v5, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v2

    goto :goto_3

    :cond_17
    move v5, v9

    :goto_3
    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 106
    invoke-virtual {v1, v2}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "mic_toggle_enabled"

    .line 107
    invoke-static {v6, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    move v9, v2

    :cond_18
    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 108
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    iget-object v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$14;

    .line 110
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-virtual {v1, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 112
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_TABLE_MODE:Z

    if-eqz v1, :cond_19

    .line 113
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 114
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

    invoke-virtual {v1, v4, v3}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    .line 115
    :cond_19
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 116
    const-string/jumbo v1, "persist.service.esc.dialog"

    const-string/jumbo v3, "null"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    return-void
.end method

.method public final injectionKeyEvent(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;-><init>(III)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-nez v7, :cond_0

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v7, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    const/high16 v11, 0x20000000

    .line 29
    .line 30
    and-int v11, p3, v11

    .line 31
    .line 32
    if-eqz v11, :cond_1

    .line 33
    .line 34
    const/4 v11, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v11, 0x0

    .line 37
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    const/4 v13, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 v13, 0x0

    .line 48
    :goto_2
    if-eqz v13, :cond_3

    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    if-eqz v14, :cond_3

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    if-nez v14, :cond_3

    .line 61
    .line 62
    const/4 v14, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v14, 0x0

    .line 65
    :goto_3
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 66
    .line 67
    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 72
    .line 73
    .line 74
    move-result v16

    .line 75
    sget-boolean v17, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 76
    .line 77
    if-nez v17, :cond_4

    .line 78
    .line 79
    sget-object v18, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object/from16 v4, v18

    .line 86
    .line 87
    check-cast v4, Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    :cond_4
    const-string v3, "PhoneWindowManagerExt"

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v8, "interceptKeyTi code="

    .line 100
    .line 101
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v8, " down="

    .line 108
    .line 109
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v8, " repeatCount="

    .line 116
    .line 117
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v8, " displayId="

    .line 121
    .line 122
    const-string v9, " interactive="

    .line 123
    .line 124
    invoke-static {v6, v12, v8, v9, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v4, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 131
    .line 132
    const/4 v4, 0x3

    .line 133
    const/4 v8, -0x1

    .line 134
    const-wide/16 v19, -0x1

    .line 135
    .line 136
    if-nez v3, :cond_6

    .line 137
    .line 138
    if-eq v12, v8, :cond_7

    .line 139
    .line 140
    :cond_6
    if-ne v3, v4, :cond_e

    .line 141
    .line 142
    if-nez v12, :cond_e

    .line 143
    .line 144
    :cond_7
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_8

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 162
    .line 163
    .line 164
    move-result v21

    .line 165
    if-nez v21, :cond_9

    .line 166
    .line 167
    const/16 v21, 0x1

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_9
    const/16 v21, 0x0

    .line 171
    .line 172
    :goto_4
    const/16 v4, 0x2e

    .line 173
    .line 174
    if-eq v3, v4, :cond_a

    .line 175
    .line 176
    packed-switch v3, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_a
    :pswitch_0
    if-eqz v21, :cond_e

    .line 181
    .line 182
    if-nez v9, :cond_e

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_e

    .line 189
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_e

    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_b

    .line 201
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_e

    .line 207
    .line 208
    :cond_b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    const-string v3, "WindowManagerServiceExt"

    .line 215
    .line 216
    if-ne v1, v8, :cond_c

    .line 217
    .line 218
    const-string/jumbo v4, "sendShortcutKey() - there is no focused task."

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    :cond_c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyEventListener:Lcom/samsung/android/multiwindow/IKeyEventListener;

    .line 229
    .line 230
    if-eqz v0, :cond_d

    .line 231
    .line 232
    :try_start_0
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/multiwindow/IKeyEventListener;->sendShortcutKeyWithFocusedTask(ILandroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catch_0
    move-exception v0

    .line 237
    move-object v1, v0

    .line 238
    const-string/jumbo v0, "sendShortcutKey() : e="

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_d
    :goto_5
    return-wide v19

    .line 245
    :cond_e
    :goto_6
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-nez v9, :cond_f

    .line 259
    .line 260
    const/4 v9, 0x1

    .line 261
    goto :goto_7

    .line 262
    :cond_f
    const/4 v9, 0x0

    .line 263
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 264
    .line 265
    .line 266
    move-result v21

    .line 267
    iget-object v8, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 268
    .line 269
    move/from16 v22, v11

    .line 270
    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    if-eqz v8, :cond_28

    .line 280
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    const-string v11, "KeyboardShortcutManager"

    .line 286
    .line 287
    move/from16 v23, v14

    .line 288
    .line 289
    if-eqz v14, :cond_10

    .line 290
    .line 291
    const/high16 v14, 0x10000

    .line 292
    .line 293
    invoke-static {v8, v14}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_10

    .line 298
    .line 299
    const/4 v8, 0x1

    .line 300
    iput-boolean v8, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 301
    .line 302
    const-string v8, "interceptKeyTi, triggered"

    .line 303
    .line 304
    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_10
    iget-boolean v8, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 309
    .line 310
    if-nez v8, :cond_13

    .line 311
    .line 312
    :cond_11
    :goto_8
    move/from16 v25, v6

    .line 313
    .line 314
    move/from16 v24, v10

    .line 315
    .line 316
    :goto_9
    move/from16 v26, v15

    .line 317
    .line 318
    :cond_12
    :goto_a
    const/4 v3, 0x0

    .line 319
    goto/16 :goto_13

    .line 320
    .line 321
    :cond_13
    :goto_b
    if-eqz v21, :cond_14

    .line 322
    .line 323
    iget-boolean v3, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 324
    .line 325
    move/from16 v25, v6

    .line 326
    .line 327
    move/from16 v24, v10

    .line 328
    .line 329
    move/from16 v26, v15

    .line 330
    .line 331
    goto/16 :goto_13

    .line 332
    .line 333
    :cond_14
    if-nez v9, :cond_15

    .line 334
    .line 335
    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 336
    .line 337
    const/4 v4, 0x0

    .line 338
    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 339
    .line 340
    iget-boolean v8, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 341
    .line 342
    if-eqz v8, :cond_11

    .line 343
    .line 344
    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 345
    .line 346
    :goto_c
    move/from16 v25, v6

    .line 347
    .line 348
    move/from16 v24, v10

    .line 349
    .line 350
    move/from16 v26, v15

    .line 351
    .line 352
    :goto_d
    const/4 v3, 0x1

    .line 353
    goto/16 :goto_13

    .line 354
    .line 355
    :cond_15
    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    const-string/jumbo v14, "shortcutSetting("

    .line 364
    .line 365
    .line 366
    if-eqz v9, :cond_16

    .line 367
    .line 368
    const-string v3, ") has no shortcut"

    .line 369
    .line 370
    invoke-static {v4, v14, v3, v11}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_16
    const-string v9, "None"

    .line 375
    .line 376
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    if-eqz v9, :cond_17

    .line 381
    .line 382
    const-string v3, ") is none"

    .line 383
    .line 384
    invoke-static {v4, v14, v3, v11}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_c

    .line 388
    :cond_17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    const-string v14, "com.android.settings"

    .line 393
    .line 394
    move/from16 v24, v10

    .line 395
    .line 396
    if-eqz v9, :cond_19

    .line 397
    .line 398
    :cond_18
    const/4 v9, 0x0

    .line 399
    :goto_e
    const/4 v10, 0x1

    .line 400
    goto :goto_f

    .line 401
    :cond_19
    const-string v9, "android.intent.category."

    .line 402
    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    if-eqz v9, :cond_1a

    .line 408
    .line 409
    const/4 v9, 0x1

    .line 410
    goto :goto_e

    .line 411
    :cond_1a
    const-string v9, "android.app.role."

    .line 412
    .line 413
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    if-eqz v9, :cond_1b

    .line 418
    .line 419
    const/4 v9, 0x2

    .line 420
    goto :goto_e

    .line 421
    :cond_1b
    const-string v9, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    .line 422
    .line 423
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    if-eqz v9, :cond_1c

    .line 428
    .line 429
    const/4 v9, 0x3

    .line 430
    goto :goto_e

    .line 431
    :cond_1c
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    if-eqz v9, :cond_1d

    .line 436
    .line 437
    const/16 v9, 0x25

    .line 438
    .line 439
    if-ne v4, v9, :cond_1d

    .line 440
    .line 441
    const/4 v9, 0x4

    .line 442
    goto :goto_e

    .line 443
    :cond_1d
    const-string v9, "com.sec.android.app.launcher"

    .line 444
    .line 445
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    if-eqz v9, :cond_1e

    .line 450
    .line 451
    const/4 v9, 0x5

    .line 452
    goto :goto_e

    .line 453
    :cond_1e
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 454
    .line 455
    if-eqz v9, :cond_18

    .line 456
    .line 457
    const-string v9, "com.samsung.android.intent.action.AI_ASSIST"

    .line 458
    .line 459
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-eqz v9, :cond_18

    .line 464
    .line 465
    const/4 v9, 0x6

    .line 466
    goto :goto_e

    .line 467
    :goto_f
    if-ne v9, v10, :cond_1f

    .line 468
    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v4, "launch type=category shortcutSetting="

    .line 472
    .line 473
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    :goto_10
    move/from16 v25, v6

    .line 487
    .line 488
    goto/16 :goto_9

    .line 489
    .line 490
    :cond_1f
    const/4 v10, 0x2

    .line 491
    if-ne v9, v10, :cond_20

    .line 492
    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v4, "launch type=role shortcutSetting="

    .line 496
    .line 497
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    goto :goto_10

    .line 511
    :cond_20
    const-string v10, " keyCode="

    .line 512
    .line 513
    move/from16 v25, v6

    .line 514
    .line 515
    const/4 v6, 0x4

    .line 516
    if-ne v9, v6, :cond_21

    .line 517
    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v6, "launch type=settings shortcutSetting="

    .line 521
    .line 522
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    goto/16 :goto_9

    .line 542
    .line 543
    :cond_21
    iget-object v6, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 544
    .line 545
    move/from16 v26, v15

    .line 546
    .line 547
    const/4 v15, 0x5

    .line 548
    if-ne v9, v15, :cond_22

    .line 549
    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    const-string v9, "launch type=HOME shortcutSetting="

    .line 553
    .line 554
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    iget-object v3, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 574
    .line 575
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_d

    .line 579
    .line 580
    :cond_22
    const/4 v10, 0x3

    .line 581
    if-eq v9, v10, :cond_25

    .line 582
    .line 583
    const/4 v10, 0x6

    .line 584
    if-eq v9, v10, :cond_24

    .line 585
    .line 586
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v10

    .line 590
    if-eqz v10, :cond_23

    .line 591
    .line 592
    new-instance v10, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 593
    .line 594
    iget-object v14, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 595
    .line 596
    invoke-direct {v10, v14, v6}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 597
    .line 598
    .line 599
    goto :goto_11

    .line 600
    :cond_23
    iget-object v10, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 601
    .line 602
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 603
    .line 604
    .line 605
    move-result-object v10

    .line 606
    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    .line 608
    .line 609
    move-result-object v10

    .line 610
    new-instance v14, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 611
    .line 612
    iget-object v15, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 613
    .line 614
    invoke-direct {v14, v15, v6, v10}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V

    .line 615
    .line 616
    .line 617
    move-object v10, v14

    .line 618
    goto :goto_11

    .line 619
    :cond_24
    new-instance v10, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 620
    .line 621
    iget-object v14, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 622
    .line 623
    const/4 v15, 0x0

    .line 624
    invoke-direct {v10, v14, v6, v15}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 625
    .line 626
    .line 627
    goto :goto_11

    .line 628
    :cond_25
    new-instance v10, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    .line 629
    .line 630
    iget-object v14, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 631
    .line 632
    invoke-direct {v10, v14, v6}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 633
    .line 634
    .line 635
    :goto_11
    new-instance v14, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    const-string v15, "launch type="

    .line 638
    .line 639
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-static {v9}, Lcom/android/server/policy/KeyboardShortcutManager;->typeToString(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v9, " shortcutSetting= "

    .line 650
    .line 651
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v9, " "

    .line 658
    .line 659
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v9

    .line 669
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    invoke-virtual {v10}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    .line 673
    .line 674
    .line 675
    move-result v9

    .line 676
    if-eqz v9, :cond_26

    .line 677
    .line 678
    const/4 v9, 0x0

    .line 679
    goto :goto_12

    .line 680
    :cond_26
    invoke-virtual {v10, v12}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)Z

    .line 681
    .line 682
    .line 683
    move-result v9

    .line 684
    :goto_12
    if-eqz v9, :cond_12

    .line 685
    .line 686
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 687
    .line 688
    if-eqz v9, :cond_27

    .line 689
    .line 690
    invoke-static {v4}, Lcom/android/server/policy/KeyboardShortcutManager;->getSaLoggerEventId(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    invoke-static {v4, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    :cond_27
    const/4 v4, 0x1

    .line 701
    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 702
    .line 703
    const-string v3, "consumed"

    .line 704
    .line 705
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    goto/16 :goto_d

    .line 709
    .line 710
    :cond_28
    move/from16 v25, v6

    .line 711
    .line 712
    move/from16 v24, v10

    .line 713
    .line 714
    move/from16 v23, v14

    .line 715
    .line 716
    move/from16 v26, v15

    .line 717
    .line 718
    if-eqz v9, :cond_12

    .line 719
    .line 720
    if-nez v21, :cond_12

    .line 721
    .line 722
    const/4 v4, 0x0

    .line 723
    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 724
    .line 725
    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 726
    .line 727
    goto/16 :goto_a

    .line 728
    .line 729
    :goto_13
    if-eqz v3, :cond_29

    .line 730
    .line 731
    return-wide v19

    .line 732
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    const-string v4, "PhoneWindowManagerExt"

    .line 737
    .line 738
    const-wide/16 v8, 0x0

    .line 739
    .line 740
    packed-switch v3, :pswitch_data_1

    .line 741
    .line 742
    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 744
    .line 745
    .line 746
    move-result v6

    .line 747
    if-nez v6, :cond_2a

    .line 748
    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    const/4 v10, 0x1

    .line 754
    if-le v6, v10, :cond_2c

    .line 755
    .line 756
    :cond_2a
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 757
    .line 758
    iget-object v6, v6, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 759
    .line 760
    const/4 v10, 0x4

    .line 761
    invoke-virtual {v6, v10, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    if-eqz v3, :cond_2c

    .line 766
    .line 767
    iget v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 768
    .line 769
    if-ne v3, v10, :cond_2c

    .line 770
    .line 771
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 772
    .line 773
    if-eqz v17, :cond_2b

    .line 774
    .line 775
    const-string v3, "dispatchKeyEvent:long press, NO_DISPATCHING"

    .line 776
    .line 777
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    :cond_2b
    :goto_14
    move-wide/from16 v3, v19

    .line 781
    .line 782
    goto :goto_17

    .line 783
    :cond_2c
    move-wide v3, v8

    .line 784
    goto :goto_17

    .line 785
    :pswitch_1
    const/4 v3, 0x1

    .line 786
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 787
    .line 788
    goto :goto_14

    .line 789
    :pswitch_2
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 790
    .line 791
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    if-nez v6, :cond_2d

    .line 796
    .line 797
    goto :goto_15

    .line 798
    :cond_2d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    const-string/jumbo v11, "sendThreeFingerGestureKeyEvent keyCode="

    .line 801
    .line 802
    .line 803
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 807
    .line 808
    .line 809
    move-result v11

    .line 810
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v10

    .line 817
    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    check-cast v6, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 821
    .line 822
    const-string v4, "StatusBarManagerService"

    .line 823
    .line 824
    const-string/jumbo v10, "sendThreeFingerGestureKeyEvent"

    .line 825
    .line 826
    .line 827
    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .line 829
    .line 830
    iget-object v4, v6, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 831
    .line 832
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 833
    .line 834
    if-nez v4, :cond_2e

    .line 835
    .line 836
    goto :goto_15

    .line 837
    :cond_2e
    :try_start_1
    iget-object v4, v6, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 838
    .line 839
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 840
    .line 841
    invoke-interface {v4, v2}, Lcom/android/internal/statusbar/IStatusBar;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    .line 843
    .line 844
    :catch_1
    :goto_15
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 845
    .line 846
    if-eqz v4, :cond_2f

    .line 847
    .line 848
    const/16 v4, 0x441

    .line 849
    .line 850
    if-ne v3, v4, :cond_2f

    .line 851
    .line 852
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 853
    .line 854
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;

    .line 855
    .line 856
    const/4 v6, 0x0

    .line 857
    invoke-direct {v4, v0, v2, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    .line 862
    .line 863
    goto :goto_16

    .line 864
    :cond_2f
    const/4 v6, 0x0

    .line 865
    :goto_16
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 866
    .line 867
    goto :goto_14

    .line 868
    :goto_17
    cmp-long v6, v3, v8

    .line 869
    .line 870
    if-eqz v6, :cond_30

    .line 871
    .line 872
    const-string v0, "PhoneWindowManagerExt"

    .line 873
    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    const-string v2, "interceptKeyTi checkPolicyBeforeDispatching return="

    .line 877
    .line 878
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    return-wide v3

    .line 892
    :cond_30
    const/4 v3, 0x3

    .line 893
    if-eq v5, v3, :cond_7c

    .line 894
    .line 895
    const/high16 v3, 0x10000000

    .line 896
    .line 897
    const/4 v4, 0x4

    .line 898
    if-eq v5, v4, :cond_7a

    .line 899
    .line 900
    const/16 v4, 0x18

    .line 901
    .line 902
    if-eq v5, v4, :cond_75

    .line 903
    .line 904
    const/16 v4, 0x19

    .line 905
    .line 906
    if-eq v5, v4, :cond_75

    .line 907
    .line 908
    const/16 v6, 0x31

    .line 909
    .line 910
    const/4 v8, 0x0

    .line 911
    if-eq v5, v6, :cond_73

    .line 912
    .line 913
    const/16 v6, 0x32

    .line 914
    .line 915
    if-eq v5, v6, :cond_6f

    .line 916
    .line 917
    const/16 v6, 0x34

    .line 918
    .line 919
    if-eq v5, v6, :cond_67

    .line 920
    .line 921
    const/16 v9, 0x35

    .line 922
    .line 923
    if-eq v5, v9, :cond_65

    .line 924
    .line 925
    const/16 v9, 0x3eb

    .line 926
    .line 927
    if-eq v5, v9, :cond_63

    .line 928
    .line 929
    const/16 v9, 0x3ec

    .line 930
    .line 931
    if-eq v5, v9, :cond_60

    .line 932
    .line 933
    sparse-switch v5, :sswitch_data_0

    .line 934
    .line 935
    .line 936
    packed-switch v5, :pswitch_data_2

    .line 937
    .line 938
    .line 939
    goto/16 :goto_2f

    .line 940
    .line 941
    :pswitch_3
    if-eqz v13, :cond_84

    .line 942
    .line 943
    const-string v1, "PhoneWindowManagerExt"

    .line 944
    .line 945
    const-string v2, "launch view notification"

    .line 946
    .line 947
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .line 949
    .line 950
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 951
    .line 952
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    if-eqz v1, :cond_31

    .line 957
    .line 958
    :try_start_2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 959
    .line 960
    invoke-static {v0, v12}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 961
    .line 962
    .line 963
    move-result v0

    .line 964
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 965
    .line 966
    .line 967
    goto :goto_18

    .line 968
    :catch_2
    const-string v0, "PhoneWindowManagerExt"

    .line 969
    .line 970
    const-string v1, "Failed to launch view notification"

    .line 971
    .line 972
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    .line 974
    .line 975
    :cond_31
    :goto_18
    return-wide v19

    .line 976
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 977
    .line 978
    const/4 v1, 0x0

    .line 979
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 980
    .line 981
    .line 982
    return-wide v19

    .line 983
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 984
    .line 985
    if-nez v1, :cond_32

    .line 986
    .line 987
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 988
    .line 989
    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 990
    .line 991
    .line 992
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 993
    .line 994
    :cond_32
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 995
    .line 996
    if-eqz v1, :cond_33

    .line 997
    .line 998
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 1003
    .line 1004
    const/4 v2, 0x1

    .line 1005
    xor-int/2addr v1, v2

    .line 1006
    if-eqz v1, :cond_33

    .line 1007
    .line 1008
    return-wide v19

    .line 1009
    :cond_33
    if-eqz v13, :cond_34

    .line 1010
    .line 1011
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    .line 1015
    .line 1016
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 1017
    .line 1018
    iput v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    .line 1019
    .line 1020
    const/4 v1, 0x1

    .line 1021
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 1022
    .line 1023
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1024
    .line 1025
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1026
    .line 1027
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 1028
    .line 1029
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1030
    .line 1031
    .line 1032
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1033
    .line 1034
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1035
    .line 1036
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 1037
    .line 1038
    const-wide/16 v2, 0xbb8

    .line 1039
    .line 1040
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1041
    .line 1042
    .line 1043
    goto/16 :goto_1a

    .line 1044
    .line 1045
    :cond_34
    if-nez v7, :cond_3a

    .line 1046
    .line 1047
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1048
    .line 1049
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 1050
    .line 1051
    if-nez v1, :cond_35

    .line 1052
    .line 1053
    goto/16 :goto_1a

    .line 1054
    .line 1055
    :cond_35
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1056
    .line 1057
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1058
    .line 1059
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 1060
    .line 1061
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1062
    .line 1063
    .line 1064
    const/4 v1, 0x0

    .line 1065
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 1066
    .line 1067
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1068
    .line 1069
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1070
    .line 1071
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 1072
    .line 1073
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 1074
    .line 1075
    monitor-enter v2

    .line 1076
    :try_start_3
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 1077
    .line 1078
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    check-cast v1, Landroid/content/ComponentName;

    .line 1083
    .line 1084
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    if-nez v1, :cond_36

    .line 1086
    .line 1087
    const-string v1, "PhoneWindowManagerExt"

    .line 1088
    .line 1089
    const-string v2, "Can not launch hotkey app. The package info is empty."

    .line 1090
    .line 1091
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .line 1093
    .line 1094
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1095
    .line 1096
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1097
    .line 1098
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 1099
    .line 1100
    const/4 v3, 0x5

    .line 1101
    invoke-direct {v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1105
    .line 1106
    .line 1107
    goto :goto_1a

    .line 1108
    :cond_36
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1113
    .line 1114
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1115
    .line 1116
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v3

    .line 1120
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v3

    .line 1124
    if-nez v3, :cond_37

    .line 1125
    .line 1126
    new-instance v3, Landroid/content/Intent;

    .line 1127
    .line 1128
    const-string v4, "android.intent.action.MAIN"

    .line 1129
    .line 1130
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    const-string v4, "android.intent.category.LAUNCHER"

    .line 1134
    .line 1135
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    .line 1137
    .line 1138
    const/high16 v4, 0x10200000

    .line 1139
    .line 1140
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1144
    .line 1145
    .line 1146
    :cond_37
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1147
    .line 1148
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v4

    .line 1155
    if-eqz v4, :cond_38

    .line 1156
    .line 1157
    const/4 v3, 0x0

    .line 1158
    goto :goto_19

    .line 1159
    :cond_38
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1160
    .line 1161
    invoke-virtual {v3, v4, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    const/4 v3, 0x1

    .line 1165
    :goto_19
    if-eqz v3, :cond_39

    .line 1166
    .line 1167
    goto :goto_1a

    .line 1168
    :cond_39
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1169
    .line 1170
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1171
    .line 1172
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    const/4 v4, 0x0

    .line 1177
    invoke-virtual {v3, v12, v4, v1}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1178
    .line 1179
    .line 1180
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1181
    .line 1182
    if-eqz v1, :cond_3a

    .line 1183
    .line 1184
    const/4 v1, 0x1

    .line 1185
    invoke-virtual {v0, v5, v2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->saLogging(ILjava/lang/String;Z)V

    .line 1186
    .line 1187
    .line 1188
    goto :goto_1a

    .line 1189
    :catchall_0
    move-exception v0

    .line 1190
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1191
    throw v0

    .line 1192
    :cond_3a
    :goto_1a
    return-wide v19

    .line 1193
    :sswitch_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 1194
    .line 1195
    if-nez v1, :cond_3d

    .line 1196
    .line 1197
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v1

    .line 1201
    if-eqz v1, :cond_3b

    .line 1202
    .line 1203
    goto :goto_1b

    .line 1204
    :cond_3b
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    if-nez v1, :cond_84

    .line 1209
    .line 1210
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 1211
    .line 1212
    if-eqz v1, :cond_3c

    .line 1213
    .line 1214
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1215
    .line 1216
    invoke-virtual {v1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v1

    .line 1220
    if-nez v1, :cond_3c

    .line 1221
    .line 1222
    return-wide v19

    .line 1223
    :cond_3c
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1224
    .line 1225
    const/4 v1, 0x0

    .line 1226
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1227
    .line 1228
    .line 1229
    move-result v0

    .line 1230
    const/4 v1, 0x1

    .line 1231
    if-ne v0, v1, :cond_84

    .line 1232
    .line 1233
    return-wide v19

    .line 1234
    :cond_3d
    :goto_1b
    const-string v0, "PhoneWindowManagerExt"

    .line 1235
    .line 1236
    const-string v1, "Block Dispatching TopKey because of Factory mode or test."

    .line 1237
    .line 1238
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_2f

    .line 1242
    .line 1243
    :sswitch_1
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1244
    .line 1245
    const/4 v3, 0x0

    .line 1246
    invoke-virtual {v2, v5, v3, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v2

    .line 1250
    if-eqz v2, :cond_3e

    .line 1251
    .line 1252
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 1253
    .line 1254
    .line 1255
    move-result v0

    .line 1256
    :goto_1c
    int-to-long v0, v0

    .line 1257
    return-wide v0

    .line 1258
    :cond_3e
    if-nez v7, :cond_3f

    .line 1259
    .line 1260
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1261
    .line 1262
    const/4 v1, 0x1

    .line 1263
    invoke-virtual {v0, v12, v1, v8}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1268
    .line 1269
    if-eqz v1, :cond_3f

    .line 1270
    .line 1271
    if-eqz v0, :cond_3f

    .line 1272
    .line 1273
    const-string v0, "PKBD0033"

    .line 1274
    .line 1275
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    :cond_3f
    return-wide v19

    .line 1279
    :sswitch_2
    if-nez v7, :cond_40

    .line 1280
    .line 1281
    if-nez v26, :cond_40

    .line 1282
    .line 1283
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1284
    .line 1285
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1286
    .line 1287
    .line 1288
    move-result v1

    .line 1289
    if-eqz v1, :cond_40

    .line 1290
    .line 1291
    const-string v1, "PhoneWindowManagerExt"

    .line 1292
    .line 1293
    const-string v2, "KEYCODE_MULTI_WINDOW key input"

    .line 1294
    .line 1295
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    .line 1297
    .line 1298
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1299
    .line 1300
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    if-eqz v0, :cond_40

    .line 1305
    .line 1306
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 1307
    .line 1308
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1309
    .line 1310
    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1311
    .line 1312
    .line 1313
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1314
    .line 1315
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1316
    .line 1317
    if-eqz v0, :cond_40

    .line 1318
    .line 1319
    :try_start_5
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1320
    .line 1321
    .line 1322
    :catch_3
    :cond_40
    return-wide v19

    .line 1323
    :sswitch_3
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 1324
    .line 1325
    if-nez v1, :cond_43

    .line 1326
    .line 1327
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v1

    .line 1331
    if-eqz v1, :cond_41

    .line 1332
    .line 1333
    goto :goto_1d

    .line 1334
    :cond_41
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1335
    .line 1336
    .line 1337
    move-result v1

    .line 1338
    if-nez v1, :cond_84

    .line 1339
    .line 1340
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 1341
    .line 1342
    if-eqz v1, :cond_42

    .line 1343
    .line 1344
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1345
    .line 1346
    invoke-virtual {v1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v1

    .line 1350
    if-nez v1, :cond_42

    .line 1351
    .line 1352
    return-wide v19

    .line 1353
    :cond_42
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1354
    .line 1355
    const/4 v1, 0x0

    .line 1356
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1357
    .line 1358
    .line 1359
    move-result v0

    .line 1360
    const/4 v1, 0x1

    .line 1361
    if-ne v0, v1, :cond_84

    .line 1362
    .line 1363
    return-wide v19

    .line 1364
    :cond_43
    :goto_1d
    const-string v0, "PhoneWindowManagerExt"

    .line 1365
    .line 1366
    const-string v1, "Block Dispatching XCoverKey because of Factory mode or test."

    .line 1367
    .line 1368
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    .line 1370
    .line 1371
    goto/16 :goto_2f

    .line 1372
    .line 1373
    :sswitch_4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1374
    .line 1375
    const/4 v4, 0x0

    .line 1376
    invoke-virtual {v3, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v3

    .line 1380
    if-eqz v3, :cond_44

    .line 1381
    .line 1382
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 1383
    .line 1384
    .line 1385
    move-result v0

    .line 1386
    goto/16 :goto_1c

    .line 1387
    .line 1388
    :cond_44
    const/16 v1, 0xbb

    .line 1389
    .line 1390
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v1

    .line 1394
    if-nez v1, :cond_45

    .line 1395
    .line 1396
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1397
    .line 1398
    invoke-virtual {v1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1399
    .line 1400
    .line 1401
    move-result v1

    .line 1402
    const/4 v2, 0x1

    .line 1403
    if-ne v1, v2, :cond_45

    .line 1404
    .line 1405
    return-wide v19

    .line 1406
    :cond_45
    if-eqz v13, :cond_46

    .line 1407
    .line 1408
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1409
    .line 1410
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1411
    .line 1412
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1413
    .line 1414
    if-nez v1, :cond_46

    .line 1415
    .line 1416
    const/4 v1, 0x0

    .line 1417
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1418
    .line 1419
    :cond_46
    if-eqz v7, :cond_84

    .line 1420
    .line 1421
    if-eqz v25, :cond_84

    .line 1422
    .line 1423
    if-eqz v24, :cond_84

    .line 1424
    .line 1425
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1426
    .line 1427
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1428
    .line 1429
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1430
    .line 1431
    if-nez v1, :cond_47

    .line 1432
    .line 1433
    const/4 v1, 0x1

    .line 1434
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1435
    .line 1436
    :cond_47
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1437
    .line 1438
    const/4 v2, 0x4

    .line 1439
    invoke-virtual {v1, v5, v2}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 1440
    .line 1441
    .line 1442
    move-result v1

    .line 1443
    if-eqz v1, :cond_48

    .line 1444
    .line 1445
    const-string v0, "PhoneWindowManagerExt"

    .line 1446
    .line 1447
    const-string/jumbo v1, "skip long press recent, requestedSystemKey"

    .line 1448
    .line 1449
    .line 1450
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .line 1452
    .line 1453
    goto/16 :goto_2f

    .line 1454
    .line 1455
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent()V

    .line 1456
    .line 1457
    .line 1458
    goto/16 :goto_2f

    .line 1459
    .line 1460
    :sswitch_5
    const/16 v1, 0xb0

    .line 1461
    .line 1462
    if-ne v5, v1, :cond_84

    .line 1463
    .line 1464
    if-eqz v13, :cond_84

    .line 1465
    .line 1466
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1467
    .line 1468
    const/4 v1, 0x4

    .line 1469
    invoke-virtual {v0, v12, v1, v8}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1470
    .line 1471
    .line 1472
    move-result v0

    .line 1473
    if-eqz v0, :cond_84

    .line 1474
    .line 1475
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1476
    .line 1477
    if-eqz v0, :cond_49

    .line 1478
    .line 1479
    const-string v0, "PKBD0034"

    .line 1480
    .line 1481
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    :cond_49
    return-wide v19

    .line 1485
    :sswitch_6
    if-eqz v13, :cond_84

    .line 1486
    .line 1487
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v0

    .line 1491
    if-nez v0, :cond_4a

    .line 1492
    .line 1493
    goto/16 :goto_2f

    .line 1494
    .line 1495
    :cond_4a
    const/4 v1, 0x2

    .line 1496
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    .line 1497
    .line 1498
    .line 1499
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1500
    .line 1501
    if-eqz v0, :cond_84

    .line 1502
    .line 1503
    const-string v0, "PKBD0002"

    .line 1504
    .line 1505
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    goto/16 :goto_2f

    .line 1509
    .line 1510
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 1511
    .line 1512
    .line 1513
    move-result v1

    .line 1514
    if-eqz v1, :cond_84

    .line 1515
    .line 1516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1517
    .line 1518
    .line 1519
    move-result v1

    .line 1520
    if-nez v1, :cond_84

    .line 1521
    .line 1522
    if-eqz v7, :cond_4d

    .line 1523
    .line 1524
    const/4 v1, -0x1

    .line 1525
    if-ne v12, v1, :cond_4b

    .line 1526
    .line 1527
    const/4 v2, 0x1

    .line 1528
    const/4 v8, 0x0

    .line 1529
    goto :goto_1e

    .line 1530
    :cond_4b
    move v8, v12

    .line 1531
    const/4 v2, 0x1

    .line 1532
    :goto_1e
    if-eq v12, v2, :cond_4c

    .line 1533
    .line 1534
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1535
    .line 1536
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    .line 1537
    .line 1538
    .line 1539
    move-result v2

    .line 1540
    if-eq v2, v1, :cond_4c

    .line 1541
    .line 1542
    const/16 v9, 0x64

    .line 1543
    .line 1544
    goto :goto_1f

    .line 1545
    :cond_4c
    const/4 v9, 0x1

    .line 1546
    :goto_1f
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1547
    .line 1548
    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 1549
    .line 1550
    .line 1551
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1552
    .line 1553
    if-eqz v0, :cond_4d

    .line 1554
    .line 1555
    const-string v0, "PKBD0004"

    .line 1556
    .line 1557
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    :cond_4d
    return-wide v19

    .line 1561
    :sswitch_8
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 1562
    .line 1563
    if-nez v1, :cond_4e

    .line 1564
    .line 1565
    const-string/jumbo v1, "persist.service.esc.dialog"

    .line 1566
    .line 1567
    .line 1568
    const-string/jumbo v4, "null"

    .line 1569
    .line 1570
    .line 1571
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v1

    .line 1575
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1576
    .line 1577
    .line 1578
    move-result v1

    .line 1579
    const/4 v4, 0x1

    .line 1580
    xor-int/2addr v1, v4

    .line 1581
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 1582
    .line 1583
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v1

    .line 1587
    if-eqz v1, :cond_4f

    .line 1588
    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v1

    .line 1593
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v1

    .line 1597
    if-eqz v1, :cond_4f

    .line 1598
    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v1

    .line 1603
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v1

    .line 1607
    const-string v4, "Test)"

    .line 1608
    .line 1609
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1610
    .line 1611
    .line 1612
    move-result v1

    .line 1613
    if-eqz v1, :cond_4f

    .line 1614
    .line 1615
    const/4 v9, 0x1

    .line 1616
    goto :goto_20

    .line 1617
    :cond_4f
    const/4 v9, 0x0

    .line 1618
    :goto_20
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 1619
    .line 1620
    if-nez v1, :cond_50

    .line 1621
    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v1

    .line 1626
    if-eqz v1, :cond_50

    .line 1627
    .line 1628
    if-nez v9, :cond_50

    .line 1629
    .line 1630
    const/high16 v1, 0x1000000

    .line 1631
    .line 1632
    and-int v1, p3, v1

    .line 1633
    .line 1634
    if-nez v1, :cond_50

    .line 1635
    .line 1636
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1637
    .line 1638
    const-string/jumbo v4, "settings_new_keyboard_modifier_key"

    .line 1639
    .line 1640
    .line 1641
    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v1

    .line 1645
    if-eqz v1, :cond_50

    .line 1646
    .line 1647
    const-string/jumbo v1, "persist.service.esc.dialog"

    .line 1648
    .line 1649
    .line 1650
    const-string v2, "1"

    .line 1651
    .line 1652
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1656
    .line 1657
    invoke-virtual {v1}, Landroid/content/Context;->closeSystemDialogs()V

    .line 1658
    .line 1659
    .line 1660
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1661
    .line 1662
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 1663
    .line 1664
    const/4 v3, 0x4

    .line 1665
    invoke-direct {v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1669
    .line 1670
    .line 1671
    return-wide v19

    .line 1672
    :cond_50
    if-eqz v7, :cond_84

    .line 1673
    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 1675
    .line 1676
    .line 1677
    move-result v1

    .line 1678
    if-eqz v1, :cond_84

    .line 1679
    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1681
    .line 1682
    .line 1683
    move-result v1

    .line 1684
    if-nez v1, :cond_84

    .line 1685
    .line 1686
    if-eqz v16, :cond_51

    .line 1687
    .line 1688
    const-string v1, "PhoneWindowManagerExt"

    .line 1689
    .line 1690
    const-string v2, "Open Task Manager"

    .line 1691
    .line 1692
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    .line 1694
    .line 1695
    new-instance v1, Landroid/content/Intent;

    .line 1696
    .line 1697
    const-string v2, "android.intent.action.MAIN"

    .line 1698
    .line 1699
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    const-string v2, "android.intent.category.HOME"

    .line 1703
    .line 1704
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1708
    .line 1709
    .line 1710
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1711
    .line 1712
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1713
    .line 1714
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1715
    .line 1716
    .line 1717
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1718
    .line 1719
    if-eqz v0, :cond_52

    .line 1720
    .line 1721
    const-string v0, "PKBD0006"

    .line 1722
    .line 1723
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    goto :goto_21

    .line 1727
    :cond_51
    const/16 v1, 0x52

    .line 1728
    .line 1729
    const/4 v2, 0x0

    .line 1730
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 1731
    .line 1732
    .line 1733
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1734
    .line 1735
    if-eqz v0, :cond_52

    .line 1736
    .line 1737
    const-string v0, "PKBD0005"

    .line 1738
    .line 1739
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1740
    .line 1741
    .line 1742
    :cond_52
    :goto_21
    return-wide v19

    .line 1743
    :pswitch_6
    :sswitch_9
    const/16 v1, 0x2d

    .line 1744
    .line 1745
    if-ne v5, v1, :cond_53

    .line 1746
    .line 1747
    if-eqz v23, :cond_53

    .line 1748
    .line 1749
    const/16 v18, 0x1

    .line 1750
    .line 1751
    goto :goto_22

    .line 1752
    :cond_53
    const/16 v18, 0x0

    .line 1753
    .line 1754
    :goto_22
    const/16 v1, 0x44a

    .line 1755
    .line 1756
    if-ne v5, v1, :cond_54

    .line 1757
    .line 1758
    if-nez v13, :cond_55

    .line 1759
    .line 1760
    :cond_54
    if-eqz v18, :cond_84

    .line 1761
    .line 1762
    :cond_55
    const-string v1, "PhoneWindowManagerExt"

    .line 1763
    .line 1764
    const-string v2, "launch quick setting"

    .line 1765
    .line 1766
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    .line 1768
    .line 1769
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1770
    .line 1771
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v0

    .line 1775
    if-eqz v0, :cond_57

    .line 1776
    .line 1777
    :try_start_6
    invoke-interface {v0, v8}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 1778
    .line 1779
    .line 1780
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1781
    .line 1782
    if-eqz v0, :cond_57

    .line 1783
    .line 1784
    if-eqz v18, :cond_56

    .line 1785
    .line 1786
    const-string v0, "PKBD0014"

    .line 1787
    .line 1788
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    goto :goto_24

    .line 1792
    :catch_4
    move-exception v0

    .line 1793
    goto :goto_23

    .line 1794
    :cond_56
    const-string v0, "PKBD0034"

    .line 1795
    .line 1796
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1797
    .line 1798
    .line 1799
    goto :goto_24

    .line 1800
    :goto_23
    const-string v1, "PhoneWindowManagerExt"

    .line 1801
    .line 1802
    const-string v2, "Failed to launch Quick Setting, "

    .line 1803
    .line 1804
    invoke-static {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1805
    .line 1806
    .line 1807
    :cond_57
    :goto_24
    return-wide v19

    .line 1808
    :sswitch_a
    if-eqz v23, :cond_84

    .line 1809
    .line 1810
    if-eqz v16, :cond_59

    .line 1811
    .line 1812
    const-string v1, "PhoneWindowManagerExt"

    .line 1813
    .line 1814
    const-string/jumbo v2, "window locked by metaShift with L"

    .line 1815
    .line 1816
    .line 1817
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    .line 1819
    .line 1820
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1821
    .line 1822
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 1823
    .line 1824
    .line 1825
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1826
    .line 1827
    if-eqz v0, :cond_58

    .line 1828
    .line 1829
    const-string v0, "PKBD0035"

    .line 1830
    .line 1831
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1832
    .line 1833
    .line 1834
    :cond_58
    return-wide v19

    .line 1835
    :cond_59
    const-string v1, "PhoneWindowManagerExt"

    .line 1836
    .line 1837
    const-string/jumbo v3, "screen is off by meta with L"

    .line 1838
    .line 1839
    .line 1840
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .line 1842
    .line 1843
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1844
    .line 1845
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1846
    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1848
    .line 1849
    .line 1850
    move-result-wide v1

    .line 1851
    const/4 v3, 0x0

    .line 1852
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1853
    .line 1854
    .line 1855
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1856
    .line 1857
    if-eqz v0, :cond_5a

    .line 1858
    .line 1859
    const-string v0, "PKBD0013"

    .line 1860
    .line 1861
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1862
    .line 1863
    .line 1864
    :cond_5a
    return-wide v19

    .line 1865
    :sswitch_b
    if-eqz v23, :cond_84

    .line 1866
    .line 1867
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1868
    .line 1869
    const/4 v1, 0x2

    .line 1870
    invoke-virtual {v0, v12, v1, v8}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v0

    .line 1874
    if-eqz v0, :cond_84

    .line 1875
    .line 1876
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1877
    .line 1878
    if-eqz v0, :cond_5b

    .line 1879
    .line 1880
    const-string v0, "PKBD0010"

    .line 1881
    .line 1882
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    :cond_5b
    return-wide v19

    .line 1886
    :sswitch_c
    if-eqz v23, :cond_84

    .line 1887
    .line 1888
    if-nez v26, :cond_84

    .line 1889
    .line 1890
    const-string v1, "PhoneWindowManagerExt"

    .line 1891
    .line 1892
    const-string v3, "go to home by meta key"

    .line 1893
    .line 1894
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    .line 1896
    .line 1897
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1898
    .line 1899
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 1900
    .line 1901
    .line 1902
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1903
    .line 1904
    if-eqz v1, :cond_5c

    .line 1905
    .line 1906
    const-string v1, "PKBD0008"

    .line 1907
    .line 1908
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1909
    .line 1910
    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v0

    .line 1914
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    :cond_5c
    return-wide v19

    .line 1918
    :sswitch_d
    if-eqz v23, :cond_84

    .line 1919
    .line 1920
    if-eqz v16, :cond_84

    .line 1921
    .line 1922
    const/4 v1, 0x1

    .line 1923
    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->sensorToggleBehavior(II)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v0

    .line 1927
    if-nez v0, :cond_5d

    .line 1928
    .line 1929
    goto/16 :goto_2f

    .line 1930
    .line 1931
    :cond_5d
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1932
    .line 1933
    if-eqz v0, :cond_5e

    .line 1934
    .line 1935
    const-string v0, "PKBD0023"

    .line 1936
    .line 1937
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1938
    .line 1939
    .line 1940
    :cond_5e
    return-wide v19

    .line 1941
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    .line 1942
    .line 1943
    .line 1944
    move-result v1

    .line 1945
    if-nez v1, :cond_5f

    .line 1946
    .line 1947
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1948
    .line 1949
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 1950
    .line 1951
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    .line 1952
    .line 1953
    .line 1954
    move-result v0

    .line 1955
    if-eqz v0, :cond_84

    .line 1956
    .line 1957
    :cond_5f
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 1958
    .line 1959
    return-wide v19

    .line 1960
    :sswitch_f
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1961
    .line 1962
    const/4 v3, 0x0

    .line 1963
    invoke-virtual {v2, v5, v3, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v2

    .line 1967
    if-eqz v2, :cond_84

    .line 1968
    .line 1969
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 1970
    .line 1971
    .line 1972
    move-result v0

    .line 1973
    goto/16 :goto_1c

    .line 1974
    .line 1975
    :cond_60
    if-nez v7, :cond_62

    .line 1976
    .line 1977
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1978
    .line 1979
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1980
    .line 1981
    .line 1982
    move-result v1

    .line 1983
    if-eqz v1, :cond_62

    .line 1984
    .line 1985
    if-eqz v22, :cond_62

    .line 1986
    .line 1987
    const/4 v1, -0x1

    .line 1988
    if-ne v12, v1, :cond_61

    .line 1989
    .line 1990
    const/4 v8, 0x0

    .line 1991
    goto :goto_25

    .line 1992
    :cond_61
    move v8, v12

    .line 1993
    :goto_25
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1994
    .line 1995
    const/4 v1, 0x1

    .line 1996
    invoke-virtual {v0, v1, v8}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 1997
    .line 1998
    .line 1999
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2000
    .line 2001
    if-eqz v0, :cond_62

    .line 2002
    .line 2003
    const-string v0, "PKBD0032"

    .line 2004
    .line 2005
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2006
    .line 2007
    .line 2008
    :cond_62
    return-wide v19

    .line 2009
    :cond_63
    if-eqz v13, :cond_64

    .line 2010
    .line 2011
    if-nez v26, :cond_64

    .line 2012
    .line 2013
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2014
    .line 2015
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v0

    .line 2019
    if-eqz v0, :cond_64

    .line 2020
    .line 2021
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2022
    .line 2023
    .line 2024
    goto :goto_26

    .line 2025
    :catch_5
    const-string v0, "PhoneWindowManagerExt"

    .line 2026
    .line 2027
    const-string v1, "Failed to toggle Quick Panel"

    .line 2028
    .line 2029
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    .line 2031
    .line 2032
    :cond_64
    :goto_26
    return-wide v19

    .line 2033
    :cond_65
    if-eqz v23, :cond_84

    .line 2034
    .line 2035
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2036
    .line 2037
    const-string v1, "com.samsung.android.smartmirroring/com.samsung.android.smartmirroring.CastingActivity"

    .line 2038
    .line 2039
    const/4 v2, 0x0

    .line 2040
    invoke-virtual {v0, v12, v2, v1}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 2041
    .line 2042
    .line 2043
    move-result v0

    .line 2044
    if-eqz v0, :cond_84

    .line 2045
    .line 2046
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2047
    .line 2048
    if-eqz v0, :cond_66

    .line 2049
    .line 2050
    const-string v0, "PKBD0020"

    .line 2051
    .line 2052
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    :cond_66
    return-wide v19

    .line 2056
    :cond_67
    :sswitch_10
    const/16 v1, 0x86

    .line 2057
    .line 2058
    if-ne v5, v1, :cond_68

    .line 2059
    .line 2060
    if-eqz v7, :cond_68

    .line 2061
    .line 2062
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 2063
    .line 2064
    .line 2065
    move-result v1

    .line 2066
    if-eqz v1, :cond_68

    .line 2067
    .line 2068
    const/4 v8, 0x1

    .line 2069
    goto :goto_27

    .line 2070
    :cond_68
    const/4 v8, 0x0

    .line 2071
    :goto_27
    if-eqz v8, :cond_69

    .line 2072
    .line 2073
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 2074
    .line 2075
    .line 2076
    move-result v1

    .line 2077
    if-eqz v1, :cond_6a

    .line 2078
    .line 2079
    :cond_69
    if-ne v5, v6, :cond_84

    .line 2080
    .line 2081
    if-eqz v23, :cond_84

    .line 2082
    .line 2083
    :cond_6a
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 2084
    .line 2085
    const/4 v2, 0x1

    .line 2086
    if-eq v1, v2, :cond_6e

    .line 2087
    .line 2088
    const/4 v2, 0x2

    .line 2089
    if-ne v1, v2, :cond_6b

    .line 2090
    .line 2091
    goto :goto_29

    .line 2092
    :cond_6b
    const-string v1, "PhoneWindowManagerExt"

    .line 2093
    .line 2094
    const-string v2, "finish focused window"

    .line 2095
    .line 2096
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    .line 2098
    .line 2099
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2100
    .line 2101
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    .line 2102
    .line 2103
    .line 2104
    move-result v1

    .line 2105
    const/4 v2, -0x1

    .line 2106
    if-eq v1, v2, :cond_6d

    .line 2107
    .line 2108
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2109
    .line 2110
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2111
    .line 2112
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2113
    .line 2114
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 2115
    .line 2116
    .line 2117
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2118
    .line 2119
    if-eqz v0, :cond_6d

    .line 2120
    .line 2121
    if-eqz v8, :cond_6c

    .line 2122
    .line 2123
    const-string v0, "PKBD0003"

    .line 2124
    .line 2125
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2126
    .line 2127
    .line 2128
    goto :goto_28

    .line 2129
    :cond_6c
    const-string v0, "PKBD0019"

    .line 2130
    .line 2131
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2132
    .line 2133
    .line 2134
    :cond_6d
    :goto_28
    return-wide v19

    .line 2135
    :cond_6e
    :goto_29
    const-string v1, "PhoneWindowManagerExt"

    .line 2136
    .line 2137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2138
    .line 2139
    const-string v3, "Can\'t finish focused window in LockTaskMode. mode="

    .line 2140
    .line 2141
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2142
    .line 2143
    .line 2144
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 2145
    .line 2146
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 2147
    .line 2148
    .line 2149
    return-wide v19

    .line 2150
    :cond_6f
    if-eqz v23, :cond_84

    .line 2151
    .line 2152
    if-eqz v16, :cond_71

    .line 2153
    .line 2154
    const/4 v1, 0x2

    .line 2155
    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->sensorToggleBehavior(II)Z

    .line 2156
    .line 2157
    .line 2158
    move-result v0

    .line 2159
    if-nez v0, :cond_70

    .line 2160
    .line 2161
    goto/16 :goto_2f

    .line 2162
    .line 2163
    :cond_70
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2164
    .line 2165
    if-eqz v0, :cond_72

    .line 2166
    .line 2167
    const-string v0, "PKBD0022"

    .line 2168
    .line 2169
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2170
    .line 2171
    .line 2172
    goto :goto_2a

    .line 2173
    :cond_71
    const-string v1, "PhoneWindowManagerExt"

    .line 2174
    .line 2175
    const-string v2, "launch volume panel"

    .line 2176
    .line 2177
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v0

    .line 2184
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 2185
    .line 2186
    .line 2187
    move-result v1

    .line 2188
    const/4 v2, 0x0

    .line 2189
    const/4 v3, 0x1

    .line 2190
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2191
    .line 2192
    .line 2193
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2194
    .line 2195
    if-eqz v0, :cond_72

    .line 2196
    .line 2197
    const-string v0, "PKBD0017"

    .line 2198
    .line 2199
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2200
    .line 2201
    .line 2202
    :cond_72
    :goto_2a
    return-wide v19

    .line 2203
    :cond_73
    if-eqz v23, :cond_84

    .line 2204
    .line 2205
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2206
    .line 2207
    const/4 v1, 0x3

    .line 2208
    invoke-virtual {v0, v12, v1, v8}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 2209
    .line 2210
    .line 2211
    move-result v0

    .line 2212
    if-eqz v0, :cond_84

    .line 2213
    .line 2214
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2215
    .line 2216
    if-eqz v0, :cond_74

    .line 2217
    .line 2218
    const-string v0, "PKBD0016"

    .line 2219
    .line 2220
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2221
    .line 2222
    .line 2223
    :cond_74
    return-wide v19

    .line 2224
    :cond_75
    :sswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 2225
    .line 2226
    .line 2227
    move-result v1

    .line 2228
    and-int/2addr v1, v3

    .line 2229
    if-eqz v1, :cond_76

    .line 2230
    .line 2231
    goto/16 :goto_2f

    .line 2232
    .line 2233
    :cond_76
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 2234
    .line 2235
    .line 2236
    move-result v1

    .line 2237
    if-eqz v1, :cond_79

    .line 2238
    .line 2239
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2240
    .line 2241
    const/4 v4, 0x4

    .line 2242
    invoke-virtual {v1, v4, v5}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 2243
    .line 2244
    .line 2245
    move-result v1

    .line 2246
    if-nez v1, :cond_78

    .line 2247
    .line 2248
    if-eqz v24, :cond_77

    .line 2249
    .line 2250
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2251
    .line 2252
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v0

    .line 2256
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2257
    .line 2258
    .line 2259
    move-result-wide v4

    .line 2260
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 2261
    .line 2262
    .line 2263
    move-result v1

    .line 2264
    or-int/2addr v1, v3

    .line 2265
    const/4 v3, 0x0

    .line 2266
    invoke-static {v2, v4, v5, v3, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v1

    .line 2270
    const/high16 v2, -0x80000000

    .line 2271
    .line 2272
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2273
    .line 2274
    .line 2275
    :cond_77
    if-nez v24, :cond_84

    .line 2276
    .line 2277
    move/from16 v0, v25

    .line 2278
    .line 2279
    const/4 v1, 0x1

    .line 2280
    if-le v0, v1, :cond_78

    .line 2281
    .line 2282
    goto/16 :goto_2f

    .line 2283
    .line 2284
    :cond_78
    return-wide v19

    .line 2285
    :cond_79
    const/4 v1, 0x1

    .line 2286
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2287
    .line 2288
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 2289
    .line 2290
    .line 2291
    move-result v0

    .line 2292
    if-ne v0, v1, :cond_84

    .line 2293
    .line 2294
    return-wide v19

    .line 2295
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 2296
    .line 2297
    .line 2298
    move-result v1

    .line 2299
    and-int/2addr v1, v3

    .line 2300
    if-eqz v1, :cond_7b

    .line 2301
    .line 2302
    goto/16 :goto_2f

    .line 2303
    .line 2304
    :cond_7b
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 2305
    .line 2306
    .line 2307
    move-result v1

    .line 2308
    if-nez v1, :cond_84

    .line 2309
    .line 2310
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2311
    .line 2312
    const/4 v3, 0x0

    .line 2313
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 2314
    .line 2315
    .line 2316
    move-result v0

    .line 2317
    const/4 v1, 0x1

    .line 2318
    if-ne v0, v1, :cond_84

    .line 2319
    .line 2320
    return-wide v19

    .line 2321
    :cond_7c
    const/4 v3, 0x0

    .line 2322
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 2323
    .line 2324
    if-nez v4, :cond_7d

    .line 2325
    .line 2326
    move v8, v3

    .line 2327
    goto :goto_2e

    .line 2328
    :cond_7d
    const-string v4, "PhoneWindowManagerExt"

    .line 2329
    .line 2330
    if-eqz v7, :cond_80

    .line 2331
    .line 2332
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2333
    .line 2334
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2335
    .line 2336
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v3

    .line 2340
    if-eqz v3, :cond_81

    .line 2341
    .line 2342
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2343
    .line 2344
    .line 2345
    move-result v3

    .line 2346
    if-eqz v3, :cond_81

    .line 2347
    .line 2348
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SKT_PHONE_RELAX_MODE:Z

    .line 2349
    .line 2350
    if-eqz v3, :cond_7e

    .line 2351
    .line 2352
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 2353
    .line 2354
    if-nez v3, :cond_81

    .line 2355
    .line 2356
    :cond_7e
    const-string/jumbo v3, "ringing: Accept the call!"

    .line 2357
    .line 2358
    .line 2359
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    .line 2361
    .line 2362
    const-class v3, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2363
    .line 2364
    invoke-static {v3}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2365
    .line 2366
    .line 2367
    move-result-object v3

    .line 2368
    check-cast v3, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2369
    .line 2370
    if-nez v3, :cond_7f

    .line 2371
    .line 2372
    :goto_2b
    const/4 v3, 0x1

    .line 2373
    goto :goto_2c

    .line 2374
    :cond_7f
    const/4 v6, 0x3

    .line 2375
    invoke-virtual {v3, v6}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    .line 2376
    .line 2377
    .line 2378
    goto :goto_2b

    .line 2379
    :goto_2c
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2380
    .line 2381
    const-string v3, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    .line 2382
    .line 2383
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    .line 2385
    .line 2386
    :goto_2d
    const/4 v8, 0x1

    .line 2387
    goto :goto_2e

    .line 2388
    :cond_80
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2389
    .line 2390
    if-eqz v3, :cond_81

    .line 2391
    .line 2392
    const-string v3, "Ignoring HOME; consumed by accept call."

    .line 2393
    .line 2394
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    .line 2396
    .line 2397
    goto :goto_2d

    .line 2398
    :cond_81
    const/4 v8, 0x0

    .line 2399
    :goto_2e
    if-eqz v8, :cond_82

    .line 2400
    .line 2401
    return-wide v19

    .line 2402
    :cond_82
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2403
    .line 2404
    const/4 v4, 0x0

    .line 2405
    invoke-virtual {v3, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 2406
    .line 2407
    .line 2408
    move-result v3

    .line 2409
    if-eqz v3, :cond_83

    .line 2410
    .line 2411
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 2412
    .line 2413
    .line 2414
    move-result v0

    .line 2415
    goto/16 :goto_1c

    .line 2416
    .line 2417
    :cond_83
    const/4 v1, 0x3

    .line 2418
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 2419
    .line 2420
    .line 2421
    move-result v1

    .line 2422
    if-nez v1, :cond_84

    .line 2423
    .line 2424
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2425
    .line 2426
    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 2427
    .line 2428
    .line 2429
    move-result v0

    .line 2430
    const/4 v1, 0x1

    .line 2431
    if-ne v0, v1, :cond_84

    .line 2432
    .line 2433
    return-wide v19

    .line 2434
    :cond_84
    :goto_2f
    const-wide/16 v0, -0x2

    .line 2435
    .line 2436
    return-wide v0

    .line 2437
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    .line 2444
    .line 2445
    .line 2446
    .line 2447
    .line 2448
    .line 2449
    :pswitch_data_1
    .packed-switch 0x43d
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2450
    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_f
        0x1b -> :sswitch_e
        0x1d -> :sswitch_d
        0x20 -> :sswitch_c
        0x23 -> :sswitch_b
        0x28 -> :sswitch_a
        0x2d -> :sswitch_9
        0x4f -> :sswitch_11
        0x6f -> :sswitch_8
        0x78 -> :sswitch_7
        0x86 -> :sswitch_10
        0x89 -> :sswitch_6
        0xb0 -> :sswitch_5
        0xbb -> :sswitch_4
        0xe0 -> :sswitch_f
        0x3f7 -> :sswitch_3
        0x425 -> :sswitch_2
        0x428 -> :sswitch_1
        0x437 -> :sswitch_0
    .end sparse-switch

    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    .line 2469
    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    :pswitch_data_2
    .packed-switch 0x442
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public final isCarrierLocked()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxguardLockEnabled(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public final isInDexMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isInteractionControlEnabled(IZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0xe0

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    move v1, v0

    .line 28
    :cond_1
    return v1

    .line 29
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    move v1, v0

    .line 38
    :cond_2
    :goto_0
    return v1

    .line 39
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isKeyguardOccluded()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isLongPressHomeSearcle()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final isQuickLaunchCameraEnabled(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 p1, 0x7d1

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string/jumbo p0, "service.camera.client"

    .line 21
    .line 22
    .line 23
    const-string p1, ""

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "com.sec.android.app.camera"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const-string p1, "isCameraClient="

    .line 36
    .line 37
    const-string v0, "PhoneWindowManagerExt"

    .line 38
    .line 39
    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :goto_1
    return p0
.end method

.method public final isSamsungKeyboardShown()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    move p0, v2

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move p0, v1

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    move v1, v2

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    :goto_2
    return v1
.end method

.method public final knoxCustomVolumeKeyAppSwitching(Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v4, "PhoneWindowManagerExt"

    .line 29
    .line 30
    if-eqz v2, :cond_6

    .line 31
    .line 32
    iget-boolean v2, v2, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 33
    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    const-string p0, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    .line 37
    .line 38
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const/4 p1, 0x2

    .line 64
    if-ne p0, p1, :cond_2

    .line 65
    .line 66
    move p1, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move p1, v3

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Knox Custom: getPowerDialogOptionMode() : "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p0, " returning : "

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v0, "GlobalActions"

    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move p1, v1

    .line 98
    :goto_1
    if-eqz p1, :cond_4

    .line 99
    .line 100
    move p0, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move p0, v1

    .line 103
    :goto_2
    if-eqz p0, :cond_5

    .line 104
    .line 105
    const-string p0, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    .line 106
    .line 107
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return v1

    .line 111
    :cond_5
    return v3

    .line 112
    :cond_6
    const-string v0, "Knox Custom: Volume Key app switching starting"

    .line 113
    .line 114
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_12

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "Knox Custom: "

    .line 136
    .line 137
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v6, " apps in list"

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    const-string v6, "activity"

    .line 162
    .line 163
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/app/ActivityManager;

    .line 168
    .line 169
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_9

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    if-eqz v9, :cond_8

    .line 201
    .line 202
    const-string v9, " available"

    .line 203
    .line 204
    invoke-static {v5, v8, v9, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    const-string v9, " not available"

    .line 212
    .line 213
    invoke-static {v5, v8, v9, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    const-string p0, "Knox Custom: no available apps"

    .line 224
    .line 225
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_a
    const v0, 0x7fffffff

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 242
    .line 243
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const-string v2, " in foreground"

    .line 254
    .line 255
    invoke-static {v5, v0, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 v2, -0x1

    .line 259
    move v8, v2

    .line 260
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-ge v1, v9, :cond_c

    .line 265
    .line 266
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    check-cast v9, Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_b

    .line 277
    .line 278
    const-string v8, " found at index "

    .line 279
    .line 280
    invoke-static {v1, v5, v0, v8, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    move v8, v1

    .line 284
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_c
    if-ne v8, v2, :cond_d

    .line 288
    .line 289
    const-string v1, " not found in list; use first"

    .line 290
    .line 291
    invoke-static {v5, v0, v1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_d
    if-eqz p1, :cond_e

    .line 295
    .line 296
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    sub-int/2addr p1, v3

    .line 301
    if-ge v8, p1, :cond_e

    .line 302
    .line 303
    add-int/2addr v8, v3

    .line 304
    goto :goto_5

    .line 305
    :cond_e
    if-lez v8, :cond_f

    .line 306
    .line 307
    sub-int/2addr v8, v3

    .line 308
    goto :goto_5

    .line 309
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    add-int/lit8 v8, p1, -0x1

    .line 314
    .line 315
    :goto_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_10

    .line 326
    .line 327
    const-string p0, " already in foreground"

    .line 328
    .line 329
    invoke-static {v5, v0, p0, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_10
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v1, "Knox Custom: switching to "

    .line 338
    .line 339
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    if-eqz v0, :cond_11

    .line 347
    .line 348
    const/high16 p1, 0x10400000

    .line 349
    .line 350
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 354
    .line 355
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 356
    .line 357
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .line 359
    .line 360
    goto :goto_6

    .line 361
    :catch_0
    move-exception p0

    .line 362
    const-string p1, "No activity to launch Knox Custom switching."

    .line 363
    .line 364
    invoke-static {v4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .line 366
    .line 367
    :cond_11
    :goto_6
    const-string p0, "Knox Custom: Volume Key app switching done"

    .line 368
    .line 369
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    return v3

    .line 373
    :cond_12
    :goto_7
    const-string p0, "Knox Custom: no apps in list"

    .line 374
    .line 375
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    return v3

    .line 379
    :cond_13
    :goto_8
    return v1
.end method

.method public launchPowerDoublePressCamera()V
    .locals 2

    .line 1
    const-class p0, Lcom/android/server/GestureLauncherService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/GestureLauncherService;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "PhoneWindowManagerExt"

    .line 13
    .line 14
    const-string v1, "launch double press camera"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final longPressOnHomePolicy()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "PhoneWindowManagerExt"

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Home long press is blocked because UserSetup isn\'t completed"

    .line 13
    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string p0, "Home long press is blocked by Ringing"

    .line 35
    .line 36
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    const/4 v0, 0x3

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    const-string p0, "Home long press is blocked by Interaction control"

    .line 49
    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    return v1
.end method

.method public final notifyPenSwitchChanged(JZZ)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    move/from16 v3, p4

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 8
    .line 9
    const-string v4, "PhoneWindowManagerExt"

    .line 10
    .line 11
    if-eqz v0, :cond_1b

    .line 12
    .line 13
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    if-eq v0, v5, :cond_1b

    .line 17
    .line 18
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 19
    .line 20
    if-ne v2, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_c

    .line 23
    .line 24
    :cond_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 27
    .line 28
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 29
    .line 30
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, -0x1

    .line 34
    const/4 v9, 0x1

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string v0, "can not start ScreenOffMemo, the option is disabled"

    .line 38
    .line 39
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    move v10, v7

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 45
    .line 46
    const/4 v10, 0x2

    .line 47
    if-ne v0, v10, :cond_3

    .line 48
    .line 49
    if-ne v2, v9, :cond_3

    .line 50
    .line 51
    const-string v0, "can start ScreenOffMemo, pen attached."

    .line 52
    .line 53
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    move v10, v9

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    if-eqz v0, :cond_4

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v10, "can not start ScreenOffMemo, pen type was wrong. "

    .line 63
    .line 64
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 68
    .line 69
    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 74
    .line 75
    if-ne v0, v8, :cond_5

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v10, "can not start ScreenOffMemo, pen state was wrong. "

    .line 80
    .line 81
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 85
    .line 86
    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 91
    .line 92
    if-ne v0, v10, :cond_6

    .line 93
    .line 94
    const-string v0, "can not start ScreenOffMemo in dual dex mode"

    .line 95
    .line 96
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 103
    .line 104
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 105
    .line 106
    if-eq v2, v9, :cond_2

    .line 107
    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v11, "can not start ScreenOffMemo, penState="

    .line 116
    .line 117
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v11, " isAwake="

    .line 124
    .line 125
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_2
    if-nez v2, :cond_a

    .line 140
    .line 141
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 142
    .line 143
    if-eq v0, v8, :cond_a

    .line 144
    .line 145
    if-eqz v6, :cond_8

    .line 146
    .line 147
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 150
    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v11

    .line 155
    invoke-virtual {v0, v11, v12, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 160
    .line 161
    if-nez v0, :cond_a

    .line 162
    .line 163
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 164
    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    if-nez v10, :cond_a

    .line 168
    .line 169
    :cond_9
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 172
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    const/16 v13, 0x66

    .line 178
    .line 179
    const-string/jumbo v14, "penDetached"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    :goto_3
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 186
    .line 187
    if-eqz v0, :cond_10

    .line 188
    .line 189
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 190
    .line 191
    if-eq v0, v8, :cond_10

    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_10

    .line 202
    .line 203
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 204
    .line 205
    if-nez v0, :cond_b

    .line 206
    .line 207
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v0, :cond_b

    .line 210
    .line 211
    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 212
    .line 213
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    const/4 v12, 0x0

    .line 217
    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 218
    .line 219
    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 220
    .line 221
    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v11, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iput-object v11, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 227
    .line 228
    :cond_b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 229
    .line 230
    if-eqz v0, :cond_f

    .line 231
    .line 232
    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 233
    .line 234
    if-nez v11, :cond_c

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_c
    if-eqz v2, :cond_d

    .line 238
    .line 239
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_d
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 243
    .line 244
    :goto_4
    const-string v15, "Play pen sound failed, soundId="

    .line 245
    .line 246
    if-nez v12, :cond_e

    .line 247
    .line 248
    invoke-static {v12, v15, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_e
    :try_start_0
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I

    .line 253
    .line 254
    invoke-virtual {v11, v13}, Landroid/media/SoundPool;->stop(I)V

    .line 255
    .line 256
    .line 257
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    const/high16 v19, 0x3f800000    # 1.0f

    .line 260
    .line 261
    const/high16 v11, 0x3f800000    # 1.0f

    .line 262
    .line 263
    const/high16 v16, 0x3f800000    # 1.0f

    .line 264
    .line 265
    const/16 v17, 0x1

    .line 266
    .line 267
    const/16 v18, 0x0

    .line 268
    .line 269
    move v14, v12

    .line 270
    move-object v7, v15

    .line 271
    move v15, v11

    .line 272
    :try_start_1
    invoke-virtual/range {v13 .. v19}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    iput v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catch_0
    move-object v7, v15

    .line 280
    :catch_1
    invoke-static {v12, v7, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_f
    const-string/jumbo v0, "mPenSoundInfo is null"

    .line 285
    .line 286
    .line 287
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_10
    :goto_5
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 291
    .line 292
    if-eqz v0, :cond_15

    .line 293
    .line 294
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 295
    .line 296
    if-eq v0, v8, :cond_15

    .line 297
    .line 298
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 299
    .line 300
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    .line 301
    .line 302
    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-direct {v0, v7}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 313
    .line 314
    .line 315
    move-result-object v16

    .line 316
    iget-object v11, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 317
    .line 318
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_OMC_SPEN_VIBRATION:Z

    .line 329
    .line 330
    if-eqz v0, :cond_12

    .line 331
    .line 332
    if-eqz v2, :cond_11

    .line 333
    .line 334
    const/16 v0, 0x3f

    .line 335
    .line 336
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    goto :goto_6

    .line 341
    :cond_11
    const/16 v0, 0x3e

    .line 342
    .line 343
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    goto :goto_6

    .line 348
    :cond_12
    if-eqz v2, :cond_13

    .line 349
    .line 350
    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    goto :goto_6

    .line 355
    :cond_13
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    :goto_6
    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 360
    .line 361
    invoke-static {v0, v8, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    if-eqz v2, :cond_14

    .line 366
    .line 367
    const-string v0, "SPEN_ATTACHED"

    .line 368
    .line 369
    :goto_7
    move-object v15, v0

    .line 370
    goto :goto_8

    .line 371
    :cond_14
    const-string v0, "SPEN_DETACHED"

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :goto_8
    invoke-virtual/range {v11 .. v16}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 375
    .line 376
    .line 377
    :cond_15
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 378
    .line 379
    const-string/jumbo v5, "penInsert"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 386
    .line 387
    const-string v5, "isScreenOn"

    .line 388
    .line 389
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 393
    .line 394
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 395
    .line 396
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    const-string v7, "isKeyguardLocked"

    .line 401
    .line 402
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 406
    .line 407
    const-wide/16 v7, 0x0

    .line 408
    .line 409
    cmp-long v5, p1, v7

    .line 410
    .line 411
    if-nez v5, :cond_16

    .line 412
    .line 413
    move v7, v9

    .line 414
    goto :goto_9

    .line 415
    :cond_16
    const/4 v7, 0x0

    .line 416
    :goto_9
    const-string v5, "isBoot"

    .line 417
    .line 418
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    .line 420
    .line 421
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 422
    .line 423
    const-string v5, "isServiceOn"

    .line 424
    .line 425
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    .line 427
    .line 428
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 429
    .line 430
    const-string v5, "isReversed"

    .line 431
    .line 432
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 436
    .line 437
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 438
    .line 439
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 440
    .line 441
    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 442
    .line 443
    .line 444
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SMART_CLIP:Z

    .line 445
    .line 446
    if-eqz v0, :cond_18

    .line 447
    .line 448
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 449
    .line 450
    if-nez v0, :cond_17

    .line 451
    .line 452
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 453
    .line 454
    const-string/jumbo v5, "spengestureservice"

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 462
    .line 463
    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 464
    .line 465
    :cond_17
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 466
    .line 467
    if-eqz v0, :cond_18

    .line 468
    .line 469
    invoke-virtual {v0, v2}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    .line 470
    .line 471
    .line 472
    :cond_18
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 473
    .line 474
    if-eqz v0, :cond_1a

    .line 475
    .line 476
    if-eqz v10, :cond_1a

    .line 477
    .line 478
    const-string/jumbo v0, "startService, screenOffMemo"

    .line 479
    .line 480
    .line 481
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 485
    .line 486
    if-eqz v2, :cond_19

    .line 487
    .line 488
    const-string/jumbo v5, "pen_attach"

    .line 489
    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_19
    const-string/jumbo v5, "pen_detach"

    .line 493
    .line 494
    .line 495
    :goto_a
    const-string/jumbo v7, "pen_intent_com"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    .line 500
    .line 501
    :try_start_2
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 502
    .line 503
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 504
    .line 505
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 506
    .line 507
    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    .line 509
    .line 510
    goto :goto_b

    .line 511
    :catch_2
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    :cond_1a
    :goto_b
    const-string/jumbo v0, "notifyPenSwitchChanged, penInsert="

    .line 520
    .line 521
    .line 522
    const-string v5, ", reversed ="

    .line 523
    .line 524
    const-string v7, ", screenOn="

    .line 525
    .line 526
    invoke-static {v0, v2, v5, v3, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v3, ", sound="

    .line 534
    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 539
    .line 540
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v3, ", vibration="

    .line 544
    .line 545
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 549
    .line 550
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v3, ", canStartScreenOffMemo="

    .line 554
    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    iput v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 569
    .line 570
    return-void

    .line 571
    :cond_1b
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string/jumbo v3, "notifyPenSwitchChanged ignored, mPenType="

    .line 574
    .line 575
    .line 576
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 580
    .line 581
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v3, ", mPenState="

    .line 585
    .line 586
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v1, ", newPenState="

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    return-void
.end method

.method public final onFlashlightKeyPressed(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onFlashlightKeyPressed, keyCode="

    .line 2
    .line 3
    .line 4
    const-string v1, "PhoneWindowManagerExt"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFlashlightKeyPressed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public final onKeyguardOccludedChangedLw(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final openDictationIfNeeded(IZ)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAvailableDictation()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v2, "openDictationIfNeeded, forced="

    .line 10
    .line 11
    .line 12
    const-string v3, ", isSamsungKeyboardShown()="

    .line 13
    .line 14
    const-string v4, ", getAvailableDictation()="

    .line 15
    .line 16
    invoke-static {v2, p2, v3, v0, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, ", isSamsungKeyboard="

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 29
    .line 30
    const-string v4, "PhoneWindowManagerExt"

    .line 31
    .line 32
    invoke-static {v4, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 33
    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_1
    :goto_0
    const-string/jumbo p2, "open_dictation"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method public final performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    move/from16 v2, p5

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return v4

    .line 16
    :cond_0
    const-string v3, "f.b. a="

    .line 17
    .line 18
    const-string v5, " id="

    .line 19
    .line 20
    const-string v6, " he="

    .line 21
    .line 22
    invoke-static {v1, v3, v5, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 27
    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, " ksno="

    .line 32
    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, " uid="

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move v5, p1

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v6, " callingPackage="

    .line 55
    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v6, " reason="

    .line 60
    .line 61
    const-string v7, " Caller="

    .line 62
    .line 63
    move-object/from16 v8, p3

    .line 64
    .line 65
    move-object/from16 v10, p4

    .line 66
    .line 67
    invoke-static {v3, v8, v6, v10, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x5

    .line 71
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v7, "PhoneWindowManagerExt"

    .line 83
    .line 84
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 90
    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 96
    .line 97
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 98
    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    :cond_1
    const-string v0, "haptic disabled by policy"

    .line 110
    .line 111
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return v4

    .line 115
    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 116
    .line 117
    move/from16 v9, p6

    .line 118
    .line 119
    invoke-virtual {v3, v1, v2, v9}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesForHapticFeedback(IZZ)Landroid/os/VibrationAttributes;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const/4 v9, 0x2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    new-instance v11, Landroid/os/VibrationAttributes$Builder;

    .line 127
    .line 128
    invoke-direct {v11, v3}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v9, v9}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :cond_3
    move-object v11, v3

    .line 140
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 141
    .line 142
    const/4 v12, -0x1

    .line 143
    const/4 v13, 0x1

    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    if-eq v1, v13, :cond_5

    .line 149
    .line 150
    const/16 v2, 0x2713

    .line 151
    .line 152
    if-eq v1, v2, :cond_6

    .line 153
    .line 154
    packed-switch v1, :pswitch_data_0

    .line 155
    .line 156
    .line 157
    packed-switch v1, :pswitch_data_1

    .line 158
    .line 159
    .line 160
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    move v1, v12

    .line 168
    goto :goto_0

    .line 169
    :pswitch_0
    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    goto :goto_0

    .line 174
    :pswitch_1
    const/16 v1, 0x29

    .line 175
    .line 176
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    goto :goto_0

    .line 181
    :cond_5
    :pswitch_2
    const/16 v1, 0xe

    .line 182
    .line 183
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    goto :goto_0

    .line 188
    :cond_6
    :pswitch_3
    invoke-static {v13}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_0
    if-ne v1, v12, :cond_7

    .line 193
    .line 194
    return v4

    .line 195
    :cond_7
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 196
    .line 197
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 198
    .line 199
    invoke-static {v1, v12, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :goto_1
    move-object v9, v1

    .line 204
    goto/16 :goto_7

    .line 205
    .line 206
    :cond_8
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 207
    .line 208
    const/16 v6, 0x64

    .line 209
    .line 210
    if-eqz v3, :cond_c

    .line 211
    .line 212
    if-nez v2, :cond_c

    .line 213
    .line 214
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eq v2, v13, :cond_9

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    if-eqz v1, :cond_b

    .line 224
    .line 225
    const v2, 0xc3d4

    .line 226
    .line 227
    .line 228
    if-ne v1, v2, :cond_a

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_a
    const-string v0, "haptic generated by application"

    .line 232
    .line 233
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_b
    :goto_2
    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 242
    .line 243
    invoke-static {v1, v12, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 248
    .line 249
    move v7, p1

    .line 250
    move-object/from16 v8, p3

    .line 251
    .line 252
    move-object/from16 v10, p4

    .line 253
    .line 254
    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 255
    .line 256
    .line 257
    :goto_3
    return v13

    .line 258
    :cond_c
    :goto_4
    const/4 v2, 0x0

    .line 259
    if-eqz v1, :cond_13

    .line 260
    .line 261
    const/16 v3, 0xd

    .line 262
    .line 263
    if-eq v1, v3, :cond_13

    .line 264
    .line 265
    if-eq v1, v13, :cond_13

    .line 266
    .line 267
    const/4 v3, 0x3

    .line 268
    if-eq v1, v3, :cond_13

    .line 269
    .line 270
    invoke-static {v13}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-eq v1, v7, :cond_13

    .line 275
    .line 276
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-ne v1, v7, :cond_d

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_d
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-ne v1, v3, :cond_e

    .line 288
    .line 289
    move v4, v6

    .line 290
    goto :goto_6

    .line 291
    :cond_e
    const/16 v3, 0x9

    .line 292
    .line 293
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-ne v1, v3, :cond_f

    .line 298
    .line 299
    const/16 v4, 0xfa

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_f
    const/16 v3, 0x8

    .line 303
    .line 304
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-ne v1, v3, :cond_10

    .line 309
    .line 310
    const/16 v4, 0x1f4

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_10
    const/16 v3, 0xb

    .line 314
    .line 315
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-ne v1, v3, :cond_11

    .line 320
    .line 321
    const/16 v4, 0x5dc

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_11
    const/16 v2, 0xa

    .line 325
    .line 326
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-ne v1, v2, :cond_12

    .line 331
    .line 332
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 333
    .line 334
    const/4 v1, 0x4

    .line 335
    new-array v1, v1, [J

    .line 336
    .line 337
    fill-array-data v1, :array_0

    .line 338
    .line 339
    .line 340
    invoke-static {v1, v12}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    goto :goto_6

    .line 345
    :cond_12
    return v4

    .line 346
    :cond_13
    :goto_5
    const/16 v4, 0x32

    .line 347
    .line 348
    :goto_6
    if-nez v2, :cond_14

    .line 349
    .line 350
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 351
    .line 352
    int-to-long v1, v4

    .line 353
    invoke-static {v1, v2, v12}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :cond_14
    move-object v9, v2

    .line 360
    :goto_7
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 361
    .line 362
    move v7, p1

    .line 363
    move-object/from16 v8, p3

    .line 364
    .line 365
    move-object/from16 v10, p4

    .line 366
    .line 367
    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 368
    .line 369
    .line 370
    return v13

    .line 371
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public final performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_6

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "SPC_Remote_Controller"

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x4

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v8, 0x0

    .line 35
    if-eq p1, v1, :cond_4

    .line 36
    .line 37
    const/16 v1, 0x1b

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    const/16 v1, 0x52

    .line 42
    .line 43
    if-eq p1, v1, :cond_4

    .line 44
    .line 45
    const/16 v1, 0x54

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0xbb

    .line 50
    .line 51
    if-eq p1, v1, :cond_4

    .line 52
    .line 53
    const/16 v0, 0xcf

    .line 54
    .line 55
    if-eq p1, v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const/4 v9, 0x0

    .line 77
    const-string v7, "Search key - Press"

    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "gpio"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    const-string v0, "keyCode("

    .line 120
    .line 121
    const-string v1, ") - Press"

    .line 122
    .line 123
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const/4 v9, 0x0

    .line 138
    move-object v3, p0

    .line 139
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_0
    return-void
.end method

.method public final playSoundEffect()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PhoneWindowManagerExt"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Couldn\'t get audio manager"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "trigger_restart_min_framework"

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const/16 p0, 0x66

    .line 35
    .line 36
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, p0, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p0, "keyguard - disable key sound"

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final sendBroadcastDoubleClick(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 6
    .line 7
    const-string v1, "PhoneWindowManagerExt"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Can not sendBroadcast double click intent. RecentAnimation is running"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "broadcast double click intent keyCode="

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "com.samsung.android.action.DOUBLE_CLICK"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "KEYCODE"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 49
    .line 50
    const-string v1, "com.samsung.android.permisson.DOUBLE_CLICK"

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final sendFoldSaLoggingCanceledIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final sensorToggleBehavior(II)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 7
    .line 8
    const v3, 0x10406c4

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 15
    .line 16
    const v3, 0x10406c5

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    move v3, v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_4

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    xor-int/lit8 v4, v2, 0x1

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    invoke-virtual {v0, v5, p1, v4, p2}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroupWithConfirmPopup(IIZI)V

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return v1

    .line 63
    :cond_4
    :goto_1
    return v2
.end method

.method public final setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "PhoneWindowManagerExt"

    .line 8
    .line 9
    const-string/jumbo p1, "showToast, message is null"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final showingSearcleToastIfNeeded()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->longPressOnHomePolicy()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 20
    .line 21
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    const/16 v2, 0x65

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const v1, 0x1040f45

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v2, 0x1040c5c

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const v1, 0x1040278

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string p0, "PhoneWindowManagerExt"

    .line 65
    .line 66
    const-string v0, "The toast message is empty"

    .line 67
    .line 68
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final startAIActivity(ILandroid/content/Intent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->getMultiWindowModeForAssistantHotKeyLocked()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    const-string v1, "PhoneWindowManagerExt"

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v3, "startAIActivity -> mTopActivity="

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, ", resizeMode="

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " LaunchMode="

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const v1, 0x3f333333    # 0.7f

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    const/4 v3, 0x2

    .line 63
    const/4 v4, 0x1

    .line 64
    if-ne p1, v4, :cond_3

    .line 65
    .line 66
    if-eq v0, v4, :cond_2

    .line 67
    .line 68
    if-eq v0, v3, :cond_1

    .line 69
    .line 70
    if-eq v0, v2, :cond_0

    .line 71
    .line 72
    const-string p1, "PhoneWindowManagerExt"

    .line 73
    .line 74
    const-string v0, "invalid multiwindow mode"

    .line 75
    .line 76
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 82
    .line 83
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFreeformLaunchBounds()Landroid/graphics/Rect;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v4}, Landroid/app/ActivityOptions;->setStartAssistantActivity(Z)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 109
    .line 110
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_1
    const p1, 0x10001000

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 124
    .line 125
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 130
    .line 131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 132
    .line 133
    .line 134
    monitor-enter p1

    .line 135
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 138
    .line 139
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/MultiTaskingController;->startAssistantActivityToSplitLocked(Landroid/content/Intent;F)V

    .line 140
    .line 141
    .line 142
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_2
    const/high16 p1, 0x10000000

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 161
    .line 162
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    if-ne p1, v3, :cond_8

    .line 167
    .line 168
    const-string p1, "ai_launch_mode"

    .line 169
    .line 170
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    if-ne v0, v3, :cond_4

    .line 174
    .line 175
    const-string p1, "ai_launch_split_ratio"

    .line 176
    .line 177
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    if-ne v0, v2, :cond_5

    .line 182
    .line 183
    const-string p1, "ai_hot_key_launch_freeform"

    .line 184
    .line 185
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    const-string p1, "ai_hot_key_launch_bounds"

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFreeformLaunchBounds()Landroid/graphics/Rect;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const/4 v0, 0x0

    .line 202
    if-eqz p1, :cond_6

    .line 203
    .line 204
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1, v4}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    move-object p1, v0

    .line 213
    :goto_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    if-eqz p1, :cond_7

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :cond_7
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 222
    .line 223
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 224
    .line 225
    .line 226
    :cond_8
    :goto_2
    return-void

    .line 227
    :catchall_1
    move-exception p0

    .line 228
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    .line 231
    .line 232
    throw p0
.end method

.method public final startGameToolsService(IIZ)Z
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.game.gametools"

    .line 2
    .line 3
    const-string v1, "PhoneWindowManagerExt"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v3, "start service game TOOLS: "

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 49
    .line 50
    const-string v2, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v0, "DEVICE_VID"

    .line 59
    .line 60
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p1, "DEVICE_PID"

    .line 64
    .line 65
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    if-eqz p3, :cond_0

    .line 69
    .line 70
    const-string p1, "CONNECTED"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string p1, "PRESS"

    .line 74
    .line 75
    :goto_0
    const-string p2, "DEVICE_ACTION"

    .line 76
    .line 77
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 83
    .line 84
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :cond_1
    const-string p0, "GameBooster is disabled"

    .line 90
    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "GameBooster is not installed, "

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_1
    return v2
.end method

.method public final startLockscreenFingerprintAuth()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "KeyguardServiceDelegate"

    .line 12
    .line 13
    const-string v1, "Start Fingerprint Authentication"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startFingerprintAuthentication()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final startSearcleByHomeKey(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "PhoneWindowManagerExt"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "keyguardOn, can not start Searcle by Home"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p0, "hasLastInfo, can not start Searcle by Home"

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 34
    .line 35
    invoke-virtual {v0, v3, v2}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string p0, "hasSystemKeyInfo, can not start Searcle by Home"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v3, "startSearcleByHomeKey, down="

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, " longPress="

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->setBlockTimerForSearcleLaunching()V

    .line 87
    .line 88
    .line 89
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 90
    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v1, "startSearcleByHomeKey down="

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string v1, "StatusBarManagerService"

    .line 113
    .line 114
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 120
    .line 121
    if-nez p0, :cond_4

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    :try_start_0
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 127
    .line 128
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->startSearcleByHomeKey(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    :catch_0
    :goto_0
    return-void
.end method

.method public final updateDoublePressLaunchInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "/"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    const/4 v1, 0x2

    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/content/ComponentName;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aget-object v1, p1, v1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object p1, p1, v2

    .line 25
    .line 26
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final updateDoublePressPowerBehavior()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/16 v6, 0x450

    .line 22
    .line 23
    if-ne v5, v6, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x68

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ne v3, v5, :cond_1

    .line 33
    .line 34
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v7, 0x7d1

    .line 46
    .line 47
    if-ne v5, v7, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x65

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/16 v1, 0x7d2

    .line 63
    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    const/16 v0, 0x69

    .line 67
    .line 68
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v0, 0x1

    .line 72
    if-eq v3, v0, :cond_5

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    if-eq v3, v0, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    if-ne v3, v0, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    if-eqz v4, :cond_6

    .line 82
    .line 83
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    :goto_0
    const/16 v0, 0x6a

    .line 87
    .line 88
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 89
    .line 90
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v1, "updateDoublePressPowerBehavior, behavior="

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 99
    .line 100
    const-string v1, "PhoneWindowManagerExt"

    .line 101
    .line 102
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final updateKeyCustomizationInfoTvMode()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    const/16 v2, 0x7d2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/16 v5, 0x1a

    .line 11
    .line 12
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v6

    .line 22
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 23
    .line 24
    if-eqz v7, :cond_2

    .line 25
    .line 26
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 27
    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v6, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    :goto_1
    if-eqz v6, :cond_2

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    const-string v1, "android.intent.action.MAIN"

    .line 50
    .line 51
    const-string v2, "android.intent.category.LAUNCHER"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 58
    .line 59
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 63
    .line 64
    const/16 v4, 0x8

    .line 65
    .line 66
    const/16 v5, 0x7d2

    .line 67
    .line 68
    const/16 v6, 0x1a

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    move-object v3, v1

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(IIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->updateSettings()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateSingleKeyGestureRule(I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_4

    .line 7
    .line 8
    aget v4, v0, v2

    .line 9
    .line 10
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 11
    .line 12
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x4

    .line 24
    if-ne v6, v7, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    and-int/lit8 v6, v4, 0x4

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    iget-object v5, v5, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 32
    .line 33
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    move-wide v7, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-wide v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 44
    .line 45
    :goto_1
    cmp-long v4, v7, v5

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    if-lez v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    const/16 v0, 0x1a

    .line 62
    .line 63
    if-ne p1, v0, :cond_6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    .line 82
    .line 83
    :cond_7
    :goto_3
    return-void
.end method
