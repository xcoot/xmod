.class public final Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# static fields
.field public static final DEBUG_INPUT:Z

.field public static final DEBUG_KEYGUARD:Z

.field public static final DEBUG_WAKEUP:Z

.field public static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

.field public mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public mAcquireInProgress:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerService:Landroid/app/IActivityManager;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

.field public mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field public mAltTabConsumedByDeX:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public volatile mBackKeyHandled:Z

.field public mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

.field public volatile mBootAnimationDismissable:Z

.field public mBootMessageNeedsHiding:Z

.field public mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field public mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

.field public mCameraLensCoverState:I

.field public mCarDockIntent:Landroid/content/Intent;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

.field public mDeskDockIntent:Landroid/content/Intent;

.field public volatile mDeviceGoingToSleep:Z

.field public volatile mDismissImeOnBackKeyPressed:Z

.field public mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field public final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

.field public mDoublePressOnPowerBehavior:I

.field public mDoublePressOnStemPrimaryBehavior:I

.field public mDoubleTapOnHomeBehavior:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mEnableBugReportKeyboardShortcut:Z

.field public mEnableCarDockHomeCapture:Z

.field public volatile mEndCallKeyHandled:Z

.field public final mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

.field public mEndcallBehavior:I

.field public mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public mExtraDisplay:Landroid/view/Display;

.field public mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mFallbackActions:Landroid/util/SparseArray;

.field public mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field public mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field public mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

.field public mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field public mGoToSleepOnButtonPressTheaterMode:Z

.field public final mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

.field public mHandleVolumeKeysInWM:Z

.field public mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public mHasFeatureAuto:Z

.field public mHasFeatureHdmiCec:Z

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public mHasSoftInput:Z

.field public mHavePendingMediaKeyRepeatWithWakeLock:Z

.field public mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mHomeIntent:Landroid/content/Intent;

.field public mIncallBackBehavior:I

.field public mIncallPowerBehavior:I

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public volatile mIsGoingToSleepDefaultDisplay:Z

.field public mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public final mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mKeyguardDrawnOnce:Z

.field public mKeyguardDrawnTimeout:I

.field public mKeyguardOccludedChanged:Z

.field public mKidsModeEnabled:Z

.field public mLastModifierState:I

.field public mLidKeyboardAccessibility:I

.field public mLidNavigationAccessibility:I

.field public final mLock:Ljava/lang/Object;

.field public mLockAfterDreamingTransitionFinished:Z

.field public mLockNowPending:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenTimeout:I

.field public mLockScreenTimerActive:Z

.field public mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mLongPressOnBackBehavior:I

.field public mLongPressOnHomeBehavior:I

.field public mLongPressOnPowerAssistantTimeoutMs:J

.field public mLongPressOnPowerBehavior:I

.field public mLongPressOnStemPrimaryBehavior:I

.field public mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field public final mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

.field public volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPendingCapsLockToggle:Z

.field public mPendingKeyguardOccluded:Z

.field public mPendingMetaAction:Z

.field public volatile mPendingWakeKey:I

.field public final mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

.field public volatile mPictureInPictureVisible:Z

.field public mPowerButtonSuppressionDelayMillis:I

.field public mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field public volatile mPowerKeyHandled:Z

.field public mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerVolUpBehavior:I

.field public mPreloadedRecentApps:Z

.field public mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

.field public mRecentAppsHeldModifiers:I

.field public volatile mRecentsVisible:Z

.field public mRingerToggleChord:I

.field public mSafeMode:Z

.field public final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field public mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public final mScreenOnListeners:Landroid/util/SparseArray;

.field public mSearchKeyBehavior:I

.field public mSearchKeyTargetActivity:Landroid/content/ComponentName;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsKeyBehavior:I

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field public mShortPressOnPowerBehavior:I

.field public mShortPressOnSleepBehavior:I

.field public mShortPressOnStemPrimaryBehavior:I

.field public mShortPressOnWindowBehavior:I

.field public mShouldEarlyShortPressOnPower:Z

.field public mShouldEarlyShortPressOnStemPrimary:Z

.field public mShouldHandleVolumeLongpress:Z

.field public mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field public mSilenceRingerOnSleepKey:Z

.field public mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field public final mSleepTokenLock:Ljava/lang/Object;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStylusButtonsEnabled:Z

.field public mSupportLongPressPowerWhenNonInteractive:Z

.field public mSupportShortPressPowerWhenDefaultDisplayOn:Z

.field public mSystemBooted:Z

.field public mSystemKeyRequested:Z

.field public mSystemNavigationKeysEnabled:Z

.field public mSystemReady:Z

.field public mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

.field public volatile mTopFocusedDisplayId:I

.field public mTriplePressOnPowerBehavior:I

.field public mTriplePressOnStemPrimaryBehavior:I

.field public mUiMode:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUseTvRouting:Z

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVeryLongPressOnPowerBehavior:I

.field public mVibrator:Landroid/os/Vibrator;

.field public mVrHeadsetHomeIntent:Landroid/content/Intent;

.field public volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

.field public mWakeGestureEnabledSetting:Z

.field public mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field public mWakeOnAssistKeyPress:Z

.field public mWakeOnBackKeyPress:Z

.field public mWakeOnDpadKeyPress:Z

.field public mWakeUpToLastStateTimeout:J

.field public mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

.field public mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public static -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const-string/jumbo v0, "waitForAllWindowsDrawn"

    .line 40
    .line 41
    .line 42
    const-wide/16 v3, 0x20

    .line 43
    .line 44
    const/4 v1, -0x1

    .line 45
    invoke-static {v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 51
    .line 52
    const/4 v3, 0x7

    .line 53
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-wide/16 v2, 0x3e8

    .line 58
    .line 59
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1

    .line 68
    :goto_3
    return-void

    .line 69
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    throw p0
.end method

.method public static -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "stemPrimaryPress: "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "WindowManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne p1, v0, :cond_7

    .line 29
    .line 30
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 31
    .line 32
    const-string/jumbo v0, "stemPrimaryTriplePressAction: "

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eq p1, v4, :cond_0

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-class v5, Landroid/view/accessibility/AccessibilityManager;

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 87
    .line 88
    iget-object v6, p1, Lcom/android/server/policy/TalkbackShortcutController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string v7, "TalkBack"

    .line 99
    .line 100
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_1

    .line 105
    .line 106
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_2

    .line 113
    .line 114
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_1

    .line 121
    .line 122
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    .line 123
    .line 124
    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v2, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    if-nez v2, :cond_4

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    xor-int/2addr v0, v4

    .line 145
    iget-object v1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v1, v2, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 148
    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_5

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string/jumbo v0, "wear_accessibility_gesture_enabled_during_oobe"

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    iget-object p1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    const/4 v0, 0x7

    .line 176
    invoke-static {p1, v2, v0, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_15

    .line 186
    .line 187
    const-string p1, "Stem primary - Triple Press - Toggle Accessibility"

    .line 188
    .line 189
    const/16 v0, 0x10

    .line 190
    .line 191
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_7
    const/4 v0, 0x2

    .line 197
    if-ne p1, v0, :cond_d

    .line 198
    .line 199
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 200
    .line 201
    const-string/jumbo v0, "stemPrimaryDoublePressAction: "

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    if-eq p1, v4, :cond_8

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 212
    .line 213
    if-nez p1, :cond_9

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    :goto_1
    if-nez v3, :cond_15

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 223
    .line 224
    if-nez p1, :cond_b

    .line 225
    .line 226
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 227
    .line 228
    if-eqz p1, :cond_a

    .line 229
    .line 230
    const-string p1, "No recent task available! Show wallpaper."

    .line 231
    .line 232
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_b
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 241
    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v3, "Starting task from recents. id="

    .line 247
    .line 248
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, ", persistentId="

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 262
    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v3, ", topActivity="

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v3, ", baseIntent="

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 282
    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_c
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 294
    .line 295
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 296
    .line 297
    invoke-interface {p0, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :catch_0
    move-exception p0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v2, "Failed to start task "

    .line 306
    .line 307
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 311
    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p1, " from recents"

    .line 316
    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_d
    if-ne p1, v4, :cond_15

    .line 330
    .line 331
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 332
    .line 333
    const-string/jumbo v2, "stemPrimarySinglePressAction: behavior="

    .line 334
    .line 335
    .line 336
    invoke-static {p1, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    if-nez p1, :cond_e

    .line 340
    .line 341
    goto/16 :goto_2

    .line 342
    .line 343
    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 344
    .line 345
    if-eqz v2, :cond_10

    .line 346
    .line 347
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_10

    .line 352
    .line 353
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 354
    .line 355
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 356
    .line 357
    if-eqz p0, :cond_f

    .line 358
    .line 359
    const/16 p1, 0x108

    .line 360
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemKeyPressed(I)V

    .line 362
    .line 363
    .line 364
    :cond_f
    const-string/jumbo p0, "stemPrimarySinglePressAction: skip due to keyguard"

    .line 365
    .line 366
    .line 367
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_10
    if-eq p1, v4, :cond_14

    .line 372
    .line 373
    if-eq p1, v0, :cond_11

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_11
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 377
    .line 378
    if-eqz p1, :cond_13

    .line 379
    .line 380
    new-instance p1, Landroid/content/Intent;

    .line 381
    .line 382
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_12

    .line 401
    .line 402
    const v0, 0x10204000

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    .line 407
    .line 408
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 409
    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 411
    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v0, "Could not resolve activity with : "

    .line 417
    .line 418
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 422
    .line 423
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p0, " name."

    .line 431
    .line 432
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    goto :goto_2

    .line 443
    :cond_13
    const-string/jumbo p0, "mPrimaryShortPressTargetActivity must not be null and correctly specified"

    .line 444
    .line 445
    .line 446
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_14
    const-string p1, "android.intent.action.ALL_APPS"

    .line 451
    .line 452
    const/high16 v0, 0x10200000

    .line 453
    .line 454
    invoke-static {v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 459
    .line 460
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 461
    .line 462
    .line 463
    :cond_15
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 7
    .line 8
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 9
    .line 10
    const/16 v0, 0x7d3

    .line 11
    .line 12
    const/16 v1, 0x7da

    .line 13
    .line 14
    filled-new-array {v0, v1}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 4

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
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 30
    .line 31
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$1;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 42
    .line 43
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 48
    .line 49
    new-instance v1, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 55
    .line 56
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 57
    .line 58
    new-instance v1, Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 64
    .line 65
    new-instance v1, Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 71
    .line 72
    new-instance v1, Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 73
    .line 74
    const/16 v3, 0x64

    .line 75
    .line 76
    invoke-direct {v1, v3, v0}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 85
    .line 86
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 87
    .line 88
    const/16 v1, 0x320

    .line 89
    .line 90
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 93
    .line 94
    const/16 v1, 0x3e8

    .line 95
    .line 96
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 99
    .line 100
    new-instance v1, Ljava/lang/Object;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 106
    .line 107
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$2;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

    .line 113
    .line 114
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$3;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 122
    .line 123
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$4;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    invoke-direct {v1, v2, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 130
    .line 131
    new-instance v1, Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 137
    .line 138
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastModifierState:I

    .line 139
    .line 140
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    .line 141
    .line 142
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    .line 149
    .line 150
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    .line 157
    .line 158
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 164
    .line 165
    return-void
.end method

.method public static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
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
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    const-string p0, "MULTI_PRESS_POWER_SIDE_KEY_BEHAVIOR"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    const-string p0, "MULTI_PRESS_POWER_EMERGENCY_SOS"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_2
    const-string p0, "MULTI_PRESS_POWER_PANIC_CALL"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_3
    const-string p0, "MULTI_PRESS_POWER_QUICK_LAUNCH_CAMERA"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "MULTI_PRESS_POWER_THEATER_MODE"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final applyKeyguardOcclusionChange()I
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 2
    .line 3
    const-string v1, "WindowManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "transition/occluded commit occluded="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " changed="

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string/jumbo v0, "setKeyguardOccluded occluded="

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v4, "setOccluded("

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ")"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "KeyguardServiceDelegate"

    .line 72
    .line 73
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string/jumbo v6, "setOccluded"

    .line 89
    .line 90
    .line 91
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/16 v4, 0x7920

    .line 96
    .line 97
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    iget-object v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 101
    .line 102
    invoke-virtual {v3, v2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZZ)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 106
    .line 107
    iput-boolean v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_3

    .line 116
    .line 117
    const/4 p0, 0x5

    .line 118
    return p0

    .line 119
    :cond_3
    return v0
.end method

.method public final applyLidSwitchState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "lid_behavior"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final bindKeyguard()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

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
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final checkAddPermission(IZLjava/lang/String;[I)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 5
    .line 6
    const/4 v3, -0x8

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    const/4 v5, -0x1

    .line 20
    aput v5, p4, v4

    .line 21
    .line 22
    const/16 v5, 0xbb7

    .line 23
    .line 24
    const/16 v6, 0x7d0

    .line 25
    .line 26
    const/16 v7, 0x3e8

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-lt v1, v8, :cond_1

    .line 30
    .line 31
    const/16 v9, 0x63

    .line 32
    .line 33
    if-le v1, v9, :cond_3

    .line 34
    .line 35
    :cond_1
    if-lt v1, v7, :cond_2

    .line 36
    .line 37
    const/16 v9, 0x7cf

    .line 38
    .line 39
    if-le v1, v9, :cond_3

    .line 40
    .line 41
    :cond_2
    if-lt v1, v6, :cond_13

    .line 42
    .line 43
    if-le v1, v5, :cond_3

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_3
    if-lt v1, v6, :cond_12

    .line 48
    .line 49
    if-le v1, v5, :cond_4

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_8

    .line 58
    .line 59
    const/16 v5, 0x7d5

    .line 60
    .line 61
    if-eq v1, v5, :cond_7

    .line 62
    .line 63
    const/16 v5, 0x7db

    .line 64
    .line 65
    if-eq v1, v5, :cond_6

    .line 66
    .line 67
    const/16 v5, 0x7dd

    .line 68
    .line 69
    if-eq v1, v5, :cond_6

    .line 70
    .line 71
    const/16 v5, 0x7e8

    .line 72
    .line 73
    if-eq v1, v5, :cond_6

    .line 74
    .line 75
    const/16 v5, 0x7f3

    .line 76
    .line 77
    if-eq v1, v5, :cond_6

    .line 78
    .line 79
    const/16 v5, 0x7f5

    .line 80
    .line 81
    if-eq v1, v5, :cond_6

    .line 82
    .line 83
    packed-switch v1, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    move v3, v4

    .line 95
    :cond_5
    return v3

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->createAccessibilityOverlayAppOpEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    const/16 v0, 0x8a

    .line 103
    .line 104
    aput v0, p4, v4

    .line 105
    .line 106
    :cond_6
    :pswitch_1
    return v4

    .line 107
    :cond_7
    const/16 v0, 0x2d

    .line 108
    .line 109
    aput v0, p4, v4

    .line 110
    .line 111
    return v4

    .line 112
    :cond_8
    const/16 v5, 0x18

    .line 113
    .line 114
    aput v5, p4, v4

    .line 115
    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-ne v5, v7, :cond_9

    .line 125
    .line 126
    return v4

    .line 127
    :cond_9
    :try_start_0
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 130
    .line 131
    .line 132
    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    move-object/from16 v7, p3

    .line 134
    .line 135
    :try_start_1
    invoke-virtual {v5, v7, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-object/from16 v7, p3

    .line 141
    .line 142
    :catch_1
    const/4 v5, 0x0

    .line 143
    :goto_0
    if-eqz v5, :cond_10

    .line 144
    .line 145
    const/16 v6, 0x7f6

    .line 146
    .line 147
    if-eq v1, v6, :cond_a

    .line 148
    .line 149
    iget v1, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 150
    .line 151
    const/16 v6, 0x1a

    .line 152
    .line 153
    if-lt v1, v6, :cond_a

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_a
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    const-string v2, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_b

    .line 165
    .line 166
    return v4

    .line 167
    :cond_b
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 168
    .line 169
    aget v10, p4, v4

    .line 170
    .line 171
    const/4 v13, 0x0

    .line 172
    const-string v14, "check-add"

    .line 173
    .line 174
    move-object/from16 v12, p3

    .line 175
    .line 176
    invoke-virtual/range {v9 .. v14}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_f

    .line 181
    .line 182
    if-eq v1, v8, :cond_f

    .line 183
    .line 184
    const/4 v2, 0x2

    .line 185
    if-eq v1, v2, :cond_d

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_c

    .line 196
    .line 197
    move v3, v4

    .line 198
    :cond_c
    return v3

    .line 199
    :cond_d
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 200
    .line 201
    const/16 v1, 0x17

    .line 202
    .line 203
    if-ge v0, v1, :cond_e

    .line 204
    .line 205
    return v4

    .line 206
    :cond_e
    return v3

    .line 207
    :cond_f
    return v4

    .line 208
    :cond_10
    :goto_1
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_11

    .line 215
    .line 216
    move v3, v4

    .line 217
    :cond_11
    return v3

    .line 218
    :cond_12
    :goto_2
    return v4

    .line 219
    :cond_13
    :goto_3
    const/16 v0, -0xa

    .line 220
    .line 221
    return v0

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createHomeDockIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v3, 0x2

    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v3, 0x6

    .line 19
    if-ne v0, v3, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 22
    .line 23
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    if-ne v0, v2, :cond_4

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    const/4 v2, 0x7

    .line 37
    if-ne v0, v2, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    :goto_0
    move-object v0, v1

    .line 43
    :goto_1
    if-nez v0, :cond_5

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    const v3, 0x10080

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 52
    .line 53
    invoke-virtual {v2, v0, v3, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_6

    .line 58
    .line 59
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    move-object p0, v1

    .line 63
    :goto_2
    if-eqz p0, :cond_7

    .line 64
    .line 65
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    if-eqz v2, :cond_7

    .line 68
    .line 69
    const-string v3, "android.dock_home"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    new-instance v1, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    :cond_7
    return-object v1
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    return-void
.end method

.method public final dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    const-string v1, "WindowManager"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "PWM.dismissKeyguardLw"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "Failed to call callback"

    .line 40
    .line 41
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "mSafeMode="

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 15
    .line 16
    .line 17
    const-string v1, " mSystemReady="

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 25
    .line 26
    .line 27
    const-string v1, " mSystemBooted="

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 33
    .line 34
    const-string v2, "mCameraLensCoverState="

    .line 35
    .line 36
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 40
    .line 41
    const/4 v2, -0x1

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eq v1, v2, :cond_2

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    if-eq v1, v3, :cond_0

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "CAMERA_LENS_COVERED"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "CAMERA_LENS_UNCOVERED"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string v1, "CAMERA_LENS_COVER_ABSENT"

    .line 61
    .line 62
    :goto_0
    const-string/jumbo v2, "mWakeGestureEnabledSetting="

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 69
    .line 70
    const-string/jumbo v2, "mUiMode="

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 77
    .line 78
    invoke-static {v1}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "mEnableCarDockHomeCapture="

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 91
    .line 92
    const-string/jumbo v2, "mLidKeyboardAccessibility="

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 101
    .line 102
    .line 103
    const-string v1, " mLidNavigationAccessibility="

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 111
    .line 112
    .line 113
    const-string v1, " getLidBehavior="

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "lid_behavior"

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/4 v2, 0x2

    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    if-eq v1, v3, :cond_4

    .line 135
    .line 136
    if-eq v1, v2, :cond_3

    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const-string v1, "LID_BEHAVIOR_LOCK"

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    const-string v1, "LID_BEHAVIOR_SLEEP"

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    const-string v1, "LID_BEHAVIOR_NONE"

    .line 150
    .line 151
    :goto_1
    const-string/jumbo v5, "mLongPressOnBackBehavior="

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    if-eq v1, v3, :cond_6

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    goto :goto_2

    .line 168
    :cond_6
    const-string v1, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    const-string v1, "LONG_PRESS_BACK_NOTHING"

    .line 172
    .line 173
    :goto_2
    const-string/jumbo v5, "mLongPressOnHomeBehavior="

    .line 174
    .line 175
    .line 176
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 180
    .line 181
    const/4 v5, 0x4

    .line 182
    const/4 v6, 0x3

    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    if-eq v1, v3, :cond_c

    .line 186
    .line 187
    if-eq v1, v2, :cond_b

    .line 188
    .line 189
    if-eq v1, v6, :cond_a

    .line 190
    .line 191
    if-eq v1, v5, :cond_9

    .line 192
    .line 193
    const/16 v7, 0x65

    .line 194
    .line 195
    if-eq v1, v7, :cond_8

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    goto :goto_3

    .line 202
    :cond_8
    const-string v1, "LONG_PRESS_HOME_BIXBY_TOUCH"

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_9
    const-string v1, "LONG_PRESS_HOME_SEARCLE"

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const-string v1, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_b
    const-string v1, "LONG_PRESS_HOME_ASSIST"

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_c
    const-string v1, "LONG_PRESS_HOME_ALL_APPS"

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_d
    const-string v1, "LONG_PRESS_HOME_NOTHING"

    .line 218
    .line 219
    :goto_3
    const-string v7, "mDoubleTapOnHomeBehavior="

    .line 220
    .line 221
    invoke-static {p1, v1, v0, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 225
    .line 226
    if-eqz v1, :cond_10

    .line 227
    .line 228
    if-eq v1, v3, :cond_f

    .line 229
    .line 230
    if-eq v1, v2, :cond_e

    .line 231
    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_4

    .line 237
    :cond_e
    const-string v1, "DOUBLE_TAP_HOME_PIP_MENU"

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_f
    const-string v1, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_10
    const-string v1, "DOUBLE_TAP_HOME_NOTHING"

    .line 244
    .line 245
    :goto_4
    const-string/jumbo v7, "mShortPressOnPowerBehavior="

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v1, v0, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 252
    .line 253
    const/4 v7, 0x5

    .line 254
    if-eqz v1, :cond_16

    .line 255
    .line 256
    if-eq v1, v3, :cond_15

    .line 257
    .line 258
    if-eq v1, v2, :cond_14

    .line 259
    .line 260
    if-eq v1, v6, :cond_13

    .line 261
    .line 262
    if-eq v1, v5, :cond_12

    .line 263
    .line 264
    if-eq v1, v7, :cond_11

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_5

    .line 271
    :cond_11
    const-string v1, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_12
    const-string v1, "SHORT_PRESS_POWER_GO_HOME"

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_13
    const-string v1, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_14
    const-string v1, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_15
    const-string v1, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_16
    const-string v1, "SHORT_PRESS_POWER_NOTHING"

    .line 287
    .line 288
    :goto_5
    const-string/jumbo v8, "mLongPressOnPowerBehavior="

    .line 289
    .line 290
    .line 291
    invoke-static {p1, v1, v0, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 295
    .line 296
    if-eqz v1, :cond_1c

    .line 297
    .line 298
    if-eq v1, v3, :cond_1b

    .line 299
    .line 300
    if-eq v1, v2, :cond_1a

    .line 301
    .line 302
    if-eq v1, v6, :cond_19

    .line 303
    .line 304
    if-eq v1, v5, :cond_18

    .line 305
    .line 306
    if-eq v1, v7, :cond_17

    .line 307
    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto :goto_6

    .line 313
    :cond_17
    const-string v1, "LONG_PRESS_POWER_ASSISTANT"

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_18
    const-string v1, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_19
    const-string v1, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_1a
    const-string v1, "LONG_PRESS_POWER_SHUT_OFF"

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_1b
    const-string v1, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_1c
    const-string v1, "LONG_PRESS_POWER_NOTHING"

    .line 329
    .line 330
    :goto_6
    const-string/jumbo v5, "mSettingsKeyBehavior="

    .line 331
    .line 332
    .line 333
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 337
    .line 338
    if-eqz v1, :cond_1f

    .line 339
    .line 340
    if-eq v1, v3, :cond_1e

    .line 341
    .line 342
    if-eq v1, v2, :cond_1d

    .line 343
    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    goto :goto_7

    .line 349
    :cond_1d
    const-string v1, "SETTINGS_KEY_BEHAVIOR_NOTHING"

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_1e
    const-string v1, "SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL"

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_1f
    const-string v1, "SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY"

    .line 356
    .line 357
    :goto_7
    const-string/jumbo v5, "mLongPressOnPowerAssistantTimeoutMs="

    .line 358
    .line 359
    .line 360
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-wide v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 364
    .line 365
    const-string/jumbo v1, "mVeryLongPressOnPowerBehavior="

    .line 366
    .line 367
    .line 368
    invoke-static {v7, v8, p1, v0, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 372
    .line 373
    if-eqz v1, :cond_21

    .line 374
    .line 375
    if-eq v1, v3, :cond_20

    .line 376
    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    goto :goto_8

    .line 382
    :cond_20
    const-string v1, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_21
    const-string v1, "VERY_LONG_PRESS_POWER_NOTHING"

    .line 386
    .line 387
    :goto_8
    const-string v5, "mDoublePressOnPowerBehavior="

    .line 388
    .line 389
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 393
    .line 394
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string/jumbo v1, "mTriplePressOnPowerBehavior="

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 411
    .line 412
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const-string/jumbo v1, "mSupportShortPressPowerWhenDefaultDisplayOn="

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 429
    .line 430
    const-string/jumbo v5, "mPowerVolUpBehavior="

    .line 431
    .line 432
    .line 433
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 434
    .line 435
    .line 436
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 437
    .line 438
    if-eqz v1, :cond_24

    .line 439
    .line 440
    if-eq v1, v3, :cond_23

    .line 441
    .line 442
    if-eq v1, v2, :cond_22

    .line 443
    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    goto :goto_9

    .line 449
    :cond_22
    const-string v1, "POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS"

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_23
    const-string v1, "POWER_VOLUME_UP_BEHAVIOR_MUTE"

    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_24
    const-string v1, "POWER_VOLUME_UP_BEHAVIOR_NOTHING"

    .line 456
    .line 457
    :goto_9
    const-string/jumbo v5, "mShortPressOnSleepBehavior="

    .line 458
    .line 459
    .line 460
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 464
    .line 465
    if-eqz v1, :cond_26

    .line 466
    .line 467
    if-eq v1, v3, :cond_25

    .line 468
    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    goto :goto_a

    .line 474
    :cond_25
    const-string v1, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_26
    const-string v1, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    .line 478
    .line 479
    :goto_a
    const-string/jumbo v5, "mShortPressOnWindowBehavior="

    .line 480
    .line 481
    .line 482
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 486
    .line 487
    if-eqz v1, :cond_28

    .line 488
    .line 489
    if-eq v1, v3, :cond_27

    .line 490
    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    goto :goto_b

    .line 496
    :cond_27
    const-string v1, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_28
    const-string v1, "SHORT_PRESS_WINDOW_NOTHING"

    .line 500
    .line 501
    :goto_b
    const-string/jumbo v5, "mShortPressOnStemPrimaryBehavior="

    .line 502
    .line 503
    .line 504
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 508
    .line 509
    if-eqz v1, :cond_2b

    .line 510
    .line 511
    if-eq v1, v3, :cond_2a

    .line 512
    .line 513
    if-eq v1, v2, :cond_29

    .line 514
    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    goto :goto_c

    .line 520
    :cond_29
    const-string v1, "SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY"

    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_2a
    const-string v1, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    .line 524
    .line 525
    goto :goto_c

    .line 526
    :cond_2b
    const-string v1, "SHORT_PRESS_PRIMARY_NOTHING"

    .line 527
    .line 528
    :goto_c
    const-string v5, "mDoublePressOnStemPrimaryBehavior="

    .line 529
    .line 530
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 534
    .line 535
    if-eqz v1, :cond_2d

    .line 536
    .line 537
    if-eq v1, v3, :cond_2c

    .line 538
    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    goto :goto_d

    .line 544
    :cond_2c
    const-string v1, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    .line 545
    .line 546
    goto :goto_d

    .line 547
    :cond_2d
    const-string v1, "DOUBLE_PRESS_PRIMARY_NOTHING"

    .line 548
    .line 549
    :goto_d
    const-string/jumbo v5, "mTriplePressOnStemPrimaryBehavior="

    .line 550
    .line 551
    .line 552
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 556
    .line 557
    if-eqz v1, :cond_2f

    .line 558
    .line 559
    if-eq v1, v3, :cond_2e

    .line 560
    .line 561
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    goto :goto_e

    .line 566
    :cond_2e
    const-string v1, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    .line 567
    .line 568
    goto :goto_e

    .line 569
    :cond_2f
    const-string v1, "TRIPLE_PRESS_PRIMARY_NOTHING"

    .line 570
    .line 571
    :goto_e
    const-string/jumbo v5, "mLongPressOnStemPrimaryBehavior="

    .line 572
    .line 573
    .line 574
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 578
    .line 579
    if-eqz v1, :cond_31

    .line 580
    .line 581
    if-eq v1, v3, :cond_30

    .line 582
    .line 583
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    goto :goto_f

    .line 588
    :cond_30
    const-string v1, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    .line 589
    .line 590
    goto :goto_f

    .line 591
    :cond_31
    const-string v1, "LONG_PRESS_PRIMARY_NOTHING"

    .line 592
    .line 593
    :goto_f
    const-string v5, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    .line 594
    .line 595
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 599
    .line 600
    const-string v5, "mHasSoftInput="

    .line 601
    .line 602
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 603
    .line 604
    .line 605
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 606
    .line 607
    const-string v5, "mDismissImeOnBackKeyPressed="

    .line 608
    .line 609
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 610
    .line 611
    .line 612
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 613
    .line 614
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 615
    .line 616
    .line 617
    const-string v1, " mIncallPowerBehavior="

    .line 618
    .line 619
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 623
    .line 624
    and-int/2addr v1, v2

    .line 625
    if-eqz v1, :cond_32

    .line 626
    .line 627
    const-string v1, "hangup"

    .line 628
    .line 629
    goto :goto_10

    .line 630
    :cond_32
    const-string/jumbo v1, "sleep"

    .line 631
    .line 632
    .line 633
    :goto_10
    const-string v5, "mIncallBackBehavior="

    .line 634
    .line 635
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 639
    .line 640
    and-int/2addr v1, v3

    .line 641
    if-eqz v1, :cond_33

    .line 642
    .line 643
    const-string v1, "hangup"

    .line 644
    .line 645
    goto :goto_11

    .line 646
    :cond_33
    const-string v1, "<nothing>"

    .line 647
    .line 648
    :goto_11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    const-string v1, " mEndcallBehavior="

    .line 652
    .line 653
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 657
    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .line 662
    .line 663
    and-int/lit8 v7, v1, 0x1

    .line 664
    .line 665
    if-eqz v7, :cond_34

    .line 666
    .line 667
    const-string v7, "home|"

    .line 668
    .line 669
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    :cond_34
    and-int/2addr v1, v2

    .line 673
    if-eqz v1, :cond_35

    .line 674
    .line 675
    const-string/jumbo v1, "sleep|"

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    :cond_35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-nez v1, :cond_36

    .line 686
    .line 687
    const-string v1, "<nothing>"

    .line 688
    .line 689
    goto :goto_12

    .line 690
    :cond_36
    sub-int/2addr v1, v3

    .line 691
    invoke-virtual {v5, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    :goto_12
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    const-string v1, "mDisplayHomeButtonHandlers="

    .line 702
    .line 703
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    move v1, v4

    .line 707
    :goto_13
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 708
    .line 709
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 710
    .line 711
    .line 712
    move-result v5

    .line 713
    if-ge v1, v5, :cond_37

    .line 714
    .line 715
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 716
    .line 717
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 718
    .line 719
    .line 720
    move-result v5

    .line 721
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    const-string v7, "  "

    .line 725
    .line 726
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 730
    .line 731
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    add-int/lit8 v1, v1, 0x1

    .line 739
    .line 740
    goto :goto_13

    .line 741
    :cond_37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    const-string v1, "mKeyguardOccluded="

    .line 745
    .line 746
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 754
    .line 755
    .line 756
    const-string v1, " mKeyguardOccludedChanged="

    .line 757
    .line 758
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 762
    .line 763
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 764
    .line 765
    .line 766
    const-string v1, " mPendingKeyguardOccluded="

    .line 767
    .line 768
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 772
    .line 773
    const-string v5, "mAllowLockscreenWhenOnDisplays="

    .line 774
    .line 775
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 776
    .line 777
    .line 778
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    xor-int/2addr v1, v3

    .line 785
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 786
    .line 787
    .line 788
    const-string v1, " mLockScreenTimeout="

    .line 789
    .line 790
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 794
    .line 795
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 796
    .line 797
    .line 798
    const-string v1, " mLockScreenTimerActive="

    .line 799
    .line 800
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 804
    .line 805
    const-string v5, "mKidsModeEnabled="

    .line 806
    .line 807
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 808
    .line 809
    .line 810
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    .line 811
    .line 812
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 813
    .line 814
    .line 815
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 816
    .line 817
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    const-string v5, "mHapticTextHandleEnabled="

    .line 821
    .line 822
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    iget-boolean v1, v1, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    .line 826
    .line 827
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 828
    .line 829
    .line 830
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 831
    .line 832
    iget-object v5, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 833
    .line 834
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-nez v5, :cond_38

    .line 839
    .line 840
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    const-string v1, "mKeyMapping.size=0"

    .line 844
    .line 845
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    goto :goto_15

    .line 849
    :cond_38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    const-string v7, "mKeyMapping={"

    .line 853
    .line 854
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    move v7, v4

    .line 858
    :goto_14
    if-ge v7, v5, :cond_39

    .line 859
    .line 860
    const-string v8, "  "

    .line 861
    .line 862
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 869
    .line 870
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 871
    .line 872
    .line 873
    move-result v8

    .line 874
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v8

    .line 878
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    const-string v8, "="

    .line 882
    .line 883
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 887
    .line 888
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v8

    .line 892
    check-cast v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 893
    .line 894
    iget-object v8, v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 895
    .line 896
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v8

    .line 900
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    const-string v8, ",dispatchWhenNonInteractive="

    .line 904
    .line 905
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 909
    .line 910
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v8

    .line 914
    check-cast v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 915
    .line 916
    iget-boolean v8, v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    .line 917
    .line 918
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 919
    .line 920
    .line 921
    add-int/lit8 v7, v7, 0x1

    .line 922
    .line 923
    goto :goto_14

    .line 924
    :cond_39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    const-string/jumbo v1, "}"

    .line 928
    .line 929
    .line 930
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    :goto_15
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 934
    .line 935
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    const-string v5, "    KeyCombination rules:"

    .line 939
    .line 940
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    iget-object v5, v1, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 944
    .line 945
    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;

    .line 946
    .line 947
    invoke-direct {v7, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    .line 948
    .line 949
    .line 950
    invoke-static {v5, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 951
    .line 952
    .line 953
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 954
    .line 955
    if-eqz v5, :cond_3b

    .line 956
    .line 957
    move v5, v4

    .line 958
    :goto_16
    iget-object v7, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 959
    .line 960
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    .line 961
    .line 962
    .line 963
    move-result v7

    .line 964
    if-ge v5, v7, :cond_3a

    .line 965
    .line 966
    new-instance v7, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    const-string v8, "     mDownTimes keyCode="

    .line 969
    .line 970
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    iget-object v8, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 974
    .line 975
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 976
    .line 977
    .line 978
    move-result v8

    .line 979
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v7

    .line 986
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    new-instance v7, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    const-string v8, " time="

    .line 992
    .line 993
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    iget-object v8, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 997
    .line 998
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 999
    .line 1000
    .line 1001
    move-result-wide v8

    .line 1002
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v7

    .line 1009
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    add-int/lit8 v5, v5, 0x1

    .line 1013
    .line 1014
    goto :goto_16

    .line 1015
    :cond_3a
    move v5, v4

    .line 1016
    :goto_17
    iget-object v7, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 1017
    .line 1018
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 1019
    .line 1020
    .line 1021
    move-result v7

    .line 1022
    if-ge v5, v7, :cond_3b

    .line 1023
    .line 1024
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    const-string v8, "     mDownKeyEvent event="

    .line 1027
    .line 1028
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    iget-object v8, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 1032
    .line 1033
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v8

    .line 1037
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    add-int/lit8 v5, v5, 0x1

    .line 1048
    .line 1049
    goto :goto_17

    .line 1050
    :cond_3b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1051
    .line 1052
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    .line 1054
    .line 1055
    const-string v5, "    SingleKey rules:"

    .line 1056
    .line 1057
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    move v5, v4

    .line 1061
    :goto_18
    iget-object v7, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 1062
    .line 1063
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 1064
    .line 1065
    .line 1066
    move-result v7

    .line 1067
    if-ge v5, v7, :cond_3c

    .line 1068
    .line 1069
    iget-object v7, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 1070
    .line 1071
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v7

    .line 1075
    check-cast v7, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1076
    .line 1077
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    const-string v9, "      "

    .line 1080
    .line 1081
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v7

    .line 1091
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    add-int/lit8 v5, v5, 0x1

    .line 1095
    .line 1096
    goto :goto_18

    .line 1097
    :cond_3c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 1098
    .line 1099
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1100
    .line 1101
    .line 1102
    const-string v5, "    Deferred key action executor:"

    .line 1103
    .line 1104
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 1108
    .line 1109
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 1110
    .line 1111
    .line 1112
    move-result v5

    .line 1113
    if-nez v5, :cond_3d

    .line 1114
    .line 1115
    const-string v1, "      empty"

    .line 1116
    .line 1117
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_1b

    .line 1121
    :cond_3d
    :goto_19
    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 1122
    .line 1123
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    if-ge v4, v5, :cond_3f

    .line 1128
    .line 1129
    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 1130
    .line 1131
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v5

    .line 1135
    check-cast v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 1136
    .line 1137
    iget-boolean v7, v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mExecutable:Z

    .line 1138
    .line 1139
    iget v8, v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mKeyCode:I

    .line 1140
    .line 1141
    if-eqz v7, :cond_3e

    .line 1142
    .line 1143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    const-string v7, "      "

    .line 1146
    .line 1147
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v7

    .line 1154
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    const-string v7, ": executable"

    .line 1158
    .line 1159
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v5

    .line 1166
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    goto :goto_1a

    .line 1170
    :cond_3e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    const-string v9, "      "

    .line 1173
    .line 1174
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v8

    .line 1181
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    const-string v8, ": "

    .line 1185
    .line 1186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    iget-object v5, v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 1190
    .line 1191
    check-cast v5, Ljava/util/ArrayList;

    .line 1192
    .line 1193
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1194
    .line 1195
    .line 1196
    move-result v5

    .line 1197
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    const-string v5, " actions queued"

    .line 1201
    .line 1202
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v5

    .line 1209
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    .line 1213
    .line 1214
    goto :goto_19

    .line 1215
    :cond_3f
    :goto_1b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 1216
    .line 1217
    if-eqz v1, :cond_40

    .line 1218
    .line 1219
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 1220
    .line 1221
    monitor-enter v4

    .line 1222
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    const-string v7, "WakeGestureListener"

    .line 1231
    .line 1232
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v5

    .line 1239
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    .line 1249
    .line 1250
    const-string v7, "  "

    .line 1251
    .line 1252
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v5

    .line 1259
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    const-string/jumbo v8, "mTriggerRequested="

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 1274
    .line 1275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v7

    .line 1282
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    const-string/jumbo v5, "mSensor="

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 1300
    .line 1301
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v1

    .line 1308
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    monitor-exit v4

    .line 1312
    goto :goto_1c

    .line 1313
    :catchall_0
    move-exception p0

    .line 1314
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    throw p0

    .line 1316
    :cond_40
    :goto_1c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 1317
    .line 1318
    if-eqz v1, :cond_41

    .line 1319
    .line 1320
    const-string v4, "    BurnInProtection"

    .line 1321
    .line 1322
    const-string v5, "      mBurnInProtectionActive="

    .line 1323
    .line 1324
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v4

    .line 1328
    iget-boolean v5, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 1329
    .line 1330
    const-string v7, "      mHorizontalBurnInOffsetsBounds=("

    .line 1331
    .line 1332
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v4

    .line 1336
    iget v5, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    .line 1337
    .line 1338
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    const-string v5, ", "

    .line 1342
    .line 1343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    iget v7, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    .line 1347
    .line 1348
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    const-string v7, ")"

    .line 1352
    .line 1353
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v4

    .line 1360
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    const-string v8, "      mVerticalBurnInOffsetsBounds=("

    .line 1366
    .line 1367
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1368
    .line 1369
    .line 1370
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    .line 1371
    .line 1372
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    .line 1379
    .line 1380
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    const-string v8, "      mBurnInRadiusMaxSquared="

    .line 1396
    .line 1397
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    .line 1401
    .line 1402
    const-string v9, "      mLastBurnInOffset=("

    .line 1403
    .line 1404
    invoke-static {v4, v8, p1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v4

    .line 1408
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 1409
    .line 1410
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 1417
    .line 1418
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v4

    .line 1428
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    const-string v8, "      mOfsetChangeDirections=("

    .line 1434
    .line 1435
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 1439
    .line 1440
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    .line 1446
    iget v1, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 1447
    .line 1448
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    :cond_41
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 1462
    .line 1463
    if-eqz v1, :cond_4a

    .line 1464
    .line 1465
    const-string v4, "    KeyguardServiceDelegate"

    .line 1466
    .line 1467
    const-string v5, "      showing="

    .line 1468
    .line 1469
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v4

    .line 1473
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1474
    .line 1475
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 1476
    .line 1477
    const-string v7, "      inputRestricted="

    .line 1478
    .line 1479
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v4

    .line 1483
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1484
    .line 1485
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 1486
    .line 1487
    const-string v7, "      occluded="

    .line 1488
    .line 1489
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v4

    .line 1493
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1494
    .line 1495
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 1496
    .line 1497
    const-string v7, "      secure="

    .line 1498
    .line 1499
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v4

    .line 1503
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1504
    .line 1505
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 1506
    .line 1507
    const-string v7, "      dreaming="

    .line 1508
    .line 1509
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v4

    .line 1513
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1514
    .line 1515
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 1516
    .line 1517
    const-string v7, "      systemIsReady="

    .line 1518
    .line 1519
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v4

    .line 1523
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1524
    .line 1525
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    .line 1526
    .line 1527
    const-string v7, "      deviceHasKeyguard="

    .line 1528
    .line 1529
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v4

    .line 1533
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1534
    .line 1535
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 1536
    .line 1537
    const-string v7, "      enabled="

    .line 1538
    .line 1539
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v4

    .line 1543
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1544
    .line 1545
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 1546
    .line 1547
    const-string v7, "      offReason="

    .line 1548
    .line 1549
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v4

    .line 1553
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1554
    .line 1555
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 1556
    .line 1557
    invoke-static {v5}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v5

    .line 1561
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v4

    .line 1568
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    const-string v5, "      currentUser="

    .line 1574
    .line 1575
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1579
    .line 1580
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 1581
    .line 1582
    const-string v7, "      bootCompleted="

    .line 1583
    .line 1584
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v4

    .line 1588
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1589
    .line 1590
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 1591
    .line 1592
    const-string v7, "      screenState="

    .line 1593
    .line 1594
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v4

    .line 1598
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1599
    .line 1600
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 1601
    .line 1602
    if-eqz v5, :cond_45

    .line 1603
    .line 1604
    if-eq v5, v3, :cond_44

    .line 1605
    .line 1606
    if-eq v5, v2, :cond_43

    .line 1607
    .line 1608
    if-eq v5, v6, :cond_42

    .line 1609
    .line 1610
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v5

    .line 1614
    goto :goto_1d

    .line 1615
    :cond_42
    const-string v5, "SCREEN_STATE_TURNING_OFF"

    .line 1616
    .line 1617
    goto :goto_1d

    .line 1618
    :cond_43
    const-string v5, "SCREEN_STATE_ON"

    .line 1619
    .line 1620
    goto :goto_1d

    .line 1621
    :cond_44
    const-string v5, "SCREEN_STATE_TURNING_ON"

    .line 1622
    .line 1623
    goto :goto_1d

    .line 1624
    :cond_45
    const-string v5, "SCREEN_STATE_OFF"

    .line 1625
    .line 1626
    :goto_1d
    const-string v7, "      interactiveState="

    .line 1627
    .line 1628
    invoke-static {p1, v5, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v4

    .line 1632
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1633
    .line 1634
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 1635
    .line 1636
    if-eqz v5, :cond_49

    .line 1637
    .line 1638
    if-eq v5, v3, :cond_48

    .line 1639
    .line 1640
    if-eq v5, v2, :cond_47

    .line 1641
    .line 1642
    if-eq v5, v6, :cond_46

    .line 1643
    .line 1644
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    goto :goto_1e

    .line 1649
    :cond_46
    const-string v2, "INTERACTIVE_STATE_GOING_TO_SLEEP"

    .line 1650
    .line 1651
    goto :goto_1e

    .line 1652
    :cond_47
    const-string v2, "INTERACTIVE_STATE_AWAKE"

    .line 1653
    .line 1654
    goto :goto_1e

    .line 1655
    :cond_48
    const-string v2, "INTERACTIVE_STATE_WAKING"

    .line 1656
    .line 1657
    goto :goto_1e

    .line 1658
    :cond_49
    const-string v2, "INTERACTIVE_STATE_SLEEP"

    .line 1659
    .line 1660
    :goto_1e
    invoke-static {v4, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1661
    .line 1662
    .line 1663
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 1664
    .line 1665
    if-eqz v1, :cond_4a

    .line 1666
    .line 1667
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 1668
    .line 1669
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1670
    .line 1671
    .line 1672
    const-string v2, "      KeyguardStateMonitor"

    .line 1673
    .line 1674
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    .line 1676
    .line 1677
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1678
    .line 1679
    const-string v3, "        mIsShowing="

    .line 1680
    .line 1681
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1682
    .line 1683
    .line 1684
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 1685
    .line 1686
    const-string v4, "        mSimSecure="

    .line 1687
    .line 1688
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v2

    .line 1692
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 1693
    .line 1694
    const-string v4, "        mInputRestricted="

    .line 1695
    .line 1696
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 1701
    .line 1702
    const-string v4, "        mTrusted="

    .line 1703
    .line 1704
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v2

    .line 1708
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 1709
    .line 1710
    const-string v4, "        mCurrentUserId="

    .line 1711
    .line 1712
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v2

    .line 1716
    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 1717
    .line 1718
    invoke-static {v2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1719
    .line 1720
    .line 1721
    :cond_4a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    .line 1723
    .line 1724
    const-string v0, "Looper state:"

    .line 1725
    .line 1726
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    .line 1728
    .line 1729
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1730
    .line 1731
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v0

    .line 1735
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 1736
    .line 1737
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1738
    .line 1739
    .line 1740
    const-string v2, "      "

    .line 1741
    .line 1742
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1746
    .line 1747
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->dump(Ljava/io/PrintWriter;)V

    .line 1748
    .line 1749
    .line 1750
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    .line 1
    const-wide v0, 0x10b00000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 11
    .line 12
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 13
    .line 14
    const-wide v3, 0x10e00000002L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 23
    .line 24
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 25
    .line 26
    const-wide v3, 0x10e00000003L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 35
    .line 36
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 37
    .line 38
    const-wide v3, 0x10e00000004L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 47
    .line 48
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 49
    .line 50
    const-wide v5, 0x10800000005L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 59
    .line 60
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 61
    .line 62
    const-wide v5, 0x10800000006L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 71
    .line 72
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 73
    .line 74
    const-wide v5, 0x10800000007L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 80
    .line 81
    .line 82
    const-wide v5, 0x1080000000cL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 92
    .line 93
    .line 94
    const-wide v5, 0x1080000000dL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 100
    .line 101
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 102
    .line 103
    .line 104
    const-wide v5, 0x1080000000eL

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 110
    .line 111
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 115
    .line 116
    if-eqz p0, :cond_0

    .line 117
    .line 118
    const-wide v5, 0x10b00000014L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 128
    .line 129
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 130
    .line 131
    const-wide v7, 0x10800000001L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 140
    .line 141
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 142
    .line 143
    const-wide v7, 0x10800000002L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 152
    .line 153
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 154
    .line 155
    const-wide v7, 0x10800000003L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 164
    .line 165
    iget v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 166
    .line 167
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 171
    .line 172
    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 173
    .line 174
    const-wide v2, 0x10e00000005L

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 183
    .line 184
    .line 185
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final enableKeyguard(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 25
    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    move v3, v0

    .line 35
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->onScreenOn()V

    .line 41
    .line 42
    .line 43
    :cond_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->enableScreenIfNeeded()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public final exitKeyguardSecurely(Lcom/android/server/wm/WindowManagerService$3;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final finishedBootAnimation()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedBootAnim()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishedGoingToSleep(II)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x11170

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "WindowManager"

    .line 16
    .line 17
    const-string v2, "Finished going to sleep... (groupId="

    .line 18
    .line 19
    const-string v3, " why="

    .line 20
    .line 21
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ")"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string/jumbo v0, "screen_timeout"

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 54
    .line 55
    div-int/lit16 v2, v2, 0x3e8

    .line 56
    .line 57
    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 74
    .line 75
    .line 76
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(IZ)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 94
    .line 95
    iput v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    .line 104
    .line 105
    .line 106
    iput v1, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    iput-object p2, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 110
    .line 111
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->clearAppLockedUnLockedApp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception p0

    .line 129
    const-string p1, "PhoneWindowManagerExt"

    .line 130
    .line 131
    const-string p2, " ClearAppLockedUnLockedApp failed , Remote exception "

    .line 132
    .line 133
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_0
    return-void

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p0
.end method

.method public final finishedWakingUp(II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Finished waking up... (groupId="

    .line 6
    .line 7
    const-string v1, " why="

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ")"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "WindowManager"

    .line 34
    .line 35
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 42
    .line 43
    const/4 p2, 0x2

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const-string v0, "KeyguardServiceDelegate"

    .line 51
    .line 52
    const-string/jumbo v1, "onFinishedWakingUp()"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 64
    .line 65
    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 66
    .line 67
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 68
    .line 69
    if-eqz p0, :cond_6

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 74
    .line 75
    if-nez p0, :cond_4

    .line 76
    .line 77
    const/4 p0, -0x1

    .line 78
    iput p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    iput p2, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 p0, 0x1

    .line 94
    iput p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 95
    .line 96
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    iput-object p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method public final getAccessibilityShortcutTimeout()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 14
    .line 15
    const-string v3, "accessibility_shortcut_dialog_shown"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string/jumbo v2, "skip_accessibility_shortcut_dialog_timeout_restriction"

    .line 28
    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 31
    .line 32
    invoke-static {v1, v2, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0
.end method

.method public final getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "hdmi_control"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 33
    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 35
    .line 36
    return-object p0
.end method

.method public final getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getMaxMultiPressPowerCount()I
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

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
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 21
    .line 22
    const/16 v2, 0x67

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x5

    .line 27
    return p0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 29
    .line 30
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 31
    .line 32
    const/16 v3, 0x6a

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x4

    .line 39
    return p0

    .line 40
    :cond_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 52
    .line 53
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 54
    .line 55
    const/16 v2, 0x66

    .line 56
    .line 57
    if-ne v0, v2, :cond_3

    .line 58
    .line 59
    const/4 p0, 0x3

    .line 60
    return p0

    .line 61
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 62
    .line 63
    if-eqz v0, :cond_8

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 77
    .line 78
    const/16 v4, 0x68

    .line 79
    .line 80
    if-eq v0, v4, :cond_7

    .line 81
    .line 82
    :cond_4
    iget v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 83
    .line 84
    if-ne v0, v3, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    const/16 v0, 0x1a

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 101
    .line 102
    if-eqz p0, :cond_8

    .line 103
    .line 104
    iget p0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 105
    .line 106
    const/16 v0, 0x69

    .line 107
    .line 108
    if-ne p0, v0, :cond_8

    .line 109
    .line 110
    :cond_7
    :goto_0
    const/4 p0, 0x2

    .line 111
    return p0

    .line 112
    :cond_8
    return v1
.end method

.method public final getResolvedLongPressOnPowerBehavior()I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v2, "com.sec.facuifunction.app.ui.UIHardKey"

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x3

    .line 43
    if-nez v0, :cond_9

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 55
    .line 56
    const/4 v3, 0x5

    .line 57
    const/4 v4, 0x1

    .line 58
    if-ne v0, v3, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v3, "device_provisioned"

    .line 67
    .line 68
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    return v4

    .line 76
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 77
    .line 78
    const/4 v3, 0x4

    .line 79
    if-ne v0, v3, :cond_8

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v3, -0x2

    .line 88
    const-string v5, "clockwork_long_press_to_assistant_enabled"

    .line 89
    .line 90
    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v3, "WindowManager"

    .line 95
    .line 96
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    const-string v2, "longPressToAssistant = "

    .line 103
    .line 104
    invoke-static {v0, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    if-ne v0, v4, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    return v1

    .line 111
    :cond_8
    :goto_2
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 112
    .line 113
    return p0

    .line 114
    :cond_9
    :goto_3
    return v2
.end method

.method public final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "statusbar"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 9
    .line 10
    :cond_0
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    return p1
.end method

.method public final getTelecommService()Landroid/telecom/TelecomManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "telecom"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 11
    .line 12
    return-object p0
.end method

.method public final goHome()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "WindowManager"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v0, "Not going home because user setup is in progress."

    .line 13
    .line 14
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :try_start_0
    const-string/jumbo v4, "persist.sys.uts-test-mode"

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ne v4, v1, :cond_1

    .line 27
    .line 28
    const-string v4, "UTS-TEST-MODE"

    .line 29
    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v2, v4}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v9, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const/4 v14, 0x1

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/16 v17, -0x2

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v13, 0x0

    .line 89
    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, v1, :cond_2

    .line 94
    .line 95
    return v3

    .line 96
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const/4 v13, 0x1

    .line 125
    const/4 v14, 0x0

    .line 126
    const/4 v15, 0x0

    .line 127
    const/16 v16, -0x2

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 134
    .line 135
    .line 136
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-ne v0, v1, :cond_3

    .line 138
    .line 139
    return v3

    .line 140
    :catch_0
    :cond_3
    return v1
.end method

.method public final handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    move v2, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v2, v3

    .line 54
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 59
    .line 60
    const-string v7, "WindowManager"

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 71
    .line 72
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    filled-new-array {v6, v8}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v8, "handleHomeButton in display#%d mHomePressed = %b"

    .line 81
    .line 82
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    const/4 v6, 0x3

    .line 90
    if-nez v2, :cond_b

    .line 91
    .line 92
    iget p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 97
    .line 98
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_3

    .line 109
    .line 110
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 115
    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_3
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 122
    .line 123
    if-eqz p0, :cond_4

    .line 124
    .line 125
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_4

    .line 134
    .line 135
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 138
    .line 139
    invoke-virtual {p0, v3, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 140
    .line 141
    .line 142
    :cond_4
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 143
    .line 144
    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 145
    .line 146
    if-eqz p0, :cond_6

    .line 147
    .line 148
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 149
    .line 150
    :cond_5
    :goto_1
    move v3, v4

    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :cond_6
    if-eqz v5, :cond_7

    .line 154
    .line 155
    const-string p0, "Ignoring HOME; event canceled."

    .line 156
    .line 157
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_7
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 162
    .line 163
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 164
    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    const/4 v1, 0x2

    .line 168
    if-ne p1, v1, :cond_8

    .line 169
    .line 170
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 171
    .line 172
    if-eqz p0, :cond_9

    .line 173
    .line 174
    :cond_8
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 177
    .line 178
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    .line 182
    .line 183
    iput-object p2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 184
    .line 185
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 188
    .line 189
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 190
    .line 191
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    int-to-long v0, p2

    .line 196
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_9
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 205
    .line 206
    invoke-virtual {p0, v6, v6}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_a

    .line 211
    .line 212
    const-string/jumbo p0, "skip single press home, requestedSystemKey"

    .line 213
    .line 214
    .line 215
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto/16 :goto_5

    .line 219
    .line 220
    :cond_a
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 223
    .line 224
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 235
    .line 236
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 237
    .line 238
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_e

    .line 243
    .line 244
    iget v2, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 245
    .line 246
    const/16 v5, 0x7d9

    .line 247
    .line 248
    if-eq v2, v5, :cond_17

    .line 249
    .line 250
    const/16 v5, 0x7f8

    .line 251
    .line 252
    if-ne v2, v5, :cond_c

    .line 253
    .line 254
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_c

    .line 261
    .line 262
    goto/16 :goto_5

    .line 263
    .line 264
    :cond_c
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 265
    .line 266
    array-length v5, v2

    .line 267
    move v8, v3

    .line 268
    :goto_2
    if-ge v8, v5, :cond_e

    .line 269
    .line 270
    aget v9, v2, v8

    .line 271
    .line 272
    iget v10, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 273
    .line 274
    if-ne v10, v9, :cond_d

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_e
    if-nez v1, :cond_11

    .line 281
    .line 282
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 283
    .line 284
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 285
    .line 286
    if-eqz p0, :cond_f

    .line 287
    .line 288
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-eqz p0, :cond_f

    .line 297
    .line 298
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 301
    .line 302
    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 303
    .line 304
    .line 305
    :cond_f
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 306
    .line 307
    if-eqz p0, :cond_10

    .line 308
    .line 309
    const/4 p0, 0x0

    .line 310
    iput-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 311
    .line 312
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 315
    .line 316
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    .line 320
    .line 321
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 324
    .line 325
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 326
    .line 327
    const/4 v1, 0x2

    .line 328
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :cond_10
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 337
    .line 338
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 339
    .line 340
    if-ne p1, v4, :cond_16

    .line 341
    .line 342
    iget p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 343
    .line 344
    if-nez p1, :cond_16

    .line 345
    .line 346
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    if-eqz p0, :cond_16

    .line 353
    .line 354
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 355
    .line 356
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 357
    .line 358
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 359
    .line 360
    if-eqz p0, :cond_16

    .line 361
    .line 362
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    and-int/lit16 p1, p1, 0x80

    .line 371
    .line 372
    if-eqz p1, :cond_16

    .line 373
    .line 374
    if-nez p0, :cond_13

    .line 375
    .line 376
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 377
    .line 378
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 379
    .line 380
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 381
    .line 382
    const/4 p1, 0x4

    .line 383
    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    if-eqz p0, :cond_12

    .line 388
    .line 389
    const-string/jumbo p0, "skip long press home, requestedSystemKey"

    .line 390
    .line 391
    .line 392
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_12
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 397
    .line 398
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 399
    .line 400
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 401
    .line 402
    const/4 v1, 0x3

    .line 403
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string p1, "keyguardOn, isShowing="

    .line 413
    .line 414
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 418
    .line 419
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string p1, " isInputRestricted="

    .line 427
    .line 428
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 432
    .line 433
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 434
    .line 435
    if-nez p1, :cond_14

    .line 436
    .line 437
    move p1, v3

    .line 438
    goto :goto_3

    .line 439
    :cond_14
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 440
    .line 441
    if-eqz p2, :cond_15

    .line 442
    .line 443
    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 444
    .line 445
    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 446
    .line 447
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 448
    .line 449
    iput-boolean p2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 450
    .line 451
    :cond_15
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 452
    .line 453
    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 454
    .line 455
    :goto_3
    invoke-static {v7, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 456
    .line 457
    .line 458
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 459
    .line 460
    if-eqz p0, :cond_16

    .line 461
    .line 462
    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 463
    .line 464
    if-nez p0, :cond_16

    .line 465
    .line 466
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 467
    .line 468
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 469
    .line 470
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showingSearcleToastIfNeeded()V

    .line 471
    .line 472
    .line 473
    :catch_1
    :cond_16
    :goto_4
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 474
    .line 475
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 476
    .line 477
    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 478
    .line 479
    .line 480
    move-result p0

    .line 481
    if-eqz p0, :cond_5

    .line 482
    .line 483
    const-string p0, "can dispatching home key event, requestedSystemKey"

    .line 484
    .line 485
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    :cond_17
    :goto_5
    return v3
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;ZZI)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 8
    .line 9
    const/4 v10, 0x3

    .line 10
    const/4 v11, 0x0

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x450

    .line 18
    .line 19
    if-ne v3, v4, :cond_1

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVendorId()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v6, 0x4e8

    .line 37
    .line 38
    if-ne v3, v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/view/InputDevice;->getProductId()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const v5, 0xa035

    .line 45
    .line 46
    .line 47
    if-ne v3, v5, :cond_1

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 52
    .line 53
    invoke-virtual {v3, v4, v10}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 62
    .line 63
    .line 64
    const-string v0, "WindowManager"

    .line 65
    .line 66
    const-string/jumbo v1, "skip AI_HOT_KEY gesture, requestedSystemKey"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return v11

    .line 73
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    const-string v0, "WindowManager"

    .line 80
    .line 81
    const-string v1, "dispatch AI_HOT_KEY"

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return v11

    .line 87
    :cond_1
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const/4 v12, 0x1

    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    move v5, v12

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move v5, v11

    .line 103
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, -0x1

    .line 112
    if-eq v3, v4, :cond_3

    .line 113
    .line 114
    const-string v0, "WindowManager"

    .line 115
    .line 116
    const-string v1, "handleKeyGesture, blockKeyPolicy"

    .line 117
    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :cond_3
    sget-object v3, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v3, Landroid/util/ArraySet;

    .line 133
    .line 134
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 141
    .line 142
    iget-object v5, v3, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v5

    .line 145
    :try_start_0
    invoke-virtual {v3, v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-eqz v3, :cond_4

    .line 151
    .line 152
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 155
    .line 156
    .line 157
    const-string v3, "WindowManager"

    .line 158
    .line 159
    const-string v5, "handleKeyGesture, interceptKey"

    .line 160
    .line 161
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move v3, v12

    .line 165
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    throw v0

    .line 169
    :cond_4
    move v3, v11

    .line 170
    :goto_1
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-nez v7, :cond_5

    .line 184
    .line 185
    move v7, v12

    .line 186
    goto :goto_2

    .line 187
    :cond_5
    move v7, v11

    .line 188
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    iget-object v9, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 193
    .line 194
    if-eqz v7, :cond_6

    .line 195
    .line 196
    iput-boolean v11, v9, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 197
    .line 198
    :cond_6
    invoke-virtual {v5, v6, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    const-string v14, "PhoneWindowManagerExt"

    .line 203
    .line 204
    const/4 v15, 0x2

    .line 205
    if-eqz v13, :cond_7

    .line 206
    .line 207
    const-string v3, "interceptKeyTq : Key was blocked by interaction control"

    .line 208
    .line 209
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :goto_3
    move v3, v15

    .line 213
    goto :goto_4

    .line 214
    :cond_7
    if-eqz v3, :cond_9

    .line 215
    .line 216
    :cond_8
    move v3, v12

    .line 217
    goto :goto_4

    .line 218
    :cond_9
    iget-object v3, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 219
    .line 220
    invoke-virtual {v3, v6, v11, v11}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_b

    .line 225
    .line 226
    const/16 v3, 0x1a

    .line 227
    .line 228
    if-ne v6, v3, :cond_8

    .line 229
    .line 230
    if-eqz v7, :cond_a

    .line 231
    .line 232
    iput-boolean v12, v9, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 233
    .line 234
    :cond_a
    move v3, v4

    .line 235
    goto :goto_4

    .line 236
    :cond_b
    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-nez v3, :cond_c

    .line 241
    .line 242
    const/16 v3, 0x83

    .line 243
    .line 244
    if-lt v6, v3, :cond_c

    .line 245
    .line 246
    const/16 v3, 0x8e

    .line 247
    .line 248
    if-gt v6, v3, :cond_c

    .line 249
    .line 250
    const-string v3, "Ignoring function key - device is not setup. ("

    .line 251
    .line 252
    const-string v5, ")"

    .line 253
    .line 254
    invoke-static {v6, v3, v5, v14}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_c
    const/16 v3, 0x19

    .line 259
    .line 260
    if-eq v6, v3, :cond_d

    .line 261
    .line 262
    const/16 v3, 0x18

    .line 263
    .line 264
    if-ne v6, v3, :cond_a

    .line 265
    .line 266
    :cond_d
    if-nez v8, :cond_e

    .line 267
    .line 268
    if-nez v7, :cond_a

    .line 269
    .line 270
    :cond_e
    iget-object v3, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 271
    .line 272
    if-eqz v3, :cond_a

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_a

    .line 279
    .line 280
    iget-object v3, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_a

    .line 287
    .line 288
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :goto_4
    if-eq v3, v4, :cond_f

    .line 292
    .line 293
    const-string v0, "WindowManager"

    .line 294
    .line 295
    const-string v1, "handleKeyGesture, beforeInterceptKey policy="

    .line 296
    .line 297
    invoke-static {v3, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return v3

    .line 301
    :cond_f
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 302
    .line 303
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    const-string v14, "SingleKeyGesture"

    .line 311
    .line 312
    const/high16 v16, 0x1000000

    .line 313
    .line 314
    if-nez v0, :cond_26

    .line 315
    .line 316
    iget v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 317
    .line 318
    if-eqz v0, :cond_10

    .line 319
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eq v0, v3, :cond_11

    .line 325
    .line 326
    :cond_10
    xor-int/lit8 v0, v2, 0x1

    .line 327
    .line 328
    iput-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 329
    .line 330
    move/from16 v0, p3

    .line 331
    .line 332
    iput-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 333
    .line 334
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v2, "interceptKeyDown, info : "

    .line 341
    .line 342
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_12

    .line 362
    .line 363
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 364
    .line 365
    iget v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    .line 366
    .line 367
    if-ne v10, v2, :cond_12

    .line 368
    .line 369
    const-string v2, "init HandleLongPressInfo"

    .line 370
    .line 371
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    .line 375
    .line 376
    .line 377
    :cond_12
    iget v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 378
    .line 379
    if-ne v0, v10, :cond_14

    .line 380
    .line 381
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 382
    .line 383
    if-eqz v0, :cond_25

    .line 384
    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    and-int/lit16 v0, v0, 0x80

    .line 390
    .line 391
    if-eqz v0, :cond_25

    .line 392
    .line 393
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_25

    .line 400
    .line 401
    iget-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 402
    .line 403
    if-nez v0, :cond_25

    .line 404
    .line 405
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 406
    .line 407
    if-eqz v0, :cond_13

    .line 408
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v2, "Long press key "

    .line 412
    .line 413
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v10}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :cond_13
    iput-boolean v12, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 431
    .line 432
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 433
    .line 434
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    .line 436
    .line 437
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 438
    .line 439
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    .line 441
    .line 442
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 443
    .line 444
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 445
    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    new-instance v5, Landroid/view/KeyEvent;

    .line 451
    .line 452
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 453
    .line 454
    .line 455
    const/4 v3, 0x1

    .line 456
    const/4 v7, 0x1

    .line 457
    move-object v0, v8

    .line 458
    move-object v1, v2

    .line 459
    move v2, v10

    .line 460
    move/from16 v6, p4

    .line 461
    .line 462
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 463
    .line 464
    .line 465
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 466
    .line 467
    invoke-virtual {v0, v11, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 472
    .line 473
    .line 474
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 475
    .line 476
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    .line 478
    .line 479
    goto/16 :goto_9

    .line 480
    .line 481
    :cond_14
    if-nez v0, :cond_15

    .line 482
    .line 483
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 484
    .line 485
    if-eqz v0, :cond_17

    .line 486
    .line 487
    iget v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 488
    .line 489
    if-ne v10, v0, :cond_15

    .line 490
    .line 491
    goto :goto_5

    .line 492
    :cond_15
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 493
    .line 494
    if-eqz v0, :cond_16

    .line 495
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v2, "Press another key "

    .line 499
    .line 500
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-static {v10}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    :cond_16
    invoke-virtual {v13}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 518
    .line 519
    .line 520
    :cond_17
    :goto_5
    iput v10, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 521
    .line 522
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 523
    .line 524
    const-wide/16 v2, 0x0

    .line 525
    .line 526
    if-nez v0, :cond_1a

    .line 527
    .line 528
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 529
    .line 530
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 535
    .line 536
    if-eqz v0, :cond_19

    .line 537
    .line 538
    iget v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 539
    .line 540
    if-ne v10, v4, :cond_19

    .line 541
    .line 542
    sget-boolean v4, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 543
    .line 544
    if-eqz v4, :cond_18

    .line 545
    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    const-string v5, "Intercept key by rule "

    .line 549
    .line 550
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    :cond_18
    iput-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 564
    .line 565
    :cond_19
    iput-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 566
    .line 567
    :cond_1a
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 568
    .line 569
    if-nez v0, :cond_1b

    .line 570
    .line 571
    goto/16 :goto_9

    .line 572
    .line 573
    :cond_1b
    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyDown(Landroid/view/KeyEvent;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 577
    .line 578
    .line 579
    move-result-wide v4

    .line 580
    iget-wide v6, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 581
    .line 582
    sub-long/2addr v4, v6

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 584
    .line 585
    .line 586
    move-result-wide v6

    .line 587
    iput-wide v6, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 588
    .line 589
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 590
    .line 591
    iget-wide v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 592
    .line 593
    cmp-long v8, v6, v2

    .line 594
    .line 595
    if-eqz v8, :cond_1c

    .line 596
    .line 597
    goto :goto_6

    .line 598
    :cond_1c
    sget-wide v6, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 599
    .line 600
    :goto_6
    cmp-long v4, v4, v6

    .line 601
    .line 602
    if-ltz v4, :cond_1d

    .line 603
    .line 604
    iput v12, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 605
    .line 606
    goto :goto_7

    .line 607
    :cond_1d
    iget v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 608
    .line 609
    add-int/2addr v4, v12

    .line 610
    iput v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 611
    .line 612
    :goto_7
    iput-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 613
    .line 614
    iget v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 615
    .line 616
    if-ne v4, v12, :cond_1e

    .line 617
    .line 618
    iput-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 619
    .line 620
    :cond_1e
    if-ne v4, v12, :cond_20

    .line 621
    .line 622
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_1f

    .line 627
    .line 628
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 629
    .line 630
    iget-object v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 631
    .line 632
    iget v5, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 633
    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    new-instance v7, Landroid/view/KeyEvent;

    .line 639
    .line 640
    invoke-direct {v7, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 641
    .line 642
    .line 643
    const/4 v9, 0x2

    .line 644
    move-object v2, v0

    .line 645
    move v4, v10

    .line 646
    move/from16 v8, p4

    .line 647
    .line 648
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 649
    .line 650
    .line 651
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 652
    .line 653
    invoke-virtual {v2, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 658
    .line 659
    .line 660
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 661
    .line 662
    iget-object v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 663
    .line 664
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 665
    .line 666
    .line 667
    move-result-wide v3

    .line 668
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 669
    .line 670
    .line 671
    :cond_1f
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 672
    .line 673
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-eqz v0, :cond_25

    .line 678
    .line 679
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 680
    .line 681
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 682
    .line 683
    iget v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 684
    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    new-instance v5, Landroid/view/KeyEvent;

    .line 690
    .line 691
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 692
    .line 693
    .line 694
    const/4 v7, 0x0

    .line 695
    move-object v0, v8

    .line 696
    move-object v1, v2

    .line 697
    move v2, v10

    .line 698
    move/from16 v6, p4

    .line 699
    .line 700
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 701
    .line 702
    .line 703
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 704
    .line 705
    invoke-virtual {v0, v12, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 710
    .line 711
    .line 712
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 713
    .line 714
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 715
    .line 716
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    sget-wide v2, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 720
    .line 721
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 722
    .line 723
    .line 724
    goto/16 :goto_9

    .line 725
    .line 726
    :cond_20
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 727
    .line 728
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    .line 730
    .line 731
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 732
    .line 733
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    .line 735
    .line 736
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 737
    .line 738
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    .line 740
    .line 741
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    .line 742
    .line 743
    if-eqz v0, :cond_22

    .line 744
    .line 745
    and-int v0, p4, v16

    .line 746
    .line 747
    if-eqz v0, :cond_21

    .line 748
    .line 749
    move v0, v12

    .line 750
    goto :goto_8

    .line 751
    :cond_21
    move v0, v11

    .line 752
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 753
    .line 754
    .line 755
    move-result-wide v4

    .line 756
    if-nez v0, :cond_22

    .line 757
    .line 758
    iget-wide v6, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 759
    .line 760
    cmp-long v0, v6, v2

    .line 761
    .line 762
    if-eqz v0, :cond_22

    .line 763
    .line 764
    iget-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 765
    .line 766
    const-wide/16 v6, 0x32

    .line 767
    .line 768
    add-long/2addr v2, v6

    .line 769
    cmp-long v0, v4, v2

    .line 770
    .line 771
    if-gez v0, :cond_22

    .line 772
    .line 773
    iget v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 774
    .line 775
    sub-int/2addr v0, v12

    .line 776
    iput v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 777
    .line 778
    const-string v0, "interceptKeyDown keyCode="

    .line 779
    .line 780
    const-string v2, ", mKeyReleaseTime("

    .line 781
    .line 782
    invoke-static {v10, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    iget-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 787
    .line 788
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    const-string v2, ") -  eventTime("

    .line 792
    .line 793
    const-string v3, ")="

    .line 794
    .line 795
    invoke-static {v0, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 796
    .line 797
    .line 798
    iget-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 799
    .line 800
    sub-long/2addr v4, v2

    .line 801
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .line 810
    .line 811
    :cond_22
    iget v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 812
    .line 813
    if-le v0, v12, :cond_23

    .line 814
    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 816
    .line 817
    .line 818
    move-result-wide v2

    .line 819
    iput-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 820
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    .line 822
    .line 823
    const-string v2, "Trigger multi press, mTriggeredMultiPressTime="

    .line 824
    .line 825
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    iget-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 829
    .line 830
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .line 839
    .line 840
    :cond_23
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 841
    .line 842
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    if-le v0, v12, :cond_25

    .line 847
    .line 848
    iget v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 849
    .line 850
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 851
    .line 852
    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    if-ne v0, v2, :cond_25

    .line 857
    .line 858
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 859
    .line 860
    if-eqz v0, :cond_24

    .line 861
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    const-string v2, "Trigger multi press "

    .line 865
    .line 866
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 870
    .line 871
    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v2, " for it reached the max count "

    .line 879
    .line 880
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    iget v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 884
    .line 885
    invoke-static {v0, v2, v14}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 886
    .line 887
    .line 888
    :cond_24
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 889
    .line 890
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 891
    .line 892
    iget v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 893
    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    new-instance v5, Landroid/view/KeyEvent;

    .line 899
    .line 900
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 901
    .line 902
    .line 903
    const/4 v7, 0x0

    .line 904
    move-object v0, v8

    .line 905
    move-object v1, v2

    .line 906
    move v2, v10

    .line 907
    move/from16 v6, p4

    .line 908
    .line 909
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 910
    .line 911
    .line 912
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 913
    .line 914
    invoke-virtual {v0, v15, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 919
    .line 920
    .line 921
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 922
    .line 923
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 924
    .line 925
    .line 926
    :cond_25
    :goto_9
    move v0, v11

    .line 927
    goto/16 :goto_f

    .line 928
    .line 929
    :cond_26
    iput v11, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 930
    .line 931
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 932
    .line 933
    if-nez v0, :cond_27

    .line 934
    .line 935
    goto/16 :goto_e

    .line 936
    .line 937
    :cond_27
    iget-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 938
    .line 939
    if-nez v0, :cond_2a

    .line 940
    .line 941
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 942
    .line 943
    .line 944
    move-result-wide v2

    .line 945
    iget-wide v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 946
    .line 947
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 948
    .line 949
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 950
    .line 951
    .line 952
    move-result-wide v6

    .line 953
    add-long/2addr v6, v4

    .line 954
    cmp-long v0, v2, v6

    .line 955
    .line 956
    if-gez v0, :cond_28

    .line 957
    .line 958
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 959
    .line 960
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    .line 962
    .line 963
    goto :goto_a

    .line 964
    :cond_28
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 965
    .line 966
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    iput-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 971
    .line 972
    :goto_a
    iget-wide v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 973
    .line 974
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 975
    .line 976
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    .line 978
    .line 979
    sget-wide v6, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 980
    .line 981
    add-long/2addr v4, v6

    .line 982
    cmp-long v0, v2, v4

    .line 983
    .line 984
    if-gez v0, :cond_29

    .line 985
    .line 986
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 987
    .line 988
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 989
    .line 990
    .line 991
    goto :goto_b

    .line 992
    :cond_29
    iget-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 993
    .line 994
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 995
    .line 996
    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 997
    .line 998
    .line 999
    move-result v2

    .line 1000
    iget-boolean v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 1001
    .line 1002
    or-int/2addr v2, v3

    .line 1003
    or-int/2addr v0, v2

    .line 1004
    iput-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 1005
    .line 1006
    :cond_2a
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1007
    .line 1008
    .line 1009
    move-result v0

    .line 1010
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1011
    .line 1012
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1013
    .line 1014
    if-ne v0, v3, :cond_2b

    .line 1015
    .line 1016
    invoke-virtual {v2, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(Landroid/view/KeyEvent;)V

    .line 1017
    .line 1018
    .line 1019
    :cond_2b
    iget-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 1020
    .line 1021
    const/4 v9, 0x0

    .line 1022
    if-nez v0, :cond_33

    .line 1023
    .line 1024
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    if-eqz v0, :cond_2c

    .line 1029
    .line 1030
    move v0, v11

    .line 1031
    move-object v11, v9

    .line 1032
    goto/16 :goto_d

    .line 1033
    .line 1034
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1035
    .line 1036
    .line 1037
    move-result v0

    .line 1038
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1039
    .line 1040
    iget v2, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1041
    .line 1042
    if-ne v0, v2, :cond_32

    .line 1043
    .line 1044
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1045
    .line 1046
    iget-object v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1047
    .line 1048
    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1049
    .line 1050
    iget v5, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1051
    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1053
    .line 1054
    .line 1055
    move-result v6

    .line 1056
    new-instance v7, Landroid/view/KeyEvent;

    .line 1057
    .line 1058
    invoke-direct {v7, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1059
    .line 1060
    .line 1061
    const/16 v17, 0x0

    .line 1062
    .line 1063
    move-object v2, v0

    .line 1064
    move/from16 v8, p4

    .line 1065
    .line 1066
    move-object v11, v9

    .line 1067
    move/from16 v9, v17

    .line 1068
    .line 1069
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1073
    .line 1074
    invoke-virtual {v2, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1079
    .line 1080
    .line 1081
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1082
    .line 1083
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1084
    .line 1085
    .line 1086
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1087
    .line 1088
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    if-ne v0, v12, :cond_2e

    .line 1093
    .line 1094
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 1095
    .line 1096
    if-eqz v0, :cond_2d

    .line 1097
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    const-string/jumbo v2, "press key "

    .line 1101
    .line 1102
    .line 1103
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1107
    .line 1108
    .line 1109
    move-result v2

    .line 1110
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .line 1123
    .line 1124
    :cond_2d
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1125
    .line 1126
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1127
    .line 1128
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1129
    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1131
    .line 1132
    .line 1133
    move-result v4

    .line 1134
    new-instance v5, Landroid/view/KeyEvent;

    .line 1135
    .line 1136
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1137
    .line 1138
    .line 1139
    const/4 v6, 0x1

    .line 1140
    const/4 v7, 0x0

    .line 1141
    move-object v0, v8

    .line 1142
    move-object v1, v2

    .line 1143
    move v2, v3

    .line 1144
    move v3, v6

    .line 1145
    move/from16 v6, p4

    .line 1146
    .line 1147
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1148
    .line 1149
    .line 1150
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1151
    .line 1152
    invoke-virtual {v0, v15, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1157
    .line 1158
    .line 1159
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1160
    .line 1161
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1162
    .line 1163
    .line 1164
    iput-object v11, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1165
    .line 1166
    goto/16 :goto_e

    .line 1167
    .line 1168
    :cond_2e
    and-int v0, p4, v16

    .line 1169
    .line 1170
    if-eqz v0, :cond_2f

    .line 1171
    .line 1172
    move v0, v12

    .line 1173
    goto :goto_c

    .line 1174
    :cond_2f
    const/4 v0, 0x0

    .line 1175
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1176
    .line 1177
    .line 1178
    move-result-wide v2

    .line 1179
    iget-wide v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 1180
    .line 1181
    sub-long/2addr v2, v4

    .line 1182
    if-nez v0, :cond_30

    .line 1183
    .line 1184
    const-wide/16 v4, 0x12c

    .line 1185
    .line 1186
    cmp-long v4, v2, v4

    .line 1187
    .line 1188
    if-lez v4, :cond_30

    .line 1189
    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    const-string/jumbo v4, "multi-press key "

    .line 1193
    .line 1194
    .line 1195
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1199
    .line 1200
    .line 1201
    move-result v4

    .line 1202
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    const-string v4, " count="

    .line 1206
    .line 1207
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    iget v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1211
    .line 1212
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    const-string v4, " longInterval="

    .line 1216
    .line 1217
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .line 1229
    .line 1230
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1231
    .line 1232
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1233
    .line 1234
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1235
    .line 1236
    iget v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1237
    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1239
    .line 1240
    .line 1241
    move-result v5

    .line 1242
    new-instance v6, Landroid/view/KeyEvent;

    .line 1243
    .line 1244
    invoke-direct {v6, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1245
    .line 1246
    .line 1247
    const/4 v7, 0x0

    .line 1248
    move-object v0, v8

    .line 1249
    move-object v1, v2

    .line 1250
    move v2, v3

    .line 1251
    move v3, v4

    .line 1252
    move v4, v5

    .line 1253
    move-object v5, v6

    .line 1254
    move/from16 v6, p4

    .line 1255
    .line 1256
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1257
    .line 1258
    .line 1259
    iget-object v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1260
    .line 1261
    invoke-virtual {v0, v15, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1269
    .line 1270
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1271
    .line 1272
    .line 1273
    iput-object v11, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1274
    .line 1275
    goto/16 :goto_e

    .line 1276
    .line 1277
    :cond_30
    iget v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1278
    .line 1279
    iget-object v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1280
    .line 1281
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 1282
    .line 1283
    .line 1284
    move-result v3

    .line 1285
    if-ge v2, v3, :cond_31

    .line 1286
    .line 1287
    new-instance v10, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1288
    .line 1289
    iget-object v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1290
    .line 1291
    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1292
    .line 1293
    iget v5, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1294
    .line 1295
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1296
    .line 1297
    .line 1298
    move-result v6

    .line 1299
    new-instance v7, Landroid/view/KeyEvent;

    .line 1300
    .line 1301
    invoke-direct {v7, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1302
    .line 1303
    .line 1304
    const/4 v9, 0x0

    .line 1305
    move-object v2, v10

    .line 1306
    move/from16 v8, p4

    .line 1307
    .line 1308
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1312
    .line 1313
    invoke-virtual {v2, v15, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    invoke-virtual {v2, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1318
    .line 1319
    .line 1320
    iget-object v3, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1321
    .line 1322
    sget-wide v4, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    .line 1323
    .line 1324
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1325
    .line 1326
    .line 1327
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1328
    .line 1329
    .line 1330
    move-result-wide v2

    .line 1331
    iput-wide v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 1332
    .line 1333
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    .line 1334
    .line 1335
    if-eqz v2, :cond_34

    .line 1336
    .line 1337
    if-nez v0, :cond_34

    .line 1338
    .line 1339
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1340
    .line 1341
    .line 1342
    move-result-wide v0

    .line 1343
    iput-wide v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 1344
    .line 1345
    goto :goto_e

    .line 1346
    :cond_32
    invoke-virtual {v13}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_e

    .line 1350
    :cond_33
    move-object v11, v9

    .line 1351
    const/4 v0, 0x0

    .line 1352
    :goto_d
    iput-boolean v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 1353
    .line 1354
    iput v0, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1355
    .line 1356
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1357
    .line 1358
    iget-object v2, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1359
    .line 1360
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1361
    .line 1362
    iget v4, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1363
    .line 1364
    const/4 v6, 0x0

    .line 1365
    const/4 v7, 0x0

    .line 1366
    const/4 v5, 0x0

    .line 1367
    const/4 v8, 0x0

    .line 1368
    move-object v1, v0

    .line 1369
    invoke-direct/range {v1 .. v8}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1370
    .line 1371
    .line 1372
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1373
    .line 1374
    const/4 v2, 0x6

    .line 1375
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    invoke-virtual {v0, v12}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1380
    .line 1381
    .line 1382
    iget-object v1, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1383
    .line 1384
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1385
    .line 1386
    .line 1387
    iput-object v11, v13, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1388
    .line 1389
    :cond_34
    :goto_e
    const/4 v0, 0x0

    .line 1390
    :goto_f
    return v0
.end method

.method public final handleShortPressOnHome(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->HOME:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    const-string/jumbo v0, "short press on home"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final hideRecentApps(ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_0
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    .line 200
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    .line 2
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 4
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 5
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 6
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 8
    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 9
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 10
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 11
    const-class v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 12
    const-class v3, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/dreams/DreamManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 13
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 14
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 15
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorPrivacyManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 16
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 17
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 18
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 21
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.leanback"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 22
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 23
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 24
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 25
    new-instance v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 26
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 27
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    .line 28
    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    .line 29
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 31
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 32
    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 33
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 34
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    const-string v5, "ScreenOff"

    invoke-direct {v4, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 36
    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 37
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111028f

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    const v4, 0x111028d

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    const v4, 0x111028e

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 41
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 42
    const-string/jumbo v4, "persist.debug.force_burn_in"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, -0x1

    if-nez v3, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v4, :cond_2

    .line 43
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/4 v4, -0x8

    const/16 v7, 0x8

    const/4 v8, -0x4

    move/from16 v16, v3

    move v12, v4

    move v14, v12

    move v13, v7

    move v15, v8

    goto :goto_1

    .line 44
    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0053

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v7, 0x10e0050

    .line 46
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v8, 0x10e0054

    .line 47
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x10e0052

    .line 48
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const v10, 0x10e0051

    .line 49
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move/from16 v16, v3

    move v12, v4

    move v13, v7

    move v14, v8

    move v15, v9

    .line 50
    :goto_1
    new-instance v3, Lcom/android/server/policy/BurnInProtectionHelper;

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 51
    :cond_3
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 53
    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 54
    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v7, v3}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 55
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 56
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 57
    const-string v7, "end_button_behavior"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    const-string v7, "incall_power_button_behavior"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    const-string v7, "incall_back_button_behavior"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 60
    const-string/jumbo v7, "wake_gesture_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 61
    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    const-string v7, "default_input_method"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    const-string/jumbo v7, "volume_hush_gesture"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    const-string/jumbo v7, "system_navigation_keys_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    const-string/jumbo v7, "power_button_short_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    const-string/jumbo v7, "power_button_double_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    const-string/jumbo v7, "power_button_triple_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 68
    const-string/jumbo v7, "power_button_long_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    const-string/jumbo v7, "power_button_long_press_duration_ms"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 70
    const-string/jumbo v7, "power_button_very_long_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    const-string/jumbo v7, "stem_primary_button_short_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    const-string/jumbo v7, "stem_primary_button_double_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    const-string/jumbo v7, "stem_primary_button_triple_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    const-string/jumbo v7, "stem_primary_button_long_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    const-string v7, "key_chord_power_volume_up"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    const-string/jumbo v7, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    const-string/jumbo v7, "stylus_buttons_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    const-string/jumbo v7, "nav_bar_kids_mode"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    .line 80
    new-instance v4, Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {v4, v6, v7, v8}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 81
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0081

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 82
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 83
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x111016a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 86
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 87
    const-string v8, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 90
    const-string v8, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 93
    const-string v3, "android.intent.category.VR_HOME"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    const-string v4, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 100
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 101
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 102
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 103
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110246

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 104
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110249

    .line 106
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 107
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 108
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 109
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 110
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 111
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040348

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 114
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x10e011a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 116
    :cond_4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040397

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 119
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 120
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111022c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    .line 121
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 122
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    move v3, v6

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 123
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11101ad

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 124
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0172

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    .line 125
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0147

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    .line 126
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10403af

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 130
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal;

    .line 132
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    .line 133
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/hardware/display/DisplayManagerInternal;

    .line 134
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040358

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 136
    :cond_6
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_3
    move-object v11, v2

    goto :goto_5

    .line 137
    :cond_7
    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 138
    :goto_5
    new-instance v2, Lcom/android/server/policy/DisplayFoldController;

    .line 139
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/policy/DisplayFoldController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;Landroid/graphics/Rect;Landroid/os/Handler;)V

    .line 140
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 141
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 142
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 149
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v7, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 150
    iput v2, v3, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 151
    :cond_8
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 154
    new-instance v2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {v2, v3, v7}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/Vibrator;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 156
    new-instance v2, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 157
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    .line 158
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 160
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_9

    .line 161
    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    .line 162
    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    .line 163
    :cond_9
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 164
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 165
    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v4, v1}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 166
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 167
    new-instance v2, Lcom/android/server/policy/TalkbackShortcutController;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/TalkbackShortcutController;-><init>(Landroid/content/Context;)V

    .line 168
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 169
    new-instance v2, Lcom/android/server/policy/WindowWakeUpPolicy;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    .line 170
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v2, v1, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V

    .line 171
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    .line 173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 174
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 175
    new-instance v4, Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {v4, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;-><init>(Landroid/os/Looper;)V

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10e00b7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v7, v1

    sput-wide v7, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 178
    sput-object v3, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 179
    sget-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 180
    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 181
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v4, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 182
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 183
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 184
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    if-eq v3, v6, :cond_a

    goto :goto_6

    .line 185
    :cond_a
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v3}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    .line 186
    :cond_b
    :goto_6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    .line 187
    :cond_d
    :goto_7
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 188
    :cond_e
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    if-eqz v1, :cond_f

    .line 189
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 191
    invoke-virtual {v1, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 192
    :cond_f
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 193
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 195
    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 196
    new-instance v5, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V

    .line 197
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 198
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 199
    throw v1
.end method

.method public final initKeyCombinationRules()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;Lcom/android/server/input/InputManagerService$LocalService;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x1110183

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$5;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v4, v1, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$5;

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-direct {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 58
    .line 59
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 73
    .line 74
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 84
    .line 85
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 86
    .line 87
    const/4 v2, 0x4

    .line 88
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 99
    .line 100
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 110
    .line 111
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method

.method public final initializeHdmiStateInternal()V
    .locals 9

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    .line 4
    .line 5
    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

    .line 16
    .line 17
    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    .line 18
    .line 19
    invoke-virtual {v2, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    .line 24
    .line 25
    const-string v6, "/sys/class/switch/hdmi/state"

    .line 26
    .line 27
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    const/16 v2, 0xf

    .line 31
    .line 32
    :try_start_1
    new-array v2, v2, [C

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/io/FileReader;->read([C)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-le v6, v3, :cond_0

    .line 39
    .line 40
    new-instance v7, Ljava/lang/String;

    .line 41
    .line 42
    sub-int/2addr v6, v3

    .line 43
    invoke-direct {v7, v2, v4, v6}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .line 45
    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    move v4, v3

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    move-object v2, v5

    .line 56
    goto :goto_3

    .line 57
    :catch_0
    move-exception v2

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v2

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :catch_2
    move-exception v5

    .line 68
    move-object v8, v5

    .line 69
    move-object v5, v2

    .line 70
    move-object v2, v8

    .line 71
    goto :goto_1

    .line 72
    :catch_3
    move-exception v5

    .line 73
    move-object v8, v5

    .line 74
    move-object v5, v2

    .line 75
    move-object v2, v8

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_3
    if-eqz v2, :cond_1

    .line 114
    .line 115
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 116
    .line 117
    .line 118
    :catch_4
    :cond_1
    throw p0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 122
    .line 123
    const-string/jumbo v1, "mdss_mdp/drm/card"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 132
    .line 133
    const-string v1, "displayport/extcon/extcon"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :catch_5
    :cond_3
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 139
    .line 140
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final injectBackGesture(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    new-instance v14, Landroid/view/KeyEvent;

    .line 3
    .line 4
    const/16 v12, 0x48

    .line 5
    .line 6
    const/16 v13, 0x101

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x4

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, -0x1

    .line 13
    const/4 v11, 0x0

    .line 14
    move-object v1, v14

    .line 15
    move-wide/from16 v2, p1

    .line 16
    .line 17
    move-wide/from16 v4, p1

    .line 18
    .line 19
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v14, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v14, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 33

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    sget-object v4, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 26
    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v4, Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string v4, "WindowManager"

    .line 40
    .line 41
    const-string v5, "interceptKeyTi keyCode="

    .line 42
    .line 43
    const-string v6, " action="

    .line 44
    .line 45
    invoke-static {v10, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, " repeatCount="

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, " keyguardOn="

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, " canceled="

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 100
    .line 101
    invoke-virtual {v4, v8}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const-wide/16 v12, -0x1

    .line 106
    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    return-wide v12

    .line 110
    :cond_2
    and-int/lit16 v3, v3, 0x400

    .line 111
    .line 112
    const-wide/16 v14, 0x0

    .line 113
    .line 114
    if-nez v3, :cond_7

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object v6, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    .line 126
    .line 127
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v6, Landroid/util/ArraySet;

    .line 132
    .line 133
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    :goto_0
    move-wide v5, v14

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget-object v2, v5, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v6, v5, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 145
    .line 146
    invoke-virtual {v6, v10}, Landroid/util/SparseLongArray;->get(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v17

    .line 150
    cmp-long v6, v17, v14

    .line 151
    .line 152
    if-nez v6, :cond_4

    .line 153
    .line 154
    monitor-exit v2

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    iget-object v6, v5, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v19

    .line 168
    if-eqz v19, :cond_6

    .line 169
    .line 170
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v19

    .line 174
    move-object/from16 v9, v19

    .line 175
    .line 176
    check-cast v9, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 177
    .line 178
    invoke-virtual {v9, v10}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    .line 179
    .line 180
    .line 181
    move-result v19

    .line 182
    if-eqz v19, :cond_5

    .line 183
    .line 184
    invoke-virtual {v9}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    .line 185
    .line 186
    .line 187
    move-result-wide v12

    .line 188
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v14

    .line 192
    :cond_5
    const-wide/16 v12, -0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    const-wide/16 v12, 0x96

    .line 196
    .line 197
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    iget-object v5, v5, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 202
    .line 203
    invoke-virtual {v5, v10}, Landroid/util/SparseLongArray;->get(I)J

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    add-long/2addr v5, v12

    .line 208
    monitor-exit v2

    .line 209
    :goto_2
    cmp-long v2, v3, v5

    .line 210
    .line 211
    if-gez v2, :cond_7

    .line 212
    .line 213
    sub-long/2addr v5, v3

    .line 214
    return-wide v5

    .line 215
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    throw v0

    .line 217
    :cond_7
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 218
    .line 219
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/util/Set;

    .line 224
    .line 225
    if-nez v2, :cond_8

    .line 226
    .line 227
    new-instance v2, Ljava/util/HashSet;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 233
    .line 234
    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    move-object v9, v2

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_9

    .line 259
    .line 260
    const/4 v4, 0x1

    .line 261
    goto :goto_4

    .line 262
    :cond_9
    const/4 v4, 0x0

    .line 263
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    iget-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 277
    .line 278
    .line 279
    move-result v15

    .line 280
    if-eqz v4, :cond_a

    .line 281
    .line 282
    if-nez v13, :cond_a

    .line 283
    .line 284
    const/16 v19, 0x1

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_a
    const/16 v19, 0x0

    .line 288
    .line 289
    :goto_5
    iget-boolean v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 290
    .line 291
    if-eqz v14, :cond_b

    .line 292
    .line 293
    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    if-nez v14, :cond_b

    .line 298
    .line 299
    const/4 v14, 0x0

    .line 300
    iput-boolean v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 301
    .line 302
    :cond_b
    iget-boolean v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 303
    .line 304
    if-eqz v14, :cond_c

    .line 305
    .line 306
    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-nez v14, :cond_c

    .line 311
    .line 312
    invoke-static {v12}, Landroid/view/KeyEvent;->isAltKey(I)Z

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    if-nez v14, :cond_c

    .line 317
    .line 318
    const/4 v14, 0x0

    .line 319
    iput-boolean v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 320
    .line 321
    :cond_c
    iget-object v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 322
    .line 323
    move-object/from16 v24, v9

    .line 324
    .line 325
    move/from16 v23, v10

    .line 326
    .line 327
    invoke-virtual {v14, v0, v8, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v9

    .line 331
    const-wide/16 v21, -0x1

    .line 332
    .line 333
    cmp-long v14, v9, v21

    .line 334
    .line 335
    move/from16 v25, v11

    .line 336
    .line 337
    if-ltz v14, :cond_f

    .line 338
    .line 339
    const-string v0, "WindowManager"

    .line 340
    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v2, "interceptKeyTi interceptKeyResult="

    .line 344
    .line 345
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    if-nez v14, :cond_d

    .line 359
    .line 360
    goto/16 :goto_13

    .line 361
    .line 362
    :cond_d
    const/4 v0, 0x0

    .line 363
    :goto_6
    const-wide/16 v9, 0x0

    .line 364
    .line 365
    :cond_e
    :goto_7
    const/4 v14, 0x0

    .line 366
    goto/16 :goto_35

    .line 367
    .line 368
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    if-eqz v9, :cond_25

    .line 373
    .line 374
    if-nez v2, :cond_25

    .line 375
    .line 376
    iget-object v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 377
    .line 378
    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 379
    .line 380
    .line 381
    move-result v9

    .line 382
    if-nez v9, :cond_25

    .line 383
    .line 384
    iget-object v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 385
    .line 386
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 390
    .line 391
    .line 392
    move-result v26

    .line 393
    if-eqz v26, :cond_10

    .line 394
    .line 395
    goto/16 :goto_14

    .line 396
    .line 397
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    const/16 v11, 0x54

    .line 406
    .line 407
    if-ne v14, v11, :cond_12

    .line 408
    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    if-nez v10, :cond_11

    .line 414
    .line 415
    const/4 v10, 0x1

    .line 416
    iput-boolean v10, v9, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 417
    .line 418
    const/4 v10, 0x0

    .line 419
    iput-boolean v10, v9, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 420
    .line 421
    goto/16 :goto_14

    .line 422
    .line 423
    :cond_11
    const/4 v10, 0x0

    .line 424
    iput-boolean v10, v9, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 425
    .line 426
    iget-boolean v11, v9, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 427
    .line 428
    if-eqz v11, :cond_25

    .line 429
    .line 430
    iput-boolean v10, v9, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 431
    .line 432
    goto/16 :goto_12

    .line 433
    .line 434
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    if-eqz v11, :cond_13

    .line 439
    .line 440
    goto/16 :goto_14

    .line 441
    .line 442
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    iget-object v1, v9, Lcom/android/server/policy/ModifierShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 447
    .line 448
    move/from16 v27, v15

    .line 449
    .line 450
    const-string/jumbo v15, "startActivity shortcut, keyCode="

    .line 451
    .line 452
    .line 453
    move/from16 v28, v3

    .line 454
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    move/from16 v29, v5

    .line 460
    .line 461
    iget-boolean v5, v9, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 462
    .line 463
    move/from16 v30, v2

    .line 464
    .line 465
    const-string v2, "ModifierShortcutManager"

    .line 466
    .line 467
    if-eqz v5, :cond_15

    .line 468
    .line 469
    invoke-virtual {v11, v3}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    if-eqz v5, :cond_14

    .line 474
    .line 475
    const/4 v5, 0x1

    .line 476
    iput-boolean v5, v9, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 477
    .line 478
    const/4 v5, 0x0

    .line 479
    iput-boolean v5, v9, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 480
    .line 481
    move/from16 v31, v6

    .line 482
    .line 483
    move v5, v10

    .line 484
    :goto_8
    const/4 v6, 0x1

    .line 485
    goto :goto_9

    .line 486
    :cond_14
    move/from16 v31, v6

    .line 487
    .line 488
    goto/16 :goto_11

    .line 489
    .line 490
    :cond_15
    const/high16 v5, 0x70000

    .line 491
    .line 492
    and-int/2addr v5, v10

    .line 493
    if-eqz v5, :cond_1c

    .line 494
    .line 495
    const v5, -0x70001

    .line 496
    .line 497
    .line 498
    and-int/2addr v5, v10

    .line 499
    move/from16 v31, v6

    .line 500
    .line 501
    goto :goto_8

    .line 502
    :goto_9
    invoke-static {v5, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 503
    .line 504
    .line 505
    move-result v32

    .line 506
    if-nez v32, :cond_16

    .line 507
    .line 508
    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-nez v6, :cond_16

    .line 513
    .line 514
    const/4 v0, 0x0

    .line 515
    goto :goto_d

    .line 516
    :cond_16
    if-eqz v32, :cond_17

    .line 517
    .line 518
    iget-object v6, v9, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :cond_17
    iget-object v6, v9, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 522
    .line 523
    :goto_a
    invoke-virtual {v11, v3, v5}, Landroid/view/KeyCharacterMap;->get(II)I

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-eqz v0, :cond_18

    .line 528
    .line 529
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    check-cast v0, Landroid/content/Intent;

    .line 534
    .line 535
    goto :goto_b

    .line 536
    :cond_18
    const/4 v0, 0x0

    .line 537
    :goto_b
    if-nez v0, :cond_1a

    .line 538
    .line 539
    invoke-virtual {v11, v3}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 540
    .line 541
    .line 542
    move-result v11

    .line 543
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    .line 544
    .line 545
    .line 546
    move-result v11

    .line 547
    if-eqz v11, :cond_1a

    .line 548
    .line 549
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Landroid/content/Intent;

    .line 554
    .line 555
    if-nez v0, :cond_1a

    .line 556
    .line 557
    if-eqz v32, :cond_19

    .line 558
    .line 559
    iget-object v6, v9, Lcom/android/server/policy/ModifierShortcutManager;->mShiftRoleShortcuts:Landroid/util/SparseArray;

    .line 560
    .line 561
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    check-cast v6, Ljava/lang/String;

    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_19
    iget-object v6, v9, Lcom/android/server/policy/ModifierShortcutManager;->mRoleShortcuts:Landroid/util/SparseArray;

    .line 569
    .line 570
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    check-cast v6, Ljava/lang/String;

    .line 575
    .line 576
    :goto_c
    if-eqz v6, :cond_1a

    .line 577
    .line 578
    invoke-virtual {v9, v6}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    :cond_1a
    :goto_d
    if-eqz v0, :cond_1b

    .line 583
    .line 584
    const/high16 v6, 0x10000000

    .line 585
    .line 586
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    .line 588
    .line 589
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v5, " intent="

    .line 598
    .line 599
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 616
    .line 617
    .line 618
    iget-object v1, v9, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 619
    .line 620
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 621
    .line 622
    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    .line 624
    .line 625
    goto :goto_e

    .line 626
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v4, "Dropping shortcut key combination because the activity to which it is registered was not found: META+ or SEARCH"

    .line 629
    .line 630
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    :goto_e
    invoke-static {v0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getLogEventFromIntent(Landroid/content/Intent;)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    .line 652
    .line 653
    invoke-direct {v1, v9, v8, v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/ModifierShortcutManager;Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 654
    .line 655
    .line 656
    iget-object v0, v9, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    .line 660
    .line 661
    goto/16 :goto_12

    .line 662
    .line 663
    :cond_1b
    const-string v0, "handleIntentShortcut, keyCode="

    .line 664
    .line 665
    const-string v1, " metaState="

    .line 666
    .line 667
    invoke-static {v3, v5, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    goto :goto_11

    .line 671
    :cond_1c
    move/from16 v31, v6

    .line 672
    .line 673
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 674
    .line 675
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    check-cast v0, Ljava/lang/String;

    .line 680
    .line 681
    sget-object v1, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 682
    .line 683
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    check-cast v1, Ljava/lang/String;

    .line 688
    .line 689
    if-eqz v0, :cond_1d

    .line 690
    .line 691
    invoke-virtual {v9, v0}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    goto :goto_f

    .line 696
    :cond_1d
    if-eqz v1, :cond_1e

    .line 697
    .line 698
    const-string v5, "android.intent.action.MAIN"

    .line 699
    .line 700
    invoke-static {v5, v1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    goto :goto_f

    .line 705
    :cond_1e
    const/4 v5, 0x0

    .line 706
    :goto_f
    if-eqz v5, :cond_1f

    .line 707
    .line 708
    const/high16 v6, 0x10000000

    .line 709
    .line 710
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 711
    .line 712
    .line 713
    :try_start_2
    iget-object v4, v9, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 714
    .line 715
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 716
    .line 717
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 718
    .line 719
    .line 720
    goto :goto_10

    .line 721
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    .line 724
    .line 725
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    const-string v3, ", category="

    .line 736
    .line 737
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v1, " role="

    .line 744
    .line 745
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-static {v4, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    :goto_10
    invoke-static {v5}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getLogEventFromIntent(Landroid/content/Intent;)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    .line 756
    .line 757
    invoke-direct {v1, v9, v8, v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/ModifierShortcutManager;Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 758
    .line 759
    .line 760
    iget-object v0, v9, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 761
    .line 762
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 763
    .line 764
    .line 765
    goto :goto_12

    .line 766
    :cond_1f
    :goto_11
    int-to-long v0, v14

    .line 767
    and-int/lit16 v2, v10, 0x1000

    .line 768
    .line 769
    if-eqz v2, :cond_20

    .line 770
    .line 771
    const-wide v2, 0x100000000000L

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    or-long/2addr v0, v2

    .line 777
    :cond_20
    const/4 v2, 0x2

    .line 778
    and-int/lit8 v3, v10, 0x2

    .line 779
    .line 780
    if-eqz v3, :cond_21

    .line 781
    .line 782
    const-wide v2, 0x200000000L

    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    or-long/2addr v0, v2

    .line 788
    :cond_21
    const/4 v2, 0x1

    .line 789
    and-int/lit8 v3, v10, 0x1

    .line 790
    .line 791
    if-eqz v3, :cond_22

    .line 792
    .line 793
    const-wide v2, 0x100000000L

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    or-long/2addr v0, v2

    .line 799
    :cond_22
    const/high16 v2, 0x10000

    .line 800
    .line 801
    and-int v3, v10, v2

    .line 802
    .line 803
    if-eqz v3, :cond_23

    .line 804
    .line 805
    const-wide/high16 v2, 0x1000000000000L

    .line 806
    .line 807
    or-long/2addr v0, v2

    .line 808
    :cond_23
    iget-object v2, v9, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 809
    .line 810
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    check-cast v2, Lcom/android/internal/policy/IShortcutService;

    .line 815
    .line 816
    if-eqz v2, :cond_26

    .line 817
    .line 818
    :try_start_3
    invoke-interface {v2, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 819
    .line 820
    .line 821
    goto :goto_12

    .line 822
    :catch_2
    iget-object v2, v9, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 823
    .line 824
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 825
    .line 826
    .line 827
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 828
    .line 829
    .line 830
    const/4 v1, 0x0

    .line 831
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 832
    .line 833
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 834
    .line 835
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 836
    .line 837
    if-eqz v0, :cond_24

    .line 838
    .line 839
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 840
    .line 841
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 842
    .line 843
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    invoke-static {v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getSaLoggerEventId(I)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 851
    .line 852
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 853
    .line 854
    invoke-virtual {v1, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    :cond_24
    :goto_13
    const/4 v0, 0x1

    .line 862
    goto/16 :goto_6

    .line 863
    .line 864
    :cond_25
    :goto_14
    move/from16 v30, v2

    .line 865
    .line 866
    move/from16 v28, v3

    .line 867
    .line 868
    move/from16 v29, v5

    .line 869
    .line 870
    move/from16 v31, v6

    .line 871
    .line 872
    move/from16 v27, v15

    .line 873
    .line 874
    :cond_26
    const/4 v0, -0x1

    .line 875
    sparse-switch v12, :sswitch_data_0

    .line 876
    .line 877
    .line 878
    const-wide/16 v9, 0x0

    .line 879
    .line 880
    goto/16 :goto_28

    .line 881
    .line 882
    :sswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->emojiAndScreenshotKeycodesAvailable()Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-eqz v0, :cond_27

    .line 887
    .line 888
    if-eqz v4, :cond_27

    .line 889
    .line 890
    if-nez v13, :cond_27

    .line 891
    .line 892
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 893
    .line 894
    const/16 v1, 0x10

    .line 895
    .line 896
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    .line 898
    .line 899
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 900
    .line 901
    const/4 v2, 0x0

    .line 902
    const/4 v3, 0x2

    .line 903
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    const-wide/16 v9, 0x0

    .line 908
    .line 909
    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 910
    .line 911
    .line 912
    goto :goto_15

    .line 913
    :cond_27
    const/4 v2, 0x0

    .line 914
    const-wide/16 v9, 0x0

    .line 915
    .line 916
    :goto_15
    move v14, v2

    .line 917
    :goto_16
    const/4 v0, 0x1

    .line 918
    goto/16 :goto_35

    .line 919
    .line 920
    :sswitch_1
    const/4 v2, 0x0

    .line 921
    const-wide/16 v9, 0x0

    .line 922
    .line 923
    if-eqz v19, :cond_28

    .line 924
    .line 925
    invoke-virtual {v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 926
    .line 927
    .line 928
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->RECENT_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 929
    .line 930
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 931
    .line 932
    .line 933
    :cond_28
    :goto_17
    const/4 v0, 0x1

    .line 934
    goto/16 :goto_7

    .line 935
    .line 936
    :sswitch_2
    const-wide/16 v9, 0x0

    .line 937
    .line 938
    const-string v0, "WindowManager"

    .line 939
    .line 940
    const-string v1, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    .line 941
    .line 942
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .line 944
    .line 945
    goto :goto_17

    .line 946
    :sswitch_3
    const-wide/16 v9, 0x0

    .line 947
    .line 948
    if-nez v4, :cond_28

    .line 949
    .line 950
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->KEYBOARD_BACKLIGHT_TOGGLE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 951
    .line 952
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 953
    .line 954
    .line 955
    goto :goto_17

    .line 956
    :sswitch_4
    const-wide/16 v9, 0x0

    .line 957
    .line 958
    if-eqz v4, :cond_28

    .line 959
    .line 960
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 961
    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 963
    .line 964
    .line 965
    move-result v1

    .line 966
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 967
    .line 968
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 969
    .line 970
    invoke-interface {v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->incrementKeyboardBacklight(I)V

    .line 971
    .line 972
    .line 973
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->KEYBOARD_BACKLIGHT_UP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 974
    .line 975
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 976
    .line 977
    .line 978
    goto :goto_17

    .line 979
    :sswitch_5
    const-wide/16 v9, 0x0

    .line 980
    .line 981
    if-eqz v4, :cond_28

    .line 982
    .line 983
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 984
    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 986
    .line 987
    .line 988
    move-result v1

    .line 989
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 990
    .line 991
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 992
    .line 993
    invoke-interface {v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->decrementKeyboardBacklight(I)V

    .line 994
    .line 995
    .line 996
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->KEYBOARD_BACKLIGHT_DOWN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 997
    .line 998
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_17

    .line 1002
    :sswitch_6
    const-wide/16 v9, 0x0

    .line 1003
    .line 1004
    const-string v0, "WindowManager"

    .line 1005
    .line 1006
    const-string v1, "KEYCODE_APP_X should be handled in interceptKeyBeforeQueueing"

    .line 1007
    .line 1008
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    .line 1010
    .line 1011
    goto :goto_17

    .line 1012
    :sswitch_7
    const-wide/16 v9, 0x0

    .line 1013
    .line 1014
    if-nez v4, :cond_28

    .line 1015
    .line 1016
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1017
    .line 1018
    const/16 v1, 0x16

    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1024
    .line 1025
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    const/4 v1, 0x1

    .line 1030
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1034
    .line 1035
    .line 1036
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->ALL_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1037
    .line 1038
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_17

    .line 1042
    :sswitch_8
    const-wide/16 v9, 0x0

    .line 1043
    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v1

    .line 1052
    if-nez v1, :cond_29

    .line 1053
    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    const-string v2, "Illegal keycode provided to prepareToSendSystemKeyToApplication: "

    .line 1057
    .line 1058
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    const-string v1, "WindowManager"

    .line 1073
    .line 1074
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    :goto_18
    const/4 v0, 0x0

    .line 1078
    goto :goto_1a

    .line 1079
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 1080
    .line 1081
    .line 1082
    move-result v1

    .line 1083
    if-nez v1, :cond_2b

    .line 1084
    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    if-nez v1, :cond_2b

    .line 1090
    .line 1091
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1092
    .line 1093
    move-object/from16 v2, p1

    .line 1094
    .line 1095
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    if-eqz v1, :cond_2a

    .line 1100
    .line 1101
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 1102
    .line 1103
    iget-object v11, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1104
    .line 1105
    iget v14, v1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 1106
    .line 1107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    .line 1109
    .line 1110
    const-string v12, "android.permission.OVERRIDE_SYSTEM_KEY_BEHAVIOR_IN_FOCUSED_WINDOW"

    .line 1111
    .line 1112
    const/16 v16, 0x0

    .line 1113
    .line 1114
    const/16 v17, 0x0

    .line 1115
    .line 1116
    const/4 v13, -0x1

    .line 1117
    const/4 v15, 0x0

    .line 1118
    invoke-static/range {v11 .. v17}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    .line 1120
    .line 1121
    move-result v1

    .line 1122
    if-nez v1, :cond_2a

    .line 1123
    .line 1124
    const/4 v0, 0x1

    .line 1125
    goto :goto_1a

    .line 1126
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 1127
    .line 1128
    .line 1129
    move-result-wide v1

    .line 1130
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    .line 1131
    .line 1132
    .line 1133
    goto :goto_18

    .line 1134
    :cond_2b
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 1135
    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1137
    .line 1138
    .line 1139
    move-result v2

    .line 1140
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    check-cast v1, Ljava/util/Set;

    .line 1145
    .line 1146
    if-eqz v1, :cond_2c

    .line 1147
    .line 1148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    if-eqz v0, :cond_2c

    .line 1157
    .line 1158
    const/4 v1, 0x1

    .line 1159
    const/16 v20, 0x1

    .line 1160
    .line 1161
    goto :goto_19

    .line 1162
    :cond_2c
    const/4 v1, 0x1

    .line 1163
    const/16 v20, 0x0

    .line 1164
    .line 1165
    :goto_19
    xor-int/lit8 v0, v20, 0x1

    .line 1166
    .line 1167
    :goto_1a
    if-eqz v0, :cond_2d

    .line 1168
    .line 1169
    :goto_1b
    const/4 v0, 0x0

    .line 1170
    goto/16 :goto_7

    .line 1171
    .line 1172
    :cond_2d
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1173
    .line 1174
    .line 1175
    goto/16 :goto_17

    .line 1176
    .line 1177
    :sswitch_9
    const-wide/16 v9, 0x0

    .line 1178
    .line 1179
    const-string v0, "WindowManager"

    .line 1180
    .line 1181
    const-string v1, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    .line 1182
    .line 1183
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .line 1185
    .line 1186
    goto/16 :goto_17

    .line 1187
    .line 1188
    :sswitch_a
    const-wide/16 v9, 0x0

    .line 1189
    .line 1190
    if-eqz v4, :cond_28

    .line 1191
    .line 1192
    const/16 v1, 0xdd

    .line 1193
    .line 1194
    if-ne v12, v1, :cond_2e

    .line 1195
    .line 1196
    const/4 v0, 0x1

    .line 1197
    :cond_2e
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1198
    .line 1199
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v2

    .line 1203
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1204
    .line 1205
    .line 1206
    const/4 v4, -0x3

    .line 1207
    const/4 v5, 0x0

    .line 1208
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1209
    .line 1210
    .line 1211
    move-result v2

    .line 1212
    if-eqz v2, :cond_2f

    .line 1213
    .line 1214
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1215
    .line 1216
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v2

    .line 1220
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1221
    .line 1222
    .line 1223
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1224
    .line 1225
    .line 1226
    :cond_2f
    if-gez v31, :cond_30

    .line 1227
    .line 1228
    move v6, v5

    .line 1229
    goto :goto_1c

    .line 1230
    :cond_30
    move/from16 v6, v31

    .line 1231
    .line 1232
    :goto_1c
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1233
    .line 1234
    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1239
    .line 1240
    const/4 v4, 0x1

    .line 1241
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 1242
    .line 1243
    .line 1244
    move-result v3

    .line 1245
    sub-float v4, v3, v2

    .line 1246
    .line 1247
    const/high16 v5, 0x41200000    # 10.0f

    .line 1248
    .line 1249
    div-float/2addr v4, v5

    .line 1250
    int-to-float v0, v0

    .line 1251
    mul-float/2addr v4, v0

    .line 1252
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1253
    .line 1254
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    .line 1255
    .line 1256
    .line 1257
    move-result v0

    .line 1258
    add-float/2addr v0, v4

    .line 1259
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 1260
    .line 1261
    .line 1262
    move-result v0

    .line 1263
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 1268
    .line 1269
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1270
    .line 1271
    invoke-virtual {v2, v6, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 1272
    .line 1273
    .line 1274
    new-instance v0, Landroid/content/Intent;

    .line 1275
    .line 1276
    const-string v2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    .line 1277
    .line 1278
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    const/high16 v2, 0x50000

    .line 1282
    .line 1283
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1284
    .line 1285
    .line 1286
    const-string v2, "android.intent.extra.FROM_BRIGHTNESS_KEY"

    .line 1287
    .line 1288
    const/4 v3, 0x1

    .line 1289
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1290
    .line 1291
    .line 1292
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 1293
    .line 1294
    invoke-virtual {v7, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1295
    .line 1296
    .line 1297
    const/16 v0, 0xdc

    .line 1298
    .line 1299
    if-eq v12, v0, :cond_32

    .line 1300
    .line 1301
    if-eq v12, v1, :cond_31

    .line 1302
    .line 1303
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->HOME:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1304
    .line 1305
    const/4 v0, 0x0

    .line 1306
    goto :goto_1d

    .line 1307
    :cond_31
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BRIGHTNESS_UP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1308
    .line 1309
    goto :goto_1d

    .line 1310
    :cond_32
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BRIGHTNESS_DOWN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1311
    .line 1312
    :goto_1d
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1313
    .line 1314
    .line 1315
    goto/16 :goto_17

    .line 1316
    .line 1317
    :sswitch_b
    const-wide/16 v9, 0x0

    .line 1318
    .line 1319
    const-string v0, "WindowManager"

    .line 1320
    .line 1321
    const-string v1, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    .line 1322
    .line 1323
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    goto/16 :goto_17

    .line 1327
    .line 1328
    :sswitch_c
    const-wide/16 v9, 0x0

    .line 1329
    .line 1330
    if-eqz v19, :cond_61

    .line 1331
    .line 1332
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LANGUAGE_SWITCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1333
    .line 1334
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1335
    .line 1336
    .line 1337
    goto/16 :goto_28

    .line 1338
    .line 1339
    :sswitch_d
    const-wide/16 v9, 0x0

    .line 1340
    .line 1341
    if-nez v30, :cond_28

    .line 1342
    .line 1343
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1344
    .line 1345
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1346
    .line 1347
    const/4 v1, 0x3

    .line 1348
    invoke-virtual {v0, v12, v1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v0

    .line 1352
    if-eqz v0, :cond_33

    .line 1353
    .line 1354
    const-string v0, "WindowManager"

    .line 1355
    .line 1356
    const-string/jumbo v1, "skip single press recent, requestedSystemKey"

    .line 1357
    .line 1358
    .line 1359
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .line 1361
    .line 1362
    goto/16 :goto_28

    .line 1363
    .line 1364
    :cond_33
    if-eqz v19, :cond_34

    .line 1365
    .line 1366
    const/4 v1, 0x1

    .line 1367
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1368
    .line 1369
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    if-eqz v0, :cond_35

    .line 1374
    .line 1375
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 1376
    .line 1377
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1378
    .line 1379
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1380
    .line 1381
    if-eqz v0, :cond_35

    .line 1382
    .line 1383
    :try_start_4
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1384
    .line 1385
    .line 1386
    goto :goto_1e

    .line 1387
    :cond_34
    if-nez v4, :cond_35

    .line 1388
    .line 1389
    if-nez v29, :cond_35

    .line 1390
    .line 1391
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1392
    .line 1393
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1394
    .line 1395
    if-nez v0, :cond_35

    .line 1396
    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1398
    .line 1399
    .line 1400
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->APP_SWITCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1401
    .line 1402
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1403
    .line 1404
    .line 1405
    :catch_3
    :cond_35
    :goto_1e
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1406
    .line 1407
    const/16 v1, 0xbb

    .line 1408
    .line 1409
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    if-eqz v0, :cond_28

    .line 1414
    .line 1415
    const-string v0, "WindowManager"

    .line 1416
    .line 1417
    const-string v1, "can dispatching recent key event, requestedSystemKey"

    .line 1418
    .line 1419
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_1b

    .line 1423
    .line 1424
    :sswitch_e
    const-wide/16 v9, 0x0

    .line 1425
    .line 1426
    if-eqz v19, :cond_28

    .line 1427
    .line 1428
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 1429
    .line 1430
    const/4 v1, 0x1

    .line 1431
    if-ne v0, v1, :cond_36

    .line 1432
    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    .line 1434
    .line 1435
    .line 1436
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_NOTIFICATION_PANEL:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1437
    .line 1438
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1439
    .line 1440
    .line 1441
    goto/16 :goto_17

    .line 1442
    .line 1443
    :cond_36
    if-nez v0, :cond_28

    .line 1444
    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    .line 1446
    .line 1447
    .line 1448
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_SYSTEM_SETTINGS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1449
    .line 1450
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1451
    .line 1452
    .line 1453
    goto/16 :goto_17

    .line 1454
    .line 1455
    :sswitch_f
    const-wide/16 v9, 0x0

    .line 1456
    .line 1457
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1458
    .line 1459
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    if-eqz v0, :cond_37

    .line 1464
    .line 1465
    goto/16 :goto_28

    .line 1466
    .line 1467
    :cond_37
    if-eqz v4, :cond_39

    .line 1468
    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 1470
    .line 1471
    .line 1472
    move-result v0

    .line 1473
    if-eqz v0, :cond_38

    .line 1474
    .line 1475
    const/4 v1, 0x1

    .line 1476
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1477
    .line 1478
    const/4 v2, 0x0

    .line 1479
    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1480
    .line 1481
    goto/16 :goto_17

    .line 1482
    .line 1483
    :cond_38
    const/4 v1, 0x1

    .line 1484
    const/4 v2, 0x0

    .line 1485
    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1486
    .line 1487
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1488
    .line 1489
    goto/16 :goto_17

    .line 1490
    .line 1491
    :cond_39
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1492
    .line 1493
    if-eqz v0, :cond_3a

    .line 1494
    .line 1495
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 1496
    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1498
    .line 1499
    .line 1500
    move-result v1

    .line 1501
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 1502
    .line 1503
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 1504
    .line 1505
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    .line 1506
    .line 1507
    .line 1508
    const/4 v1, 0x0

    .line 1509
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1510
    .line 1511
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_CAPS_LOCK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1512
    .line 1513
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1514
    .line 1515
    .line 1516
    goto/16 :goto_17

    .line 1517
    .line 1518
    :cond_3a
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1519
    .line 1520
    if-eqz v0, :cond_28

    .line 1521
    .line 1522
    if-nez v29, :cond_3b

    .line 1523
    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsViaA11y()V

    .line 1525
    .line 1526
    .line 1527
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->ACCESSIBILITY_ALL_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1528
    .line 1529
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1530
    .line 1531
    .line 1532
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1533
    .line 1534
    if-eqz v0, :cond_3b

    .line 1535
    .line 1536
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1537
    .line 1538
    const-string v1, "PKBD0024"

    .line 1539
    .line 1540
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1541
    .line 1542
    .line 1543
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1544
    .line 1545
    .line 1546
    :cond_3b
    const/4 v1, 0x0

    .line 1547
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1548
    .line 1549
    goto/16 :goto_17

    .line 1550
    .line 1551
    :sswitch_10
    const-wide/16 v9, 0x0

    .line 1552
    .line 1553
    if-nez v4, :cond_61

    .line 1554
    .line 1555
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_CAPS_LOCK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1556
    .line 1557
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1558
    .line 1559
    .line 1560
    goto/16 :goto_28

    .line 1561
    .line 1562
    :sswitch_11
    const-wide/16 v9, 0x0

    .line 1563
    .line 1564
    if-nez v4, :cond_61

    .line 1565
    .line 1566
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1567
    .line 1568
    if-eqz v0, :cond_61

    .line 1569
    .line 1570
    and-int v0, v28, v0

    .line 1571
    .line 1572
    if-nez v0, :cond_61

    .line 1573
    .line 1574
    const/4 v1, 0x0

    .line 1575
    iput v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1576
    .line 1577
    const/4 v2, 0x1

    .line 1578
    invoke-virtual {v7, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 1579
    .line 1580
    .line 1581
    move v14, v1

    .line 1582
    move v0, v2

    .line 1583
    goto/16 :goto_35

    .line 1584
    .line 1585
    :sswitch_12
    const-wide/16 v9, 0x0

    .line 1586
    .line 1587
    goto/16 :goto_22

    .line 1588
    .line 1589
    :sswitch_13
    const/4 v2, 0x1

    .line 1590
    const-wide/16 v9, 0x0

    .line 1591
    .line 1592
    if-eqz v19, :cond_61

    .line 1593
    .line 1594
    if-nez v30, :cond_61

    .line 1595
    .line 1596
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    .line 1597
    .line 1598
    if-eq v0, v2, :cond_3c

    .line 1599
    .line 1600
    goto/16 :goto_28

    .line 1601
    .line 1602
    :cond_3c
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 1603
    .line 1604
    if-eqz v0, :cond_3d

    .line 1605
    .line 1606
    new-instance v0, Landroid/content/Intent;

    .line 1607
    .line 1608
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1609
    .line 1610
    .line 1611
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 1612
    .line 1613
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1614
    .line 1615
    .line 1616
    goto :goto_1f

    .line 1617
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    .line 1618
    .line 1619
    const-string v1, "android.intent.action.WEB_SEARCH"

    .line 1620
    .line 1621
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    :goto_1f
    const/high16 v1, 0x10200000

    .line 1625
    .line 1626
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1627
    .line 1628
    .line 1629
    :try_start_5
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 1630
    .line 1631
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1632
    .line 1633
    .line 1634
    goto :goto_20

    .line 1635
    :catch_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1636
    .line 1637
    const-string v2, "Could not resolve activity with : "

    .line 1638
    .line 1639
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v0

    .line 1650
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    const-string v0, " name."

    .line 1654
    .line 1655
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    const-string v1, "WindowManager"

    .line 1663
    .line 1664
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .line 1666
    .line 1667
    :goto_20
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_SEARCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1668
    .line 1669
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1670
    .line 1671
    .line 1672
    goto/16 :goto_17

    .line 1673
    .line 1674
    :sswitch_14
    const-wide/16 v9, 0x0

    .line 1675
    .line 1676
    if-nez v4, :cond_28

    .line 1677
    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    .line 1679
    .line 1680
    .line 1681
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_NOTIFICATION_PANEL:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1682
    .line 1683
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1684
    .line 1685
    .line 1686
    goto/16 :goto_17

    .line 1687
    .line 1688
    :sswitch_15
    const-wide/16 v9, 0x0

    .line 1689
    .line 1690
    if-eqz v19, :cond_61

    .line 1691
    .line 1692
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    if-eqz v0, :cond_61

    .line 1697
    .line 1698
    if-nez v30, :cond_61

    .line 1699
    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1701
    .line 1702
    .line 1703
    move-result v0

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v1

    .line 1708
    if-eqz v1, :cond_3e

    .line 1709
    .line 1710
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 1711
    .line 1712
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1713
    .line 1714
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1715
    .line 1716
    if-eqz v1, :cond_3e

    .line 1717
    .line 1718
    :try_start_6
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1719
    .line 1720
    .line 1721
    :catch_5
    :cond_3e
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->OPEN_SHORTCUT_HELPER:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1722
    .line 1723
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1724
    .line 1725
    .line 1726
    goto/16 :goto_17

    .line 1727
    .line 1728
    :sswitch_16
    const-wide/16 v9, 0x0

    .line 1729
    .line 1730
    invoke-static {}, Lcom/android/server/flags/Flags;->newBugreportKeyboardShortcut()Z

    .line 1731
    .line 1732
    .line 1733
    move-result v0

    .line 1734
    if-eqz v0, :cond_3f

    .line 1735
    .line 1736
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 1737
    .line 1738
    if-eqz v0, :cond_3f

    .line 1739
    .line 1740
    if-eqz v19, :cond_3f

    .line 1741
    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1743
    .line 1744
    .line 1745
    move-result v0

    .line 1746
    if-eqz v0, :cond_3f

    .line 1747
    .line 1748
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 1749
    .line 1750
    .line 1751
    move-result v0

    .line 1752
    if-eqz v0, :cond_3f

    .line 1753
    .line 1754
    :try_start_7
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 1755
    .line 1756
    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1757
    .line 1758
    .line 1759
    goto :goto_21

    .line 1760
    :catch_6
    move-exception v0

    .line 1761
    const-string v1, "WindowManager"

    .line 1762
    .line 1763
    const-string v2, "Error taking bugreport"

    .line 1764
    .line 1765
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1766
    .line 1767
    .line 1768
    :goto_21
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TRIGGER_BUG_REPORT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1769
    .line 1770
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1771
    .line 1772
    .line 1773
    goto/16 :goto_17

    .line 1774
    .line 1775
    :cond_3f
    :goto_22
    if-eqz v19, :cond_5f

    .line 1776
    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1778
    .line 1779
    .line 1780
    move-result v0

    .line 1781
    if-eqz v0, :cond_5f

    .line 1782
    .line 1783
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BACK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1784
    .line 1785
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 1789
    .line 1790
    .line 1791
    move-result-wide v0

    .line 1792
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    .line 1793
    .line 1794
    .line 1795
    goto/16 :goto_17

    .line 1796
    .line 1797
    :sswitch_17
    const-wide/16 v9, 0x0

    .line 1798
    .line 1799
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1800
    .line 1801
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1802
    .line 1803
    .line 1804
    move-result v0

    .line 1805
    if-eqz v0, :cond_40

    .line 1806
    .line 1807
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1808
    .line 1809
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 1810
    .line 1811
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1812
    .line 1813
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1814
    .line 1815
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1816
    .line 1817
    .line 1818
    monitor-enter v1

    .line 1819
    :try_start_8
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1820
    .line 1821
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1822
    .line 1823
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->handleAltTabKeyIfNeededLocked()Z

    .line 1824
    .line 1825
    .line 1826
    move-result v0

    .line 1827
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1828
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1829
    .line 1830
    .line 1831
    if-eqz v0, :cond_40

    .line 1832
    .line 1833
    const/4 v1, 0x1

    .line 1834
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 1835
    .line 1836
    goto/16 :goto_17

    .line 1837
    .line 1838
    :catchall_1
    move-exception v0

    .line 1839
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1840
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1841
    .line 1842
    .line 1843
    throw v0

    .line 1844
    :cond_40
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1845
    .line 1846
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    if-eqz v0, :cond_41

    .line 1851
    .line 1852
    goto/16 :goto_28

    .line 1853
    .line 1854
    :cond_41
    if-eqz v19, :cond_61

    .line 1855
    .line 1856
    if-nez v30, :cond_61

    .line 1857
    .line 1858
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    if-eqz v0, :cond_61

    .line 1863
    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    if-eqz v0, :cond_42

    .line 1869
    .line 1870
    const/4 v1, 0x0

    .line 1871
    invoke-virtual {v7, v1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 1872
    .line 1873
    .line 1874
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->RECENT_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1875
    .line 1876
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1877
    .line 1878
    .line 1879
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1880
    .line 1881
    if-eqz v0, :cond_28

    .line 1882
    .line 1883
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1884
    .line 1885
    const-string v1, "PKBD0055"

    .line 1886
    .line 1887
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1888
    .line 1889
    .line 1890
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1891
    .line 1892
    .line 1893
    goto/16 :goto_17

    .line 1894
    .line 1895
    :cond_42
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1896
    .line 1897
    if-nez v0, :cond_61

    .line 1898
    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 1900
    .line 1901
    .line 1902
    move-result v0

    .line 1903
    and-int/lit16 v0, v0, -0xc2

    .line 1904
    .line 1905
    const/4 v1, 0x2

    .line 1906
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 1907
    .line 1908
    .line 1909
    move-result v1

    .line 1910
    const/16 v2, 0x1002

    .line 1911
    .line 1912
    if-nez v1, :cond_43

    .line 1913
    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 1915
    .line 1916
    .line 1917
    move-result v1

    .line 1918
    invoke-static {v1, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 1919
    .line 1920
    .line 1921
    move-result v1

    .line 1922
    if-eqz v1, :cond_61

    .line 1923
    .line 1924
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 1925
    .line 1926
    .line 1927
    iput v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1928
    .line 1929
    const/4 v1, 0x1

    .line 1930
    invoke-virtual {v7, v1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 1931
    .line 1932
    .line 1933
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->RECENT_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1934
    .line 1935
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1936
    .line 1937
    .line 1938
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1939
    .line 1940
    if-eqz v0, :cond_28

    .line 1941
    .line 1942
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 1943
    .line 1944
    .line 1945
    move-result v0

    .line 1946
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 1947
    .line 1948
    .line 1949
    move-result v0

    .line 1950
    if-eqz v0, :cond_44

    .line 1951
    .line 1952
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1953
    .line 1954
    const-string v1, "PKBD0007"

    .line 1955
    .line 1956
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1957
    .line 1958
    .line 1959
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1960
    .line 1961
    .line 1962
    goto/16 :goto_17

    .line 1963
    .line 1964
    :cond_44
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1965
    .line 1966
    const-string v1, "PKBD0052"

    .line 1967
    .line 1968
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1969
    .line 1970
    .line 1971
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1972
    .line 1973
    .line 1974
    goto/16 :goto_17

    .line 1975
    .line 1976
    :sswitch_18
    const-wide/16 v9, 0x0

    .line 1977
    .line 1978
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1979
    .line 1980
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1981
    .line 1982
    .line 1983
    move-result v0

    .line 1984
    if-eqz v0, :cond_45

    .line 1985
    .line 1986
    goto/16 :goto_28

    .line 1987
    .line 1988
    :cond_45
    if-eqz v4, :cond_47

    .line 1989
    .line 1990
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1991
    .line 1992
    .line 1993
    move-result v0

    .line 1994
    if-eqz v0, :cond_46

    .line 1995
    .line 1996
    const/4 v1, 0x1

    .line 1997
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1998
    .line 1999
    const/4 v1, 0x0

    .line 2000
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2001
    .line 2002
    goto/16 :goto_28

    .line 2003
    .line 2004
    :cond_46
    const/4 v1, 0x0

    .line 2005
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2006
    .line 2007
    goto/16 :goto_28

    .line 2008
    .line 2009
    :cond_47
    const/4 v1, 0x0

    .line 2010
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 2011
    .line 2012
    if-eqz v0, :cond_48

    .line 2013
    .line 2014
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 2015
    .line 2016
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2017
    .line 2018
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->releaseAltTabKeyConsumer()V

    .line 2019
    .line 2020
    .line 2021
    :cond_48
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 2022
    .line 2023
    if-eqz v0, :cond_49

    .line 2024
    .line 2025
    and-int v0, v28, v0

    .line 2026
    .line 2027
    if-nez v0, :cond_49

    .line 2028
    .line 2029
    iput v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 2030
    .line 2031
    const/4 v2, 0x1

    .line 2032
    invoke-virtual {v7, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 2033
    .line 2034
    .line 2035
    move v14, v1

    .line 2036
    goto/16 :goto_16

    .line 2037
    .line 2038
    :cond_49
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2039
    .line 2040
    if-eqz v0, :cond_61

    .line 2041
    .line 2042
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 2043
    .line 2044
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 2045
    .line 2046
    .line 2047
    move-result v1

    .line 2048
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2049
    .line 2050
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2051
    .line 2052
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    .line 2053
    .line 2054
    .line 2055
    const/4 v1, 0x0

    .line 2056
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2057
    .line 2058
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_CAPS_LOCK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2059
    .line 2060
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2061
    .line 2062
    .line 2063
    goto/16 :goto_17

    .line 2064
    .line 2065
    :sswitch_19
    const/4 v1, 0x2

    .line 2066
    const-wide/16 v9, 0x0

    .line 2067
    .line 2068
    if-eqz v19, :cond_61

    .line 2069
    .line 2070
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2071
    .line 2072
    .line 2073
    move-result v2

    .line 2074
    if-eqz v2, :cond_61

    .line 2075
    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2077
    .line 2078
    .line 2079
    move-result v2

    .line 2080
    if-nez v2, :cond_4a

    .line 2081
    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 2083
    .line 2084
    .line 2085
    move-result v2

    .line 2086
    if-eqz v2, :cond_61

    .line 2087
    .line 2088
    :cond_4a
    move/from16 v2, v31

    .line 2089
    .line 2090
    const/4 v3, 0x1

    .line 2091
    if-ne v2, v3, :cond_4c

    .line 2092
    .line 2093
    :cond_4b
    const/4 v1, 0x1

    .line 2094
    goto :goto_23

    .line 2095
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 2096
    .line 2097
    .line 2098
    move-result v3

    .line 2099
    if-eqz v3, :cond_4b

    .line 2100
    .line 2101
    :goto_23
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2102
    .line 2103
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2104
    .line 2105
    if-ne v2, v0, :cond_4d

    .line 2106
    .line 2107
    const/4 v6, 0x0

    .line 2108
    goto :goto_24

    .line 2109
    :cond_4d
    move v6, v2

    .line 2110
    :goto_24
    invoke-virtual {v3, v1, v6}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 2111
    .line 2112
    .line 2113
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TAKE_SCREENSHOT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2114
    .line 2115
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2116
    .line 2117
    .line 2118
    goto/16 :goto_17

    .line 2119
    .line 2120
    :sswitch_1a
    const-wide/16 v9, 0x0

    .line 2121
    .line 2122
    if-eqz v19, :cond_61

    .line 2123
    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2125
    .line 2126
    .line 2127
    move-result v0

    .line 2128
    if-eqz v0, :cond_61

    .line 2129
    .line 2130
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v0

    .line 2134
    if-eqz v0, :cond_4e

    .line 2135
    .line 2136
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2137
    .line 2138
    .line 2139
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->OPEN_NOTES:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2140
    .line 2141
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2142
    .line 2143
    .line 2144
    goto/16 :goto_17

    .line 2145
    .line 2146
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    .line 2147
    .line 2148
    .line 2149
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_NOTIFICATION_PANEL:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2150
    .line 2151
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2152
    .line 2153
    .line 2154
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2155
    .line 2156
    if-eqz v0, :cond_28

    .line 2157
    .line 2158
    if-nez v13, :cond_28

    .line 2159
    .line 2160
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2161
    .line 2162
    const-string v1, "PKBD0063"

    .line 2163
    .line 2164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2165
    .line 2166
    .line 2167
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2168
    .line 2169
    .line 2170
    goto/16 :goto_17

    .line 2171
    .line 2172
    :sswitch_1b
    const-wide/16 v9, 0x0

    .line 2173
    .line 2174
    if-eqz v19, :cond_61

    .line 2175
    .line 2176
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2177
    .line 2178
    .line 2179
    move-result v0

    .line 2180
    if-eqz v0, :cond_61

    .line 2181
    .line 2182
    const/4 v0, 0x0

    .line 2183
    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 2184
    .line 2185
    .line 2186
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LOCK_SCREEN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2187
    .line 2188
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2189
    .line 2190
    .line 2191
    goto/16 :goto_17

    .line 2192
    .line 2193
    :sswitch_1c
    const-wide/16 v9, 0x0

    .line 2194
    .line 2195
    if-eqz v19, :cond_61

    .line 2196
    .line 2197
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2198
    .line 2199
    .line 2200
    move-result v0

    .line 2201
    if-eqz v0, :cond_61

    .line 2202
    .line 2203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 2204
    .line 2205
    .line 2206
    move-result v0

    .line 2207
    if-eqz v0, :cond_61

    .line 2208
    .line 2209
    if-nez v30, :cond_61

    .line 2210
    .line 2211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    .line 2212
    .line 2213
    .line 2214
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_SYSTEM_SETTINGS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2215
    .line 2216
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2217
    .line 2218
    .line 2219
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2220
    .line 2221
    if-eqz v0, :cond_28

    .line 2222
    .line 2223
    if-nez v13, :cond_28

    .line 2224
    .line 2225
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2226
    .line 2227
    const-string v1, "PKBD0061"

    .line 2228
    .line 2229
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2230
    .line 2231
    invoke-virtual {v0, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    .line 2237
    .line 2238
    goto/16 :goto_17

    .line 2239
    .line 2240
    :sswitch_1d
    move-object/from16 v2, p1

    .line 2241
    .line 2242
    const-wide/16 v9, 0x0

    .line 2243
    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2245
    .line 2246
    .line 2247
    move-result v0

    .line 2248
    if-eqz v0, :cond_61

    .line 2249
    .line 2250
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2251
    .line 2252
    if-eqz v0, :cond_50

    .line 2253
    .line 2254
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 2255
    .line 2256
    .line 2257
    move-result v0

    .line 2258
    if-eqz v0, :cond_e

    .line 2259
    .line 2260
    if-eqz v4, :cond_e

    .line 2261
    .line 2262
    if-nez v13, :cond_e

    .line 2263
    .line 2264
    const/16 v1, 0x24

    .line 2265
    .line 2266
    if-ne v12, v1, :cond_4f

    .line 2267
    .line 2268
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2269
    .line 2270
    const-string v2, "PKBD0060"

    .line 2271
    .line 2272
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2273
    .line 2274
    invoke-virtual {v1, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v1

    .line 2278
    invoke-static {v2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    .line 2280
    .line 2281
    goto/16 :goto_7

    .line 2282
    .line 2283
    :cond_4f
    const/16 v1, 0x42

    .line 2284
    .line 2285
    if-ne v12, v1, :cond_e

    .line 2286
    .line 2287
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2288
    .line 2289
    const-string v2, "PKBD0054"

    .line 2290
    .line 2291
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2292
    .line 2293
    .line 2294
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2295
    .line 2296
    .line 2297
    goto/16 :goto_7

    .line 2298
    .line 2299
    :cond_50
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 2300
    .line 2301
    .line 2302
    move-result v0

    .line 2303
    goto/16 :goto_7

    .line 2304
    .line 2305
    :sswitch_1e
    const-wide/16 v9, 0x0

    .line 2306
    .line 2307
    if-eqz v19, :cond_61

    .line 2308
    .line 2309
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2310
    .line 2311
    .line 2312
    move-result v0

    .line 2313
    if-eqz v0, :cond_61

    .line 2314
    .line 2315
    const-string v6, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    .line 2316
    .line 2317
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2318
    .line 2319
    .line 2320
    move-result-wide v4

    .line 2321
    const/4 v3, 0x0

    .line 2322
    move-object/from16 v1, p0

    .line 2323
    .line 2324
    move/from16 v2, v27

    .line 2325
    .line 2326
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 2327
    .line 2328
    .line 2329
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_ASSISTANT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2330
    .line 2331
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2332
    .line 2333
    .line 2334
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2335
    .line 2336
    if-eqz v0, :cond_28

    .line 2337
    .line 2338
    if-nez v13, :cond_28

    .line 2339
    .line 2340
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2341
    .line 2342
    const-string v1, "PKBD0056"

    .line 2343
    .line 2344
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2345
    .line 2346
    invoke-virtual {v0, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v0

    .line 2350
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    .line 2352
    .line 2353
    goto/16 :goto_17

    .line 2354
    .line 2355
    :sswitch_1f
    const-wide/16 v9, 0x0

    .line 2356
    .line 2357
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2358
    .line 2359
    if-nez v0, :cond_52

    .line 2360
    .line 2361
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2362
    .line 2363
    if-eqz v0, :cond_51

    .line 2364
    .line 2365
    goto :goto_25

    .line 2366
    :cond_51
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2367
    .line 2368
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 2369
    .line 2370
    if-eqz v0, :cond_61

    .line 2371
    .line 2372
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2373
    .line 2374
    .line 2375
    move-result-object v0

    .line 2376
    if-eqz v0, :cond_61

    .line 2377
    .line 2378
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    .line 2379
    .line 2380
    .line 2381
    move-result v0

    .line 2382
    if-nez v0, :cond_61

    .line 2383
    .line 2384
    goto/16 :goto_17

    .line 2385
    .line 2386
    :cond_52
    :goto_25
    const-string v1, "WindowManager"

    .line 2387
    .line 2388
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2389
    .line 2390
    if-nez v0, :cond_53

    .line 2391
    .line 2392
    const/16 v26, 0x0

    .line 2393
    .line 2394
    goto :goto_26

    .line 2395
    :cond_53
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2396
    .line 2397
    const-class v2, Landroid/hardware/hdmi/HdmiControlManager;

    .line 2398
    .line 2399
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v0

    .line 2403
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 2404
    .line 2405
    move-object/from16 v26, v0

    .line 2406
    .line 2407
    :goto_26
    if-eqz v26, :cond_55

    .line 2408
    .line 2409
    invoke-virtual/range {v26 .. v26}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    .line 2410
    .line 2411
    .line 2412
    move-result v0

    .line 2413
    if-nez v0, :cond_55

    .line 2414
    .line 2415
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    .line 2416
    .line 2417
    if-eqz v0, :cond_55

    .line 2418
    .line 2419
    invoke-virtual/range {v26 .. v26}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v0

    .line 2423
    if-eqz v0, :cond_55

    .line 2424
    .line 2425
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2426
    .line 2427
    .line 2428
    move-result v1

    .line 2429
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2430
    .line 2431
    .line 2432
    move-result v2

    .line 2433
    if-nez v2, :cond_54

    .line 2434
    .line 2435
    const/4 v2, 0x1

    .line 2436
    goto :goto_27

    .line 2437
    :cond_54
    const/4 v2, 0x0

    .line 2438
    :goto_27
    invoke-virtual {v0, v1, v2}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    .line 2439
    .line 2440
    .line 2441
    goto/16 :goto_17

    .line 2442
    .line 2443
    :cond_55
    :try_start_a
    const-string v0, "audio"

    .line 2444
    .line 2445
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2446
    .line 2447
    .line 2448
    move-result-object v0

    .line 2449
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 2450
    .line 2451
    .line 2452
    move-result-object v0

    .line 2453
    if-nez v0, :cond_56

    .line 2454
    .line 2455
    const-string v2, "WindowManager"

    .line 2456
    .line 2457
    const-string v3, "Unable to find IAudioService interface."

    .line 2458
    .line 2459
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    .line 2461
    .line 2462
    :cond_56
    iget-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2463
    .line 2464
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2465
    .line 2466
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 2467
    .line 2468
    .line 2469
    move-result-object v3

    .line 2470
    invoke-interface {v0, v8, v2, v3, v1}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 2471
    .line 2472
    .line 2473
    goto/16 :goto_17

    .line 2474
    .line 2475
    :catch_7
    move-exception v0

    .line 2476
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2477
    .line 2478
    const-string v3, "Error dispatching volume key in handleVolumeKey for event:"

    .line 2479
    .line 2480
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2481
    .line 2482
    .line 2483
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2484
    .line 2485
    .line 2486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2487
    .line 2488
    .line 2489
    move-result-object v2

    .line 2490
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2491
    .line 2492
    .line 2493
    goto/16 :goto_17

    .line 2494
    .line 2495
    :sswitch_20
    const-wide/16 v9, 0x0

    .line 2496
    .line 2497
    if-eqz v19, :cond_61

    .line 2498
    .line 2499
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2500
    .line 2501
    .line 2502
    move-result v0

    .line 2503
    if-eqz v0, :cond_61

    .line 2504
    .line 2505
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2506
    .line 2507
    .line 2508
    move-result v0

    .line 2509
    if-eqz v0, :cond_58

    .line 2510
    .line 2511
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2512
    .line 2513
    .line 2514
    move-result v0

    .line 2515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2516
    .line 2517
    .line 2518
    move-result-object v1

    .line 2519
    if-eqz v1, :cond_57

    .line 2520
    .line 2521
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2522
    .line 2523
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2524
    .line 2525
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2526
    .line 2527
    if-eqz v1, :cond_57

    .line 2528
    .line 2529
    const/4 v2, 0x0

    .line 2530
    :try_start_b
    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 2531
    .line 2532
    .line 2533
    :catch_8
    :cond_57
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SPLIT_SCREEN_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2534
    .line 2535
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2536
    .line 2537
    .line 2538
    goto/16 :goto_17

    .line 2539
    .line 2540
    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 2541
    .line 2542
    .line 2543
    move-result v0

    .line 2544
    if-eqz v0, :cond_61

    .line 2545
    .line 2546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2547
    .line 2548
    .line 2549
    move-result-object v0

    .line 2550
    if-eqz v0, :cond_59

    .line 2551
    .line 2552
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2553
    .line 2554
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2555
    .line 2556
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2557
    .line 2558
    if-eqz v0, :cond_59

    .line 2559
    .line 2560
    const/4 v1, 0x0

    .line 2561
    :try_start_c
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->setSplitscreenFocus(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    .line 2562
    .line 2563
    .line 2564
    :catch_9
    :cond_59
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->CHANGE_SPLITSCREEN_FOCUS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2565
    .line 2566
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2567
    .line 2568
    .line 2569
    goto/16 :goto_17

    .line 2570
    .line 2571
    :sswitch_21
    const-wide/16 v9, 0x0

    .line 2572
    .line 2573
    if-eqz v19, :cond_61

    .line 2574
    .line 2575
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2576
    .line 2577
    .line 2578
    move-result v0

    .line 2579
    if-eqz v0, :cond_61

    .line 2580
    .line 2581
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2582
    .line 2583
    .line 2584
    move-result v0

    .line 2585
    if-eqz v0, :cond_5b

    .line 2586
    .line 2587
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2588
    .line 2589
    .line 2590
    move-result v0

    .line 2591
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2592
    .line 2593
    .line 2594
    move-result-object v1

    .line 2595
    if-eqz v1, :cond_5a

    .line 2596
    .line 2597
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2598
    .line 2599
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2600
    .line 2601
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2602
    .line 2603
    if-eqz v1, :cond_5a

    .line 2604
    .line 2605
    const/4 v2, 0x1

    .line 2606
    :try_start_d
    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    .line 2607
    .line 2608
    .line 2609
    :catch_a
    :cond_5a
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SPLIT_SCREEN_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2610
    .line 2611
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2612
    .line 2613
    .line 2614
    goto/16 :goto_17

    .line 2615
    .line 2616
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 2617
    .line 2618
    .line 2619
    move-result v0

    .line 2620
    if-eqz v0, :cond_5d

    .line 2621
    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v0

    .line 2626
    if-eqz v0, :cond_5c

    .line 2627
    .line 2628
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2629
    .line 2630
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2631
    .line 2632
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2633
    .line 2634
    if-eqz v0, :cond_5c

    .line 2635
    .line 2636
    const/4 v1, 0x1

    .line 2637
    :try_start_e
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->setSplitscreenFocus(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    .line 2638
    .line 2639
    .line 2640
    :catch_b
    :cond_5c
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->CHANGE_SPLITSCREEN_FOCUS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2641
    .line 2642
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2643
    .line 2644
    .line 2645
    goto/16 :goto_17

    .line 2646
    .line 2647
    :cond_5d
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BACK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2648
    .line 2649
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2650
    .line 2651
    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 2653
    .line 2654
    .line 2655
    move-result-wide v0

    .line 2656
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    .line 2657
    .line 2658
    .line 2659
    goto/16 :goto_17

    .line 2660
    .line 2661
    :sswitch_22
    const-wide/16 v9, 0x0

    .line 2662
    .line 2663
    if-eqz v19, :cond_61

    .line 2664
    .line 2665
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2666
    .line 2667
    .line 2668
    move-result v0

    .line 2669
    if-eqz v0, :cond_61

    .line 2670
    .line 2671
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2672
    .line 2673
    .line 2674
    move-result v0

    .line 2675
    if-eqz v0, :cond_61

    .line 2676
    .line 2677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v0

    .line 2681
    if-eqz v0, :cond_61

    .line 2682
    .line 2683
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2684
    .line 2685
    .line 2686
    move-result v1

    .line 2687
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2688
    .line 2689
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2690
    .line 2691
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2692
    .line 2693
    if-eqz v0, :cond_5e

    .line 2694
    .line 2695
    :try_start_f
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToDesktop(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c

    .line 2696
    .line 2697
    .line 2698
    :catch_c
    :cond_5e
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->DESKTOP_MODE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2699
    .line 2700
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2701
    .line 2702
    .line 2703
    goto/16 :goto_17

    .line 2704
    .line 2705
    :sswitch_23
    const-wide/16 v9, 0x0

    .line 2706
    .line 2707
    :cond_5f
    if-eqz v19, :cond_61

    .line 2708
    .line 2709
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2710
    .line 2711
    .line 2712
    move-result v0

    .line 2713
    if-eqz v0, :cond_61

    .line 2714
    .line 2715
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2716
    .line 2717
    .line 2718
    move-result v0

    .line 2719
    if-eqz v0, :cond_61

    .line 2720
    .line 2721
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v0

    .line 2725
    if-eqz v0, :cond_61

    .line 2726
    .line 2727
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2728
    .line 2729
    .line 2730
    move-result v1

    .line 2731
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2732
    .line 2733
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2734
    .line 2735
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2736
    .line 2737
    if-eqz v0, :cond_60

    .line 2738
    .line 2739
    :try_start_10
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToFullscreen(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_d

    .line 2740
    .line 2741
    .line 2742
    :catch_d
    :cond_60
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->MULTI_WINDOW_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2743
    .line 2744
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2745
    .line 2746
    .line 2747
    goto/16 :goto_17

    .line 2748
    .line 2749
    :sswitch_24
    move-object/from16 v2, p1

    .line 2750
    .line 2751
    const-wide/16 v9, 0x0

    .line 2752
    .line 2753
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2754
    .line 2755
    invoke-virtual {v0, v12}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 2756
    .line 2757
    .line 2758
    move-result v0

    .line 2759
    if-eqz v0, :cond_76

    .line 2760
    .line 2761
    :cond_61
    :goto_28
    const/16 v0, 0x1a

    .line 2762
    .line 2763
    if-eq v12, v0, :cond_62

    .line 2764
    .line 2765
    const/16 v0, 0xdf

    .line 2766
    .line 2767
    if-eq v12, v0, :cond_62

    .line 2768
    .line 2769
    const/16 v0, 0xe0

    .line 2770
    .line 2771
    if-eq v12, v0, :cond_62

    .line 2772
    .line 2773
    const/4 v0, 0x1

    .line 2774
    goto :goto_29

    .line 2775
    :cond_62
    const/4 v0, 0x0

    .line 2776
    :goto_29
    if-eqz v0, :cond_65

    .line 2777
    .line 2778
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2779
    .line 2780
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2781
    .line 2782
    iget-object v2, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 2783
    .line 2784
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 2785
    .line 2786
    .line 2787
    move-result v2

    .line 2788
    if-lez v2, :cond_64

    .line 2789
    .line 2790
    iget-object v2, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 2791
    .line 2792
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2793
    .line 2794
    .line 2795
    move-result-object v2

    .line 2796
    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 2797
    .line 2798
    if-eqz v2, :cond_64

    .line 2799
    .line 2800
    iget-object v2, v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 2801
    .line 2802
    iget-boolean v3, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 2803
    .line 2804
    new-instance v4, Landroid/view/KeyEvent;

    .line 2805
    .line 2806
    invoke-direct {v4, v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2807
    .line 2808
    .line 2809
    new-instance v5, Landroid/content/Intent;

    .line 2810
    .line 2811
    const-string v6, "android.intent.action.GLOBAL_BUTTON"

    .line 2812
    .line 2813
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2814
    .line 2815
    .line 2816
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2817
    .line 2818
    .line 2819
    move-result-object v2

    .line 2820
    const/high16 v5, 0x10000000

    .line 2821
    .line 2822
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v2

    .line 2826
    const-string v5, "android.intent.extra.KEY_EVENT"

    .line 2827
    .line 2828
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2829
    .line 2830
    .line 2831
    move-result-object v2

    .line 2832
    const-string v4, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    .line 2833
    .line 2834
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2835
    .line 2836
    .line 2837
    move-result-object v2

    .line 2838
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2839
    .line 2840
    const/4 v4, 0x0

    .line 2841
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2842
    .line 2843
    .line 2844
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2845
    .line 2846
    .line 2847
    move-result v1

    .line 2848
    const/4 v2, 0x1

    .line 2849
    const/4 v14, 0x0

    .line 2850
    if-ne v1, v2, :cond_63

    .line 2851
    .line 2852
    iput-boolean v14, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 2853
    .line 2854
    :cond_63
    const/4 v0, 0x1

    .line 2855
    goto :goto_2a

    .line 2856
    :cond_64
    const/4 v4, 0x0

    .line 2857
    const/4 v14, 0x0

    .line 2858
    move v0, v14

    .line 2859
    :goto_2a
    if-eqz v0, :cond_66

    .line 2860
    .line 2861
    :goto_2b
    goto/16 :goto_16

    .line 2862
    .line 2863
    :cond_65
    const/4 v4, 0x0

    .line 2864
    const/4 v14, 0x0

    .line 2865
    :cond_66
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2866
    .line 2867
    if-eqz v0, :cond_71

    .line 2868
    .line 2869
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2870
    .line 2871
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2872
    .line 2873
    .line 2874
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2875
    .line 2876
    .line 2877
    move-result v0

    .line 2878
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2879
    .line 2880
    .line 2881
    move-result-object v1

    .line 2882
    if-nez v1, :cond_67

    .line 2883
    .line 2884
    goto :goto_31

    .line 2885
    :cond_67
    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    .line 2886
    .line 2887
    .line 2888
    move-result v1

    .line 2889
    if-eqz v1, :cond_68

    .line 2890
    .line 2891
    goto :goto_31

    .line 2892
    :cond_68
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2893
    .line 2894
    .line 2895
    move-result v1

    .line 2896
    if-nez v1, :cond_69

    .line 2897
    .line 2898
    const/4 v1, 0x1

    .line 2899
    :goto_2c
    const/4 v2, 0x4

    .line 2900
    goto :goto_2d

    .line 2901
    :cond_69
    move v1, v14

    .line 2902
    goto :goto_2c

    .line 2903
    :goto_2d
    if-ne v0, v2, :cond_6a

    .line 2904
    .line 2905
    goto :goto_31

    .line 2906
    :cond_6a
    const/high16 v2, 0x1000000

    .line 2907
    .line 2908
    and-int v2, p3, v2

    .line 2909
    .line 2910
    if-eqz v2, :cond_6b

    .line 2911
    .line 2912
    const/4 v2, 0x1

    .line 2913
    :goto_2e
    const/16 v3, 0x18

    .line 2914
    .line 2915
    goto :goto_2f

    .line 2916
    :cond_6b
    move v2, v14

    .line 2917
    goto :goto_2e

    .line 2918
    :goto_2f
    if-eq v0, v3, :cond_6c

    .line 2919
    .line 2920
    const/16 v5, 0x19

    .line 2921
    .line 2922
    if-ne v0, v5, :cond_71

    .line 2923
    .line 2924
    :cond_6c
    if-eqz v2, :cond_6d

    .line 2925
    .line 2926
    goto :goto_31

    .line 2927
    :cond_6d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 2928
    .line 2929
    .line 2930
    move-result v2

    .line 2931
    if-eqz v1, :cond_6f

    .line 2932
    .line 2933
    if-eqz v2, :cond_6f

    .line 2934
    .line 2935
    if-ne v0, v3, :cond_6e

    .line 2936
    .line 2937
    const-string v0, "HWB1013"

    .line 2938
    .line 2939
    goto :goto_30

    .line 2940
    :cond_6e
    const-string v0, "HWB1015"

    .line 2941
    .line 2942
    goto :goto_30

    .line 2943
    :cond_6f
    move-object v0, v4

    .line 2944
    :goto_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2945
    .line 2946
    .line 2947
    move-result v1

    .line 2948
    if-eqz v1, :cond_70

    .line 2949
    .line 2950
    goto :goto_31

    .line 2951
    :cond_70
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2952
    .line 2953
    .line 2954
    :cond_71
    :goto_31
    const/high16 v0, 0x10000

    .line 2955
    .line 2956
    and-int v0, v28, v0

    .line 2957
    .line 2958
    if-eqz v0, :cond_75

    .line 2959
    .line 2960
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2961
    .line 2962
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2963
    .line 2964
    .line 2965
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 2966
    .line 2967
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 2968
    .line 2969
    .line 2970
    move-result v0

    .line 2971
    if-eqz v0, :cond_72

    .line 2972
    .line 2973
    :goto_32
    const/4 v0, 0x1

    .line 2974
    goto :goto_34

    .line 2975
    :cond_72
    const/16 v0, 0x37

    .line 2976
    .line 2977
    if-eq v12, v0, :cond_73

    .line 2978
    .line 2979
    const/16 v0, 0x38

    .line 2980
    .line 2981
    if-eq v12, v0, :cond_73

    .line 2982
    .line 2983
    goto :goto_33

    .line 2984
    :cond_73
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_TOOLBAR_SHORTCUT:Z

    .line 2985
    .line 2986
    if-eqz v0, :cond_74

    .line 2987
    .line 2988
    goto :goto_32

    .line 2989
    :cond_74
    :goto_33
    move v0, v14

    .line 2990
    :goto_34
    if-nez v0, :cond_75

    .line 2991
    .line 2992
    goto/16 :goto_2b

    .line 2993
    .line 2994
    :cond_75
    move v0, v14

    .line 2995
    goto :goto_35

    .line 2996
    :cond_76
    const/4 v14, 0x0

    .line 2997
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 2998
    .line 2999
    .line 3000
    move-result v0

    .line 3001
    :goto_35
    if-eqz v0, :cond_77

    .line 3002
    .line 3003
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 3004
    .line 3005
    .line 3006
    move-result v0

    .line 3007
    if-nez v0, :cond_77

    .line 3008
    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 3010
    .line 3011
    .line 3012
    move-result v0

    .line 3013
    if-nez v0, :cond_77

    .line 3014
    .line 3015
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3016
    .line 3017
    .line 3018
    move-result-object v0

    .line 3019
    move-object/from16 v2, v24

    .line 3020
    .line 3021
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3022
    .line 3023
    .line 3024
    const-wide/16 v3, -0x1

    .line 3025
    .line 3026
    return-wide v3

    .line 3027
    :cond_77
    move-object/from16 v2, v24

    .line 3028
    .line 3029
    const-wide/16 v3, -0x1

    .line 3030
    .line 3031
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3032
    .line 3033
    .line 3034
    move-result-object v0

    .line 3035
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 3036
    .line 3037
    .line 3038
    move-result v0

    .line 3039
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 3040
    .line 3041
    .line 3042
    move-result v1

    .line 3043
    const/4 v5, 0x1

    .line 3044
    if-eq v1, v5, :cond_78

    .line 3045
    .line 3046
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 3047
    .line 3048
    .line 3049
    move-result v1

    .line 3050
    if-eqz v1, :cond_79

    .line 3051
    .line 3052
    :cond_78
    move/from16 v5, v23

    .line 3053
    .line 3054
    goto :goto_36

    .line 3055
    :cond_79
    const/16 v1, 0x4f

    .line 3056
    .line 3057
    move/from16 v5, v23

    .line 3058
    .line 3059
    if-eq v5, v1, :cond_7a

    .line 3060
    .line 3061
    const/16 v1, 0x19

    .line 3062
    .line 3063
    if-eq v5, v1, :cond_7a

    .line 3064
    .line 3065
    const/16 v1, 0x18

    .line 3066
    .line 3067
    if-ne v5, v1, :cond_7b

    .line 3068
    .line 3069
    :cond_7a
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 3070
    .line 3071
    invoke-virtual {v1, v5}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 3072
    .line 3073
    .line 3074
    move-result v1

    .line 3075
    if-eqz v1, :cond_7b

    .line 3076
    .line 3077
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3078
    .line 3079
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3080
    .line 3081
    const/4 v6, 0x4

    .line 3082
    invoke-virtual {v1, v6, v5}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 3083
    .line 3084
    .line 3085
    move-result v1

    .line 3086
    if-nez v1, :cond_7b

    .line 3087
    .line 3088
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 3089
    .line 3090
    .line 3091
    move-result v1

    .line 3092
    if-eqz v1, :cond_7b

    .line 3093
    .line 3094
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 3095
    .line 3096
    .line 3097
    move-result v1

    .line 3098
    const/high16 v6, 0x10000000

    .line 3099
    .line 3100
    and-int/2addr v1, v6

    .line 3101
    if-nez v1, :cond_7b

    .line 3102
    .line 3103
    const-string v0, "WindowManager"

    .line 3104
    .line 3105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3106
    .line 3107
    const-string v6, "KeyCustomization: remove from consumedKeys, keyCode="

    .line 3108
    .line 3109
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3110
    .line 3111
    .line 3112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3113
    .line 3114
    .line 3115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3116
    .line 3117
    .line 3118
    move-result-object v1

    .line 3119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    .line 3121
    .line 3122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3123
    .line 3124
    .line 3125
    move-result-object v0

    .line 3126
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3127
    .line 3128
    .line 3129
    goto :goto_37

    .line 3130
    :goto_36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3131
    .line 3132
    .line 3133
    move-result-object v1

    .line 3134
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3135
    .line 3136
    .line 3137
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 3138
    .line 3139
    .line 3140
    move-result v1

    .line 3141
    if-eqz v1, :cond_7b

    .line 3142
    .line 3143
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 3144
    .line 3145
    move/from16 v2, v25

    .line 3146
    .line 3147
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3148
    .line 3149
    .line 3150
    :cond_7b
    move v14, v0

    .line 3151
    :goto_37
    if-eqz v14, :cond_7c

    .line 3152
    .line 3153
    move-wide v12, v3

    .line 3154
    goto :goto_38

    .line 3155
    :cond_7c
    move-wide v12, v9

    .line 3156
    :goto_38
    return-wide v12

    .line 3157
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_24
        0x13 -> :sswitch_23
        0x14 -> :sswitch_22
        0x15 -> :sswitch_21
        0x16 -> :sswitch_20
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1d -> :sswitch_1e
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x2f -> :sswitch_19
        0x39 -> :sswitch_18
        0x3a -> :sswitch_18
        0x3d -> :sswitch_17
        0x42 -> :sswitch_1d
        0x43 -> :sswitch_16
        0x4c -> :sswitch_15
        0x53 -> :sswitch_14
        0x54 -> :sswitch_13
        0x6f -> :sswitch_12
        0x71 -> :sswitch_11
        0x72 -> :sswitch_11
        0x73 -> :sswitch_10
        0x75 -> :sswitch_f
        0x76 -> :sswitch_f
        0xa4 -> :sswitch_1f
        0xb0 -> :sswitch_e
        0xbb -> :sswitch_d
        0xcc -> :sswitch_c
        0xdb -> :sswitch_b
        0xdc -> :sswitch_a
        0xdd -> :sswitch_a
        0xe7 -> :sswitch_9
        0x108 -> :sswitch_8
        0x11c -> :sswitch_7
        0x121 -> :sswitch_6
        0x122 -> :sswitch_6
        0x123 -> :sswitch_6
        0x124 -> :sswitch_6
        0x125 -> :sswitch_6
        0x126 -> :sswitch_6
        0x127 -> :sswitch_6
        0x128 -> :sswitch_6
        0x129 -> :sswitch_6
        0x12a -> :sswitch_6
        0x12b -> :sswitch_6
        0x12c -> :sswitch_6
        0x12d -> :sswitch_6
        0x12e -> :sswitch_6
        0x12f -> :sswitch_6
        0x130 -> :sswitch_6
        0x131 -> :sswitch_5
        0x132 -> :sswitch_4
        0x133 -> :sswitch_3
        0x134 -> :sswitch_2
        0x135 -> :sswitch_2
        0x136 -> :sswitch_2
        0x137 -> :sswitch_2
        0x138 -> :sswitch_1
        0x13e -> :sswitch_0
    .end sparse-switch
.end method

.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    .line 10
    .line 11
    move-result v6

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move v9, v7

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v9, v8

    .line 23
    :goto_0
    and-int/lit8 v0, v3, 0x1

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v8

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    move v0, v7

    .line 37
    :goto_2
    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    .line 38
    .line 39
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 40
    .line 41
    const/16 v11, 0x1a

    .line 42
    .line 43
    const/16 v12, 0xe0

    .line 44
    .line 45
    const/16 v13, 0xdb

    .line 46
    .line 47
    const/16 v14, 0xb1

    .line 48
    .line 49
    if-nez v10, :cond_a

    .line 50
    .line 51
    if-eqz v9, :cond_4

    .line 52
    .line 53
    if-eq v6, v11, :cond_3

    .line 54
    .line 55
    if-ne v6, v14, :cond_4

    .line 56
    .line 57
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    if-eqz v9, :cond_9

    .line 62
    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    if-ne v6, v12, :cond_9

    .line 66
    .line 67
    :cond_5
    if-eq v6, v4, :cond_7

    .line 68
    .line 69
    if-eq v6, v13, :cond_6

    .line 70
    .line 71
    packed-switch v6, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    packed-switch v6, :pswitch_data_1

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :pswitch_0
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :pswitch_1
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 88
    .line 89
    :goto_3
    if-eqz v7, :cond_9

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 103
    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    :goto_5
    return v8

    .line 116
    :cond_a
    const/high16 v10, 0x20000000

    .line 117
    .line 118
    and-int/2addr v10, v3

    .line 119
    if-eqz v10, :cond_b

    .line 120
    .line 121
    move v15, v7

    .line 122
    goto :goto_6

    .line 123
    :cond_b
    move v15, v8

    .line 124
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    const/high16 v17, 0x1000000

    .line 133
    .line 134
    and-int v17, v3, v17

    .line 135
    .line 136
    if-eqz v17, :cond_c

    .line 137
    .line 138
    move/from16 v17, v7

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_c
    move/from16 v17, v8

    .line 142
    .line 143
    :goto_7
    sget-boolean v18, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 144
    .line 145
    const-string v12, "WindowManager"

    .line 146
    .line 147
    const-string v5, " interactive="

    .line 148
    .line 149
    if-nez v18, :cond_d

    .line 150
    .line 151
    sget-object v19, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 152
    .line 153
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    move-object/from16 v7, v19

    .line 158
    .line 159
    check-cast v7, Landroid/util/ArraySet;

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_10

    .line 166
    .line 167
    :cond_d
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 168
    .line 169
    if-eqz v7, :cond_f

    .line 170
    .line 171
    if-eqz v15, :cond_e

    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_f

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_e
    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_f

    .line 185
    .line 186
    :goto_8
    const/4 v7, 0x1

    .line 187
    goto :goto_9

    .line 188
    :cond_f
    const/4 v7, 0x0

    .line 189
    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v11, "interceptKeyTq keycode="

    .line 192
    .line 193
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v11, " keyguardActive="

    .line 206
    .line 207
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v7, " policyFlags="

    .line 214
    .line 215
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    :cond_10
    const/4 v7, -0x1

    .line 233
    if-nez v15, :cond_18

    .line 234
    .line 235
    if-eqz v17, :cond_11

    .line 236
    .line 237
    if-nez v0, :cond_11

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_11
    invoke-virtual {v1, v14}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(I)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_12

    .line 245
    .line 246
    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 247
    .line 248
    :goto_a
    const/4 v8, 0x1

    .line 249
    goto :goto_e

    .line 250
    :cond_12
    if-eqz v0, :cond_16

    .line 251
    .line 252
    if-eqz v9, :cond_15

    .line 253
    .line 254
    if-eq v6, v4, :cond_14

    .line 255
    .line 256
    if-eq v6, v13, :cond_13

    .line 257
    .line 258
    packed-switch v6, :pswitch_data_2

    .line 259
    .line 260
    .line 261
    packed-switch v6, :pswitch_data_3

    .line 262
    .line 263
    .line 264
    const/4 v8, 0x1

    .line 265
    goto :goto_b

    .line 266
    :pswitch_2
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 267
    .line 268
    goto :goto_b

    .line 269
    :pswitch_3
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_13
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_14
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 276
    .line 277
    :goto_b
    if-nez v8, :cond_16

    .line 278
    .line 279
    :cond_15
    const/4 v0, 0x0

    .line 280
    :cond_16
    if-eqz v0, :cond_17

    .line 281
    .line 282
    if-eqz v9, :cond_17

    .line 283
    .line 284
    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 285
    .line 286
    :cond_17
    const/4 v8, 0x0

    .line 287
    goto :goto_e

    .line 288
    :cond_18
    :goto_c
    if-eqz v15, :cond_1a

    .line 289
    .line 290
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 291
    .line 292
    if-ne v6, v0, :cond_19

    .line 293
    .line 294
    if-nez v9, :cond_19

    .line 295
    .line 296
    const/4 v0, 0x0

    .line 297
    goto :goto_d

    .line 298
    :cond_19
    const/4 v0, 0x1

    .line 299
    :goto_d
    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 300
    .line 301
    move v8, v0

    .line 302
    const/4 v0, 0x0

    .line 303
    goto :goto_e

    .line 304
    :cond_1a
    const/4 v0, 0x0

    .line 305
    goto :goto_a

    .line 306
    :goto_e
    iget-object v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 307
    .line 308
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 316
    .line 317
    .line 318
    move-result v20

    .line 319
    if-nez v20, :cond_1b

    .line 320
    .line 321
    const/4 v4, 0x1

    .line 322
    goto :goto_f

    .line 323
    :cond_1b
    const/4 v4, 0x0

    .line 324
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    move/from16 v21, v0

    .line 329
    .line 330
    const/16 v0, 0xbb

    .line 331
    .line 332
    move/from16 v22, v8

    .line 333
    .line 334
    const-string v8, "PhoneWindowManagerExt"

    .line 335
    .line 336
    const/16 v23, 0x8

    .line 337
    .line 338
    move/from16 v24, v14

    .line 339
    .line 340
    const/4 v14, 0x3

    .line 341
    if-eq v13, v14, :cond_1f

    .line 342
    .line 343
    const/16 v14, 0x1a

    .line 344
    .line 345
    if-eq v13, v14, :cond_1e

    .line 346
    .line 347
    if-eq v13, v0, :cond_1c

    .line 348
    .line 349
    goto :goto_12

    .line 350
    :cond_1c
    iget v4, v11, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 351
    .line 352
    const/4 v7, 0x1

    .line 353
    if-ne v4, v7, :cond_22

    .line 354
    .line 355
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    iget-object v7, v11, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 360
    .line 361
    const/4 v11, 0x0

    .line 362
    invoke-virtual {v7, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    and-int/lit8 v4, v4, 0x8

    .line 367
    .line 368
    if-eqz v4, :cond_1d

    .line 369
    .line 370
    goto :goto_12

    .line 371
    :cond_1d
    const-string v4, "Recent Key was blocked by LOCK_TASK_MODE_LOCKED"

    .line 372
    .line 373
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :goto_10
    const/4 v4, 0x2

    .line 377
    goto :goto_13

    .line 378
    :cond_1e
    move v13, v14

    .line 379
    invoke-virtual {v11, v13, v7, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    const/4 v7, -0x1

    .line 384
    if-eq v4, v7, :cond_22

    .line 385
    .line 386
    goto :goto_13

    .line 387
    :cond_1f
    iget v7, v11, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 388
    .line 389
    const/4 v13, 0x1

    .line 390
    if-ne v7, v13, :cond_21

    .line 391
    .line 392
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    iget-object v13, v11, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 397
    .line 398
    iget-object v13, v13, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 399
    .line 400
    iget-boolean v13, v13, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 401
    .line 402
    if-nez v13, :cond_21

    .line 403
    .line 404
    iget-object v13, v11, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 405
    .line 406
    const/4 v14, 0x0

    .line 407
    invoke-virtual {v13, v7, v14}, Landroid/util/SparseIntArray;->get(II)I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    const/4 v13, 0x4

    .line 412
    and-int/2addr v7, v13

    .line 413
    if-eqz v7, :cond_20

    .line 414
    .line 415
    goto :goto_11

    .line 416
    :cond_20
    const-string v4, "Home Key was blocked by LOCK_TASK_MODE_LOCKED"

    .line 417
    .line 418
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    goto :goto_10

    .line 422
    :cond_21
    :goto_11
    if-eqz v15, :cond_22

    .line 423
    .line 424
    if-eqz v4, :cond_22

    .line 425
    .line 426
    iget-object v4, v11, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 427
    .line 428
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 429
    .line 430
    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    if-eqz v4, :cond_22

    .line 435
    .line 436
    const/16 v4, 0x12

    .line 437
    .line 438
    goto :goto_13

    .line 439
    :cond_22
    :goto_12
    const/4 v4, 0x1

    .line 440
    :goto_13
    and-int/lit8 v7, v4, 0x20

    .line 441
    .line 442
    if-eqz v7, :cond_23

    .line 443
    .line 444
    const/4 v7, 0x2

    .line 445
    const/16 v21, 0x0

    .line 446
    .line 447
    goto :goto_14

    .line 448
    :cond_23
    and-int/lit8 v7, v4, 0x10

    .line 449
    .line 450
    if-eqz v7, :cond_24

    .line 451
    .line 452
    const/4 v7, 0x2

    .line 453
    const/16 v21, 0x1

    .line 454
    .line 455
    goto :goto_14

    .line 456
    :cond_24
    const/4 v7, 0x2

    .line 457
    :goto_14
    and-int/2addr v4, v7

    .line 458
    const-string v7, "KEY("

    .line 459
    .line 460
    const/4 v11, 0x6

    .line 461
    if-eqz v4, :cond_27

    .line 462
    .line 463
    if-eqz v21, :cond_26

    .line 464
    .line 465
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 466
    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 468
    .line 469
    .line 470
    move-result-wide v1

    .line 471
    const-string v3, ")"

    .line 472
    .line 473
    invoke-static {v6, v7, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-boolean v4, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 478
    .line 479
    invoke-virtual {v0, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    if-nez v4, :cond_25

    .line 484
    .line 485
    goto :goto_15

    .line 486
    :cond_25
    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    :cond_26
    :goto_15
    const-string v0, "interceptKeyTq : return condition of policyExt wakeKey"

    .line 490
    .line 491
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    :goto_16
    const/4 v1, 0x0

    .line 495
    return v1

    .line 496
    :cond_27
    const/16 v4, 0x1a

    .line 497
    .line 498
    if-eq v6, v4, :cond_28

    .line 499
    .line 500
    const/16 v4, 0xdf

    .line 501
    .line 502
    if-eq v6, v4, :cond_28

    .line 503
    .line 504
    const/16 v4, 0xe0

    .line 505
    .line 506
    if-eq v6, v4, :cond_28

    .line 507
    .line 508
    const/4 v4, 0x1

    .line 509
    goto :goto_17

    .line 510
    :cond_28
    const/4 v4, 0x0

    .line 511
    :goto_17
    if-eqz v4, :cond_2d

    .line 512
    .line 513
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 514
    .line 515
    iget-object v4, v4, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 516
    .line 517
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    if-eqz v4, :cond_29

    .line 522
    .line 523
    const/4 v4, 0x1

    .line 524
    goto :goto_18

    .line 525
    :cond_29
    const/4 v4, 0x0

    .line 526
    :goto_18
    if-eqz v4, :cond_2d

    .line 527
    .line 528
    if-nez v15, :cond_2b

    .line 529
    .line 530
    if-eqz v21, :cond_2b

    .line 531
    .line 532
    if-eqz v9, :cond_2b

    .line 533
    .line 534
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 535
    .line 536
    iget-object v0, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 537
    .line 538
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 543
    .line 544
    if-nez v0, :cond_2a

    .line 545
    .line 546
    const/4 v8, 0x0

    .line 547
    goto :goto_19

    .line 548
    :cond_2a
    iget-boolean v8, v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    .line 549
    .line 550
    :goto_19
    if-eqz v8, :cond_2b

    .line 551
    .line 552
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 553
    .line 554
    const/4 v3, 0x1

    .line 555
    iput-boolean v3, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 556
    .line 557
    const/4 v3, -0x1

    .line 558
    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 559
    .line 560
    const/4 v7, 0x1

    .line 561
    goto :goto_1a

    .line 562
    :cond_2b
    move/from16 v7, v22

    .line 563
    .line 564
    :goto_1a
    if-eqz v21, :cond_2c

    .line 565
    .line 566
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 567
    .line 568
    .line 569
    :cond_2c
    return v7

    .line 570
    :cond_2d
    iget-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 571
    .line 572
    if-nez v4, :cond_2e

    .line 573
    .line 574
    const/4 v4, 0x0

    .line 575
    :goto_1b
    const/16 v14, 0xb1

    .line 576
    .line 577
    goto :goto_1c

    .line 578
    :cond_2e
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 579
    .line 580
    const-class v14, Landroid/hardware/hdmi/HdmiControlManager;

    .line 581
    .line 582
    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    check-cast v4, Landroid/hardware/hdmi/HdmiControlManager;

    .line 587
    .line 588
    goto :goto_1b

    .line 589
    :goto_1c
    if-ne v6, v14, :cond_30

    .line 590
    .line 591
    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 592
    .line 593
    if-eqz v14, :cond_30

    .line 594
    .line 595
    if-eqz v4, :cond_2f

    .line 596
    .line 597
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    .line 598
    .line 599
    .line 600
    move-result v14

    .line 601
    if-nez v14, :cond_30

    .line 602
    .line 603
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 604
    .line 605
    .line 606
    move-result-wide v25

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 608
    .line 609
    .line 610
    move-result-wide v27

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 612
    .line 613
    .line 614
    move-result v29

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 616
    .line 617
    .line 618
    move-result v31

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 620
    .line 621
    .line 622
    move-result v32

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 624
    .line 625
    .line 626
    move-result v33

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 628
    .line 629
    .line 630
    move-result v34

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 632
    .line 633
    .line 634
    move-result v35

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    .line 636
    .line 637
    .line 638
    move-result v36

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 640
    .line 641
    .line 642
    move-result v37

    .line 643
    const/16 v38, 0x0

    .line 644
    .line 645
    const/16 v30, 0x1a

    .line 646
    .line 647
    invoke-static/range {v25 .. v38}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    return v0

    .line 656
    :cond_30
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 657
    .line 658
    invoke-virtual {v14}, Landroid/view/Display;->getState()I

    .line 659
    .line 660
    .line 661
    move-result v14

    .line 662
    invoke-static {v14}, Landroid/view/Display;->isOnState(I)Z

    .line 663
    .line 664
    .line 665
    move-result v14

    .line 666
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 667
    .line 668
    iget-boolean v13, v13, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 669
    .line 670
    if-eqz v15, :cond_31

    .line 671
    .line 672
    if-eqz v13, :cond_31

    .line 673
    .line 674
    const/4 v13, 0x1

    .line 675
    goto :goto_1d

    .line 676
    :cond_31
    const/4 v13, 0x0

    .line 677
    :goto_1d
    sget-boolean v26, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 678
    .line 679
    const/16 v0, 0x450

    .line 680
    .line 681
    if-eqz v26, :cond_32

    .line 682
    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 684
    .line 685
    .line 686
    move-result v11

    .line 687
    if-ne v11, v0, :cond_32

    .line 688
    .line 689
    move v13, v15

    .line 690
    :cond_32
    const/16 v11, 0x19

    .line 691
    .line 692
    move/from16 v29, v13

    .line 693
    .line 694
    const/16 v13, 0x18

    .line 695
    .line 696
    if-eq v6, v13, :cond_33

    .line 697
    .line 698
    if-ne v6, v11, :cond_34

    .line 699
    .line 700
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 701
    .line 702
    .line 703
    move-result-object v30

    .line 704
    if-eqz v30, :cond_34

    .line 705
    .line 706
    invoke-virtual/range {v30 .. v30}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 707
    .line 708
    .line 709
    move-result v30

    .line 710
    if-eqz v30, :cond_34

    .line 711
    .line 712
    iget-object v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 713
    .line 714
    invoke-virtual {v11}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    .line 715
    .line 716
    .line 717
    move-result v11

    .line 718
    if-eqz v11, :cond_34

    .line 719
    .line 720
    const-string v11, "interceptKeyTq, interactive value has updated by proximity sensor during inCall"

    .line 721
    .line 722
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    const/4 v11, 0x0

    .line 726
    goto :goto_1e

    .line 727
    :cond_34
    move/from16 v11, v29

    .line 728
    .line 729
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 730
    .line 731
    .line 732
    move-result v13

    .line 733
    and-int/lit16 v13, v13, 0x400

    .line 734
    .line 735
    if-nez v13, :cond_35

    .line 736
    .line 737
    invoke-virtual {v1, v2, v11, v14, v3}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZZI)I

    .line 738
    .line 739
    .line 740
    move-result v13

    .line 741
    const/4 v14, 0x2

    .line 742
    and-int/2addr v13, v14

    .line 743
    if-eqz v13, :cond_35

    .line 744
    .line 745
    const-string v0, "interceptKeyTq : return condition of policyExt handleKeyGesture"

    .line 746
    .line 747
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .line 749
    .line 750
    goto/16 :goto_16

    .line 751
    .line 752
    :cond_35
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 753
    .line 754
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    .line 756
    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 758
    .line 759
    .line 760
    move-result v14

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    move-object/from16 v32, v7

    .line 766
    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 768
    .line 769
    .line 770
    move-result v7

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 772
    .line 773
    .line 774
    move-result v33

    .line 775
    if-nez v33, :cond_36

    .line 776
    .line 777
    move-object/from16 v33, v4

    .line 778
    .line 779
    const/4 v4, 0x1

    .line 780
    goto :goto_1f

    .line 781
    :cond_36
    move-object/from16 v33, v4

    .line 782
    .line 783
    const/4 v4, 0x0

    .line 784
    :goto_1f
    if-eqz v10, :cond_37

    .line 785
    .line 786
    const/4 v10, 0x1

    .line 787
    goto :goto_20

    .line 788
    :cond_37
    const/4 v10, 0x0

    .line 789
    :goto_20
    if-eqz v26, :cond_38

    .line 790
    .line 791
    move/from16 v26, v11

    .line 792
    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 794
    .line 795
    .line 796
    move-result v11

    .line 797
    const/16 v2, 0x450

    .line 798
    .line 799
    if-eq v11, v2, :cond_39

    .line 800
    .line 801
    const/4 v2, 0x0

    .line 802
    iput-boolean v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 803
    .line 804
    goto :goto_21

    .line 805
    :cond_38
    move/from16 v26, v11

    .line 806
    .line 807
    :cond_39
    :goto_21
    if-nez v18, :cond_3a

    .line 808
    .line 809
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 810
    .line 811
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 812
    .line 813
    .line 814
    move-result-object v11

    .line 815
    check-cast v2, Landroid/util/ArraySet;

    .line 816
    .line 817
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    if-eqz v2, :cond_3b

    .line 822
    .line 823
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    const-string v11, "interceptKeyTq code="

    .line 826
    .line 827
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    const-string v11, " down="

    .line 834
    .line 835
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    const-string v11, " repeatCount="

    .line 842
    .line 843
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v11, " displayId="

    .line 847
    .line 848
    invoke-static {v0, v7, v11, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 849
    .line 850
    .line 851
    invoke-static {v8, v2, v10}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 852
    .line 853
    .line 854
    :cond_3b
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 855
    .line 856
    iget-object v5, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 857
    .line 858
    if-eqz v2, :cond_3c

    .line 859
    .line 860
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 861
    .line 862
    .line 863
    move-result-object v7

    .line 864
    invoke-virtual {v7}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    .line 865
    .line 866
    .line 867
    move-result v7

    .line 868
    if-eqz v7, :cond_3c

    .line 869
    .line 870
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 871
    .line 872
    .line 873
    move-result-object v7

    .line 874
    iget-object v7, v7, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 875
    .line 876
    const/16 v10, 0x1a

    .line 877
    .line 878
    invoke-virtual {v7, v10}, Landroid/util/SparseLongArray;->get(I)J

    .line 879
    .line 880
    .line 881
    move-result-wide v34

    .line 882
    const-wide/16 v10, 0x0

    .line 883
    .line 884
    cmp-long v7, v34, v10

    .line 885
    .line 886
    if-eqz v7, :cond_3c

    .line 887
    .line 888
    const/4 v7, 0x1

    .line 889
    goto :goto_22

    .line 890
    :cond_3c
    const/4 v7, 0x0

    .line 891
    :goto_22
    const/4 v11, 0x3

    .line 892
    if-eq v14, v11, :cond_58

    .line 893
    .line 894
    const/4 v11, 0x4

    .line 895
    if-eq v14, v11, :cond_57

    .line 896
    .line 897
    const-string/jumbo v11, "systemKeyEventRequested ADD_PASS"

    .line 898
    .line 899
    .line 900
    const/4 v10, 0x6

    .line 901
    if-eq v14, v10, :cond_56

    .line 902
    .line 903
    const/16 v10, 0xbb

    .line 904
    .line 905
    if-eq v14, v10, :cond_54

    .line 906
    .line 907
    const/16 v10, 0x3f7

    .line 908
    .line 909
    if-eq v14, v10, :cond_49

    .line 910
    .line 911
    const/16 v10, 0x419

    .line 912
    .line 913
    if-eq v14, v10, :cond_51

    .line 914
    .line 915
    const/16 v10, 0x450

    .line 916
    .line 917
    if-eq v14, v10, :cond_4e

    .line 918
    .line 919
    const/16 v10, 0x433

    .line 920
    .line 921
    if-eq v14, v10, :cond_4c

    .line 922
    .line 923
    const/16 v10, 0x434

    .line 924
    .line 925
    if-eq v14, v10, :cond_4c

    .line 926
    .line 927
    const/16 v10, 0x436

    .line 928
    .line 929
    if-eq v14, v10, :cond_4a

    .line 930
    .line 931
    const/16 v10, 0x437

    .line 932
    .line 933
    if-eq v14, v10, :cond_49

    .line 934
    .line 935
    const/16 v10, 0x44c

    .line 936
    .line 937
    if-eq v14, v10, :cond_47

    .line 938
    .line 939
    const/16 v10, 0x44d

    .line 940
    .line 941
    if-eq v14, v10, :cond_47

    .line 942
    .line 943
    packed-switch v14, :pswitch_data_4

    .line 944
    .line 945
    .line 946
    :cond_3d
    move v10, v15

    .line 947
    goto/16 :goto_2c

    .line 948
    .line 949
    :pswitch_4
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 950
    .line 951
    if-eqz v7, :cond_3e

    .line 952
    .line 953
    if-nez v4, :cond_3e

    .line 954
    .line 955
    iget-boolean v4, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 956
    .line 957
    if-eqz v4, :cond_3e

    .line 958
    .line 959
    const/4 v4, 0x0

    .line 960
    iput-boolean v4, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 961
    .line 962
    const-string v4, "close_dictation"

    .line 963
    .line 964
    invoke-virtual {v13, v14, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    .line 965
    .line 966
    .line 967
    :cond_3e
    if-eqz v2, :cond_3f

    .line 968
    .line 969
    if-nez v0, :cond_3f

    .line 970
    .line 971
    iget v0, v5, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 972
    .line 973
    const/16 v2, 0x65

    .line 974
    .line 975
    if-ne v0, v2, :cond_3f

    .line 976
    .line 977
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    .line 978
    .line 979
    .line 980
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAvailableDictation()Z

    .line 981
    .line 982
    .line 983
    :cond_3f
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    if-eqz v0, :cond_41

    .line 988
    .line 989
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .line 991
    .line 992
    move v10, v15

    .line 993
    :cond_40
    :goto_23
    const/4 v0, 0x4

    .line 994
    goto/16 :goto_2d

    .line 995
    .line 996
    :cond_41
    const-string/jumbo v0, "systemKeyEventRequested REMOVE_PASS"

    .line 997
    .line 998
    .line 999
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    move v10, v15

    .line 1003
    :cond_42
    :goto_24
    move/from16 v0, v23

    .line 1004
    .line 1005
    goto/16 :goto_2d

    .line 1006
    .line 1007
    :pswitch_5
    if-eqz v2, :cond_43

    .line 1008
    .line 1009
    if-eqz v7, :cond_43

    .line 1010
    .line 1011
    if-eqz v4, :cond_43

    .line 1012
    .line 1013
    if-nez v0, :cond_43

    .line 1014
    .line 1015
    iget v0, v5, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1016
    .line 1017
    :cond_43
    if-eqz v4, :cond_3d

    .line 1018
    .line 1019
    const/4 v2, 0x0

    .line 1020
    invoke-virtual {v13, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    if-eqz v0, :cond_3d

    .line 1025
    .line 1026
    move v10, v15

    .line 1027
    :cond_44
    :goto_25
    const/4 v0, 0x2

    .line 1028
    goto/16 :goto_2d

    .line 1029
    .line 1030
    :pswitch_6
    if-nez v0, :cond_45

    .line 1031
    .line 1032
    iput-boolean v4, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    .line 1033
    .line 1034
    iget-object v8, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1035
    .line 1036
    const/4 v10, 0x1

    .line 1037
    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1038
    .line 1039
    .line 1040
    if-eqz v4, :cond_45

    .line 1041
    .line 1042
    iget-object v8, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1043
    .line 1044
    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v11

    .line 1048
    move v10, v15

    .line 1049
    const-wide/16 v14, 0xbb8

    .line 1050
    .line 1051
    invoke-virtual {v8, v11, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1052
    .line 1053
    .line 1054
    goto :goto_26

    .line 1055
    :cond_45
    move v10, v15

    .line 1056
    :goto_26
    if-eqz v2, :cond_46

    .line 1057
    .line 1058
    if-eqz v7, :cond_46

    .line 1059
    .line 1060
    if-eqz v4, :cond_46

    .line 1061
    .line 1062
    if-nez v0, :cond_46

    .line 1063
    .line 1064
    iget v0, v5, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1065
    .line 1066
    :cond_46
    if-eqz v4, :cond_5a

    .line 1067
    .line 1068
    const/4 v2, 0x1

    .line 1069
    invoke-virtual {v13, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)Z

    .line 1070
    .line 1071
    .line 1072
    move-result v0

    .line 1073
    if-eqz v0, :cond_5a

    .line 1074
    .line 1075
    :goto_27
    goto :goto_25

    .line 1076
    :cond_47
    move v10, v15

    .line 1077
    if-eqz v4, :cond_44

    .line 1078
    .line 1079
    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1080
    .line 1081
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    const/16 v2, 0x44c

    .line 1086
    .line 1087
    if-ne v14, v2, :cond_48

    .line 1088
    .line 1089
    const v2, 0x10405b4

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    goto :goto_28

    .line 1097
    :cond_48
    const v2, 0x10405b5

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    :goto_28
    iget-object v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1105
    .line 1106
    invoke-virtual {v13, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_25

    .line 1110
    :cond_49
    move v10, v15

    .line 1111
    goto/16 :goto_2a

    .line 1112
    .line 1113
    :cond_4a
    move v10, v15

    .line 1114
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 1115
    .line 1116
    if-eqz v0, :cond_44

    .line 1117
    .line 1118
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v0

    .line 1122
    if-eqz v0, :cond_4b

    .line 1123
    .line 1124
    goto :goto_27

    .line 1125
    :cond_4b
    if-eqz v4, :cond_40

    .line 1126
    .line 1127
    const-string v0, "Press KEYCODE_DOUBLE_TAP"

    .line 1128
    .line 1129
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .line 1131
    .line 1132
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 1133
    .line 1134
    if-eqz v0, :cond_40

    .line 1135
    .line 1136
    iget-boolean v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 1137
    .line 1138
    if-eqz v0, :cond_40

    .line 1139
    .line 1140
    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 1141
    .line 1142
    const-string/jumbo v2, "pen_intent_com"

    .line 1143
    .line 1144
    .line 1145
    const-string/jumbo v4, "pen_doubletab"

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    .line 1150
    .line 1151
    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1152
    .line 1153
    iget-object v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 1154
    .line 1155
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1156
    .line 1157
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1158
    .line 1159
    .line 1160
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SMART_CLIP:Z

    .line 1161
    .line 1162
    if-eqz v0, :cond_40

    .line 1163
    .line 1164
    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 1165
    .line 1166
    if-eqz v0, :cond_40

    .line 1167
    .line 1168
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setScreenOffDoubleTabTime()V

    .line 1169
    .line 1170
    .line 1171
    goto/16 :goto_23

    .line 1172
    .line 1173
    :cond_4c
    move v10, v15

    .line 1174
    if-eqz v4, :cond_44

    .line 1175
    .line 1176
    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1177
    .line 1178
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    const/16 v2, 0x433

    .line 1183
    .line 1184
    if-ne v14, v2, :cond_4d

    .line 1185
    .line 1186
    const v2, 0x1040f47

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    goto :goto_29

    .line 1194
    :cond_4d
    const v2, 0x1040f46

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    :goto_29
    iget-object v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1202
    .line 1203
    invoke-virtual {v13, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    goto/16 :goto_25

    .line 1207
    .line 1208
    :cond_4e
    move v10, v15

    .line 1209
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v0

    .line 1213
    if-eqz v0, :cond_4f

    .line 1214
    .line 1215
    const-string v0, "AI_HOT systemKeyEventRequested ADD_PASS"

    .line 1216
    .line 1217
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .line 1219
    .line 1220
    const/4 v2, 0x0

    .line 1221
    iput-boolean v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 1222
    .line 1223
    goto/16 :goto_23

    .line 1224
    .line 1225
    :cond_4f
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v0

    .line 1229
    if-eqz v0, :cond_50

    .line 1230
    .line 1231
    const-string v0, "AI_HOT dispatch due to keyguard"

    .line 1232
    .line 1233
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_2c

    .line 1237
    .line 1238
    :cond_50
    const-string v0, "AI_HOT systemKeyEventRequested REMOVE_PASS"

    .line 1239
    .line 1240
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_24

    .line 1244
    .line 1245
    :cond_51
    move v10, v15

    .line 1246
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    .line 1247
    .line 1248
    if-eqz v0, :cond_44

    .line 1249
    .line 1250
    if-eqz v4, :cond_44

    .line 1251
    .line 1252
    iget-boolean v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 1253
    .line 1254
    if-nez v0, :cond_52

    .line 1255
    .line 1256
    goto/16 :goto_25

    .line 1257
    .line 1258
    :cond_52
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-nez v0, :cond_53

    .line 1263
    .line 1264
    const-string v0, "Can not launch premium watch. UserSetup is not completed."

    .line 1265
    .line 1266
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    goto/16 :goto_25

    .line 1270
    .line 1271
    :cond_53
    new-instance v0, Landroid/content/Intent;

    .line 1272
    .line 1273
    const-string v2, "android.intent.action.MAIN"

    .line 1274
    .line 1275
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    const/high16 v2, 0x10010000

    .line 1279
    .line 1280
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1281
    .line 1282
    .line 1283
    const-string v2, "com.sec.android.app.premiumwatch/com.sec.android.app.premiumwatch.activity.PremiumWatch"

    .line 1284
    .line 1285
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v2

    .line 1289
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1290
    .line 1291
    .line 1292
    const-string v2, "doubleTap"

    .line 1293
    .line 1294
    const/4 v4, 0x1

    .line 1295
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1296
    .line 1297
    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    const-string v4, "launchDoubleTapPremiumWatch:"

    .line 1301
    .line 1302
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v2

    .line 1312
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .line 1314
    .line 1315
    :try_start_0
    iget-object v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1316
    .line 1317
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1318
    .line 1319
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_25

    .line 1323
    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    const-string v2, "No activity to launch Premium watch. "

    .line 1326
    .line 1327
    invoke-static {v8, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    .line 1329
    .line 1330
    goto/16 :goto_25

    .line 1331
    .line 1332
    :goto_2a
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1333
    .line 1334
    .line 1335
    move-result v0

    .line 1336
    if-eqz v0, :cond_40

    .line 1337
    .line 1338
    :goto_2b
    goto/16 :goto_24

    .line 1339
    .line 1340
    :cond_54
    move v10, v15

    .line 1341
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v0

    .line 1345
    if-eqz v0, :cond_55

    .line 1346
    .line 1347
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    goto/16 :goto_23

    .line 1351
    .line 1352
    :cond_55
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v0

    .line 1356
    if-eqz v0, :cond_5a

    .line 1357
    .line 1358
    goto :goto_2b

    .line 1359
    :cond_56
    move v10, v15

    .line 1360
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    if-eqz v0, :cond_42

    .line 1365
    .line 1366
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .line 1368
    .line 1369
    goto/16 :goto_23

    .line 1370
    .line 1371
    :cond_57
    move v10, v15

    .line 1372
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    const/high16 v2, 0x10000000

    .line 1377
    .line 1378
    and-int/2addr v0, v2

    .line 1379
    if-nez v0, :cond_40

    .line 1380
    .line 1381
    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    if-eqz v0, :cond_40

    .line 1386
    .line 1387
    goto :goto_2b

    .line 1388
    :cond_58
    move v10, v15

    .line 1389
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 1390
    .line 1391
    if-eqz v2, :cond_5a

    .line 1392
    .line 1393
    iget-object v2, v5, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1394
    .line 1395
    invoke-virtual {v2, v14}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    if-eqz v2, :cond_5a

    .line 1400
    .line 1401
    if-eqz v4, :cond_59

    .line 1402
    .line 1403
    if-nez v0, :cond_59

    .line 1404
    .line 1405
    const/4 v2, 0x1

    .line 1406
    const/4 v5, 0x0

    .line 1407
    invoke-virtual {v13, v2, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_2c

    .line 1411
    :cond_59
    const/4 v5, 0x0

    .line 1412
    if-nez v4, :cond_5a

    .line 1413
    .line 1414
    invoke-virtual {v13, v5, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 1415
    .line 1416
    .line 1417
    :cond_5a
    :goto_2c
    const/4 v0, 0x1

    .line 1418
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    const-string v4, "interceptKeyTq interceptKeyResult="

    .line 1421
    .line 1422
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v4

    .line 1429
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v2

    .line 1436
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    .line 1438
    .line 1439
    const/4 v2, 0x2

    .line 1440
    and-int/lit8 v4, v0, 0x2

    .line 1441
    .line 1442
    if-eqz v4, :cond_5b

    .line 1443
    .line 1444
    const-string v0, "interceptKeyTq : return condition of policyExt"

    .line 1445
    .line 1446
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    .line 1448
    .line 1449
    goto/16 :goto_16

    .line 1450
    .line 1451
    :cond_5b
    const/4 v2, 0x4

    .line 1452
    and-int/lit8 v4, v0, 0x4

    .line 1453
    .line 1454
    if-eqz v4, :cond_5c

    .line 1455
    .line 1456
    const/4 v8, 0x1

    .line 1457
    goto :goto_2e

    .line 1458
    :cond_5c
    and-int/lit8 v0, v0, 0x8

    .line 1459
    .line 1460
    if-eqz v0, :cond_5d

    .line 1461
    .line 1462
    const/4 v8, 0x0

    .line 1463
    goto :goto_2e

    .line 1464
    :cond_5d
    move/from16 v8, v22

    .line 1465
    .line 1466
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    and-int/lit8 v0, v0, 0x40

    .line 1471
    .line 1472
    if-eqz v0, :cond_5e

    .line 1473
    .line 1474
    const/4 v0, 0x1

    .line 1475
    goto :goto_2f

    .line 1476
    :cond_5e
    const/4 v0, 0x0

    .line 1477
    :goto_2f
    if-eqz v9, :cond_61

    .line 1478
    .line 1479
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1480
    .line 1481
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1482
    .line 1483
    if-nez v2, :cond_5f

    .line 1484
    .line 1485
    if-eqz v10, :cond_61

    .line 1486
    .line 1487
    goto :goto_30

    .line 1488
    :cond_5f
    const/4 v2, 0x2

    .line 1489
    and-int/lit8 v4, v3, 0x2

    .line 1490
    .line 1491
    if-eqz v4, :cond_61

    .line 1492
    .line 1493
    :goto_30
    if-eqz v0, :cond_60

    .line 1494
    .line 1495
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 1496
    .line 1497
    if-eqz v0, :cond_61

    .line 1498
    .line 1499
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1500
    .line 1501
    .line 1502
    move-result v0

    .line 1503
    if-nez v0, :cond_61

    .line 1504
    .line 1505
    const/4 v7, 0x1

    .line 1506
    goto :goto_31

    .line 1507
    :cond_61
    const/4 v7, 0x0

    .line 1508
    :goto_31
    const/16 v2, 0xf

    .line 1509
    .line 1510
    const/4 v4, 0x4

    .line 1511
    if-eq v6, v4, :cond_9c

    .line 1512
    .line 1513
    const/4 v0, 0x5

    .line 1514
    if-eq v6, v0, :cond_9b

    .line 1515
    .line 1516
    const/4 v4, 0x6

    .line 1517
    if-eq v6, v4, :cond_95

    .line 1518
    .line 1519
    const/16 v0, 0x4f

    .line 1520
    .line 1521
    if-eq v6, v0, :cond_6e

    .line 1522
    .line 1523
    const/16 v0, 0x82

    .line 1524
    .line 1525
    if-eq v6, v0, :cond_6e

    .line 1526
    .line 1527
    const/16 v0, 0xa4

    .line 1528
    .line 1529
    if-eq v6, v0, :cond_76

    .line 1530
    .line 1531
    const/16 v4, 0xab

    .line 1532
    .line 1533
    if-eq v6, v4, :cond_7e

    .line 1534
    .line 1535
    const/16 v4, 0xb1

    .line 1536
    .line 1537
    if-eq v6, v4, :cond_7d

    .line 1538
    .line 1539
    const/16 v4, 0xdb

    .line 1540
    .line 1541
    if-eq v6, v4, :cond_7b

    .line 1542
    .line 1543
    const/16 v4, 0xe7

    .line 1544
    .line 1545
    if-eq v6, v4, :cond_7a

    .line 1546
    .line 1547
    const/16 v4, 0x108

    .line 1548
    .line 1549
    if-eq v6, v4, :cond_79

    .line 1550
    .line 1551
    const/16 v4, 0x114

    .line 1552
    .line 1553
    if-eq v6, v4, :cond_77

    .line 1554
    .line 1555
    const/16 v4, 0x7e

    .line 1556
    .line 1557
    if-eq v6, v4, :cond_6e

    .line 1558
    .line 1559
    const/16 v4, 0x7f

    .line 1560
    .line 1561
    if-eq v6, v4, :cond_6e

    .line 1562
    .line 1563
    packed-switch v6, :pswitch_data_5

    .line 1564
    .line 1565
    .line 1566
    packed-switch v6, :pswitch_data_6

    .line 1567
    .line 1568
    .line 1569
    packed-switch v6, :pswitch_data_7

    .line 1570
    .line 1571
    .line 1572
    packed-switch v6, :pswitch_data_8

    .line 1573
    .line 1574
    .line 1575
    packed-switch v6, :pswitch_data_9

    .line 1576
    .line 1577
    .line 1578
    packed-switch v6, :pswitch_data_a

    .line 1579
    .line 1580
    .line 1581
    packed-switch v6, :pswitch_data_b

    .line 1582
    .line 1583
    .line 1584
    :cond_62
    move-object/from16 v4, p1

    .line 1585
    .line 1586
    goto :goto_34

    .line 1587
    :pswitch_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->emojiAndScreenshotKeycodesAvailable()Z

    .line 1588
    .line 1589
    .line 1590
    move-result v0

    .line 1591
    if-nez v0, :cond_62

    .line 1592
    .line 1593
    :cond_63
    :goto_32
    :pswitch_8
    move-object/from16 v4, p1

    .line 1594
    .line 1595
    :cond_64
    :goto_33
    const/4 v8, 0x0

    .line 1596
    :goto_34
    const/4 v13, 0x6

    .line 1597
    goto/16 :goto_4b

    .line 1598
    .line 1599
    :pswitch_9
    const-string v0, "Stylus buttons event: "

    .line 1600
    .line 1601
    const-string v4, " received. Should handle event? "

    .line 1602
    .line 1603
    invoke-static {v6, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v0

    .line 1607
    iget-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 1608
    .line 1609
    invoke-static {v12, v0, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1610
    .line 1611
    .line 1612
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 1613
    .line 1614
    if-eqz v0, :cond_63

    .line 1615
    .line 1616
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1617
    .line 1618
    .line 1619
    goto :goto_32

    .line 1620
    :pswitch_a
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SYSTEM_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1621
    .line 1622
    move-object/from16 v4, p1

    .line 1623
    .line 1624
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 1628
    .line 1629
    .line 1630
    move-result v0

    .line 1631
    const/4 v5, 0x1

    .line 1632
    if-ne v0, v5, :cond_64

    .line 1633
    .line 1634
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1635
    .line 1636
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1637
    .line 1638
    .line 1639
    move-result v0

    .line 1640
    if-eqz v0, :cond_65

    .line 1641
    .line 1642
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1643
    .line 1644
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1645
    .line 1646
    .line 1647
    move-result v5

    .line 1648
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    if-nez v0, :cond_64

    .line 1653
    .line 1654
    :cond_65
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 1655
    .line 1656
    if-eqz v0, :cond_64

    .line 1657
    .line 1658
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1659
    .line 1660
    .line 1661
    goto :goto_33

    .line 1662
    :pswitch_b
    move-object/from16 v4, p1

    .line 1663
    .line 1664
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->WAKEUP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1665
    .line 1666
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1667
    .line 1668
    .line 1669
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1670
    .line 1671
    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    if-eqz v0, :cond_67

    .line 1676
    .line 1677
    const-string/jumbo v0, "skip wakeUp by KEYCODE_WAKEUP, requestedSystemKey"

    .line 1678
    .line 1679
    .line 1680
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    .line 1682
    .line 1683
    const/4 v8, 0x1

    .line 1684
    const/4 v13, 0x6

    .line 1685
    :cond_66
    :goto_35
    const/16 v21, 0x0

    .line 1686
    .line 1687
    goto/16 :goto_4b

    .line 1688
    .line 1689
    :cond_67
    const/4 v8, 0x0

    .line 1690
    const/4 v13, 0x6

    .line 1691
    const/16 v21, 0x1

    .line 1692
    .line 1693
    goto/16 :goto_4b

    .line 1694
    .line 1695
    :pswitch_c
    move-object/from16 v4, p1

    .line 1696
    .line 1697
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SLEEP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1698
    .line 1699
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1700
    .line 1701
    .line 1702
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1703
    .line 1704
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 1705
    .line 1706
    .line 1707
    move-result v0

    .line 1708
    if-nez v0, :cond_68

    .line 1709
    .line 1710
    const/4 v7, 0x0

    .line 1711
    :cond_68
    if-eqz v9, :cond_6a

    .line 1712
    .line 1713
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1714
    .line 1715
    const/4 v5, 0x1

    .line 1716
    if-ne v0, v5, :cond_69

    .line 1717
    .line 1718
    const/4 v8, 0x0

    .line 1719
    invoke-virtual {v1, v8, v8, v5}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1720
    .line 1721
    .line 1722
    :cond_69
    :goto_36
    const/4 v13, 0x6

    .line 1723
    goto :goto_37

    .line 1724
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1725
    .line 1726
    .line 1727
    move-result-wide v10

    .line 1728
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    .line 1729
    .line 1730
    if-eqz v0, :cond_6b

    .line 1731
    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    if-eqz v0, :cond_6b

    .line 1737
    .line 1738
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 1739
    .line 1740
    .line 1741
    move-result v5

    .line 1742
    if-eqz v5, :cond_6b

    .line 1743
    .line 1744
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1745
    .line 1746
    .line 1747
    const-string/jumbo v0, "sleepRelease() silence ringer"

    .line 1748
    .line 1749
    .line 1750
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    .line 1752
    .line 1753
    goto :goto_36

    .line 1754
    :cond_6b
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1755
    .line 1756
    if-eqz v0, :cond_6c

    .line 1757
    .line 1758
    const/4 v5, 0x1

    .line 1759
    if-eq v0, v5, :cond_6c

    .line 1760
    .line 1761
    goto :goto_36

    .line 1762
    :cond_6c
    const-string/jumbo v0, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    .line 1763
    .line 1764
    .line 1765
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    .line 1767
    .line 1768
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1769
    .line 1770
    const/4 v5, 0x0

    .line 1771
    const/4 v13, 0x6

    .line 1772
    invoke-virtual {v0, v10, v11, v13, v5}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1773
    .line 1774
    .line 1775
    :goto_37
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1776
    .line 1777
    .line 1778
    :cond_6d
    :goto_38
    const/4 v8, 0x0

    .line 1779
    goto :goto_35

    .line 1780
    :cond_6e
    :pswitch_d
    move-object/from16 v4, p1

    .line 1781
    .line 1782
    const/4 v13, 0x6

    .line 1783
    goto/16 :goto_47

    .line 1784
    .line 1785
    :pswitch_e
    move-object/from16 v4, p1

    .line 1786
    .line 1787
    const/4 v13, 0x6

    .line 1788
    if-eqz v9, :cond_70

    .line 1789
    .line 1790
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1791
    .line 1792
    .line 1793
    move-result v0

    .line 1794
    if-nez v0, :cond_70

    .line 1795
    .line 1796
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SYSTEM_MUTE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1797
    .line 1798
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1799
    .line 1800
    .line 1801
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 1802
    .line 1803
    const/4 v5, 0x1

    .line 1804
    invoke-virtual {v0, v5, v5}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    .line 1805
    .line 1806
    .line 1807
    move-result v0

    .line 1808
    if-eqz v0, :cond_70

    .line 1809
    .line 1810
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 1811
    .line 1812
    invoke-virtual {v0, v5, v5}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v0

    .line 1816
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 1817
    .line 1818
    xor-int/lit8 v10, v0, 0x1

    .line 1819
    .line 1820
    invoke-virtual {v8, v5, v10}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IZ)V

    .line 1821
    .line 1822
    .line 1823
    if-eqz v0, :cond_6f

    .line 1824
    .line 1825
    const v0, 0x1040855

    .line 1826
    .line 1827
    .line 1828
    goto :goto_39

    .line 1829
    :cond_6f
    const v0, 0x1040854

    .line 1830
    .line 1831
    .line 1832
    :goto_39
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1833
    .line 1834
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v8

    .line 1838
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v8

    .line 1842
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1843
    .line 1844
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v0

    .line 1848
    const/4 v10, 0x0

    .line 1849
    invoke-static {v5, v8, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v0

    .line 1853
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1854
    .line 1855
    .line 1856
    :cond_70
    :goto_3a
    const/4 v8, 0x0

    .line 1857
    goto/16 :goto_4b

    .line 1858
    .line 1859
    :pswitch_f
    move-object/from16 v4, p1

    .line 1860
    .line 1861
    const/4 v13, 0x6

    .line 1862
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_POWER:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1863
    .line 1864
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 1868
    .line 1869
    .line 1870
    move-result v0

    .line 1871
    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v0

    .line 1875
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1876
    .line 1877
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1878
    .line 1879
    iget-object v11, v10, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1880
    .line 1881
    if-eqz v11, :cond_71

    .line 1882
    .line 1883
    iget v11, v11, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1884
    .line 1885
    const/16 v14, 0x1a

    .line 1886
    .line 1887
    if-ne v11, v14, :cond_71

    .line 1888
    .line 1889
    iget v10, v10, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1890
    .line 1891
    goto :goto_3b

    .line 1892
    :cond_71
    const/4 v10, 0x0

    .line 1893
    :goto_3b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v5

    .line 1897
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v10

    .line 1901
    filled-new-array {v0, v5, v10}, [Ljava/lang/Object;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v0

    .line 1905
    const v5, 0x11171

    .line 1906
    .line 1907
    .line 1908
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1909
    .line 1910
    .line 1911
    if-eqz v9, :cond_72

    .line 1912
    .line 1913
    move/from16 v5, v26

    .line 1914
    .line 1915
    invoke-virtual {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    .line 1916
    .line 1917
    .line 1918
    goto :goto_3e

    .line 1919
    :cond_72
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1920
    .line 1921
    .line 1922
    if-nez v16, :cond_74

    .line 1923
    .line 1924
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1925
    .line 1926
    if-eqz v0, :cond_73

    .line 1927
    .line 1928
    goto :goto_3c

    .line 1929
    :cond_73
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 1930
    .line 1931
    .line 1932
    move-result v0

    .line 1933
    and-int/lit16 v0, v0, 0x80

    .line 1934
    .line 1935
    if-nez v0, :cond_74

    .line 1936
    .line 1937
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1938
    .line 1939
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1940
    .line 1941
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    .line 1943
    .line 1944
    new-instance v10, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    .line 1945
    .line 1946
    const/4 v11, 0x0

    .line 1947
    invoke-direct {v10, v11, v5}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1951
    .line 1952
    .line 1953
    goto :goto_3d

    .line 1954
    :cond_74
    :goto_3c
    const/4 v11, 0x0

    .line 1955
    :goto_3d
    iput-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1956
    .line 1957
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1958
    .line 1959
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    if-eqz v0, :cond_75

    .line 1964
    .line 1965
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1966
    .line 1967
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1968
    .line 1969
    .line 1970
    :cond_75
    :goto_3e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 1971
    .line 1972
    if-eqz v0, :cond_66

    .line 1973
    .line 1974
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1975
    .line 1976
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 1977
    .line 1978
    .line 1979
    goto/16 :goto_35

    .line 1980
    .line 1981
    :cond_76
    :pswitch_10
    move-object/from16 v4, p1

    .line 1982
    .line 1983
    const/4 v13, 0x6

    .line 1984
    const/16 v5, 0x18

    .line 1985
    .line 1986
    goto/16 :goto_40

    .line 1987
    .line 1988
    :cond_77
    move-object/from16 v4, p1

    .line 1989
    .line 1990
    const/4 v13, 0x6

    .line 1991
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SLEEP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1992
    .line 1993
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1994
    .line 1995
    .line 1996
    if-nez v9, :cond_78

    .line 1997
    .line 1998
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1999
    .line 2000
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 2001
    .line 2002
    .line 2003
    :cond_78
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2004
    .line 2005
    .line 2006
    goto/16 :goto_38

    .line 2007
    .line 2008
    :cond_79
    move-object/from16 v4, p1

    .line 2009
    .line 2010
    const/4 v13, 0x6

    .line 2011
    if-eqz v9, :cond_a3

    .line 2012
    .line 2013
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2014
    .line 2015
    .line 2016
    move-result v0

    .line 2017
    if-nez v0, :cond_a3

    .line 2018
    .line 2019
    if-nez v8, :cond_a3

    .line 2020
    .line 2021
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 2022
    .line 2023
    .line 2024
    move-result-wide v10

    .line 2025
    invoke-virtual {v1, v6, v10, v11}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    .line 2026
    .line 2027
    .line 2028
    goto/16 :goto_4b

    .line 2029
    .line 2030
    :cond_7a
    move-object/from16 v4, p1

    .line 2031
    .line 2032
    const/4 v13, 0x6

    .line 2033
    if-nez v9, :cond_70

    .line 2034
    .line 2035
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2036
    .line 2037
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2038
    .line 2039
    .line 2040
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2041
    .line 2042
    const/16 v5, 0xc

    .line 2043
    .line 2044
    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v0

    .line 2048
    const/4 v5, 0x1

    .line 2049
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2053
    .line 2054
    .line 2055
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_VOICE_ASSISTANT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2056
    .line 2057
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2058
    .line 2059
    .line 2060
    goto/16 :goto_3a

    .line 2061
    .line 2062
    :cond_7b
    move-object/from16 v4, p1

    .line 2063
    .line 2064
    const/4 v13, 0x6

    .line 2065
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2066
    .line 2067
    .line 2068
    move-result v0

    .line 2069
    if-lez v0, :cond_7c

    .line 2070
    .line 2071
    const/4 v0, 0x1

    .line 2072
    goto :goto_3f

    .line 2073
    :cond_7c
    const/4 v0, 0x0

    .line 2074
    :goto_3f
    if-eqz v9, :cond_70

    .line 2075
    .line 2076
    if-nez v0, :cond_70

    .line 2077
    .line 2078
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2079
    .line 2080
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 2081
    .line 2082
    .line 2083
    move-result v5

    .line 2084
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2085
    .line 2086
    .line 2087
    move-result-wide v10

    .line 2088
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v8

    .line 2092
    const/16 v10, 0x17

    .line 2093
    .line 2094
    const/4 v11, 0x0

    .line 2095
    invoke-virtual {v0, v10, v5, v11, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v0

    .line 2099
    const/4 v5, 0x1

    .line 2100
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2104
    .line 2105
    .line 2106
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_ASSISTANT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2107
    .line 2108
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2109
    .line 2110
    .line 2111
    goto/16 :goto_3a

    .line 2112
    .line 2113
    :cond_7d
    move-object/from16 v4, p1

    .line 2114
    .line 2115
    const/4 v13, 0x6

    .line 2116
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_POWER:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2117
    .line 2118
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2119
    .line 2120
    .line 2121
    if-eqz v9, :cond_6d

    .line 2122
    .line 2123
    if-eqz v33, :cond_6d

    .line 2124
    .line 2125
    invoke-virtual/range {v33 .. v33}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    .line 2126
    .line 2127
    .line 2128
    goto/16 :goto_38

    .line 2129
    .line 2130
    :cond_7e
    move-object/from16 v4, p1

    .line 2131
    .line 2132
    const/4 v13, 0x6

    .line 2133
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2134
    .line 2135
    const/4 v5, 0x1

    .line 2136
    if-ne v0, v5, :cond_a3

    .line 2137
    .line 2138
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 2139
    .line 2140
    if-eqz v0, :cond_a3

    .line 2141
    .line 2142
    if-nez v9, :cond_70

    .line 2143
    .line 2144
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 2145
    .line 2146
    if-eqz v0, :cond_7f

    .line 2147
    .line 2148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2149
    .line 2150
    const-string/jumbo v5, "showPictureInPictureMenu event="

    .line 2151
    .line 2152
    .line 2153
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2154
    .line 2155
    .line 2156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2157
    .line 2158
    .line 2159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v0

    .line 2163
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    .line 2165
    .line 2166
    :cond_7f
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2167
    .line 2168
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2169
    .line 2170
    .line 2171
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2172
    .line 2173
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v0

    .line 2177
    const/4 v5, 0x1

    .line 2178
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2179
    .line 2180
    .line 2181
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2182
    .line 2183
    .line 2184
    goto/16 :goto_3a

    .line 2185
    .line 2186
    :goto_40
    if-eq v6, v5, :cond_82

    .line 2187
    .line 2188
    const/16 v5, 0x19

    .line 2189
    .line 2190
    if-eq v6, v5, :cond_81

    .line 2191
    .line 2192
    if-eq v6, v0, :cond_80

    .line 2193
    .line 2194
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->HOME:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2195
    .line 2196
    const/4 v0, 0x0

    .line 2197
    goto :goto_41

    .line 2198
    :cond_80
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VOLUME_MUTE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2199
    .line 2200
    goto :goto_41

    .line 2201
    :cond_81
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VOLUME_DOWN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2202
    .line 2203
    goto :goto_41

    .line 2204
    :cond_82
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VOLUME_UP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2205
    .line 2206
    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2207
    .line 2208
    .line 2209
    move-result v5

    .line 2210
    if-eqz v5, :cond_83

    .line 2211
    .line 2212
    goto :goto_42

    .line 2213
    :cond_83
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2214
    .line 2215
    .line 2216
    :goto_42
    const/high16 v5, -0x80000000

    .line 2217
    .line 2218
    if-eqz v9, :cond_8f

    .line 2219
    .line 2220
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2221
    .line 2222
    .line 2223
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2224
    .line 2225
    const-class v10, Landroid/app/NotificationManager;

    .line 2226
    .line 2227
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2228
    .line 2229
    .line 2230
    move-result-object v0

    .line 2231
    check-cast v0, Landroid/app/NotificationManager;

    .line 2232
    .line 2233
    if-eqz v0, :cond_84

    .line 2234
    .line 2235
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2236
    .line 2237
    if-nez v10, :cond_84

    .line 2238
    .line 2239
    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 2240
    .line 2241
    .line 2242
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v10

    .line 2246
    if-eqz v10, :cond_8a

    .line 2247
    .line 2248
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2249
    .line 2250
    if-nez v0, :cond_8a

    .line 2251
    .line 2252
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2253
    .line 2254
    .line 2255
    move-result v0

    .line 2256
    if-eqz v0, :cond_8a

    .line 2257
    .line 2258
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2259
    .line 2260
    const/16 v5, 0x18

    .line 2261
    .line 2262
    if-eq v6, v5, :cond_86

    .line 2263
    .line 2264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2265
    .line 2266
    .line 2267
    :cond_85
    const/4 v0, 0x0

    .line 2268
    goto :goto_43

    .line 2269
    :cond_86
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 2270
    .line 2271
    if-eqz v5, :cond_85

    .line 2272
    .line 2273
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2274
    .line 2275
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2276
    .line 2277
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 2278
    .line 2279
    if-eqz v0, :cond_85

    .line 2280
    .line 2281
    const/4 v0, 0x1

    .line 2282
    :goto_43
    if-eqz v0, :cond_88

    .line 2283
    .line 2284
    const-string/jumbo v0, "ringing: Accept the call (volume up)"

    .line 2285
    .line 2286
    .line 2287
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    .line 2289
    .line 2290
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2291
    .line 2292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2293
    .line 2294
    .line 2295
    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2296
    .line 2297
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v0

    .line 2301
    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2302
    .line 2303
    if-nez v0, :cond_87

    .line 2304
    .line 2305
    goto/16 :goto_3a

    .line 2306
    .line 2307
    :cond_87
    invoke-virtual {v0, v6}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    .line 2308
    .line 2309
    .line 2310
    goto/16 :goto_3a

    .line 2311
    .line 2312
    :cond_88
    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    .line 2313
    .line 2314
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    .line 2316
    .line 2317
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2318
    .line 2319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2320
    .line 2321
    .line 2322
    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2323
    .line 2324
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v0

    .line 2328
    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2329
    .line 2330
    if-nez v0, :cond_89

    .line 2331
    .line 2332
    goto/16 :goto_3a

    .line 2333
    .line 2334
    :cond_89
    invoke-virtual {v0, v6}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    .line 2335
    .line 2336
    .line 2337
    goto/16 :goto_3a

    .line 2338
    .line 2339
    :cond_8a
    :try_start_1
    const-string v0, "audio"

    .line 2340
    .line 2341
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v0

    .line 2345
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v0

    .line 2349
    if-nez v0, :cond_8b

    .line 2350
    .line 2351
    const-string v11, "Unable to find IAudioService interface."

    .line 2352
    .line 2353
    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    .line 2355
    .line 2356
    :cond_8b
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    .line 2357
    .line 2358
    .line 2359
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2360
    goto :goto_44

    .line 2361
    :catch_1
    move-exception v0

    .line 2362
    const-string v11, "Error getting AudioService in interceptKeyBeforeQueueing."

    .line 2363
    .line 2364
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2365
    .line 2366
    .line 2367
    const/4 v0, 0x0

    .line 2368
    :goto_44
    if-eqz v10, :cond_8c

    .line 2369
    .line 2370
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 2371
    .line 2372
    .line 2373
    move-result v10

    .line 2374
    if-nez v10, :cond_8d

    .line 2375
    .line 2376
    :cond_8c
    const/4 v10, 0x3

    .line 2377
    if-ne v0, v10, :cond_8e

    .line 2378
    .line 2379
    :cond_8d
    const/4 v0, 0x1

    .line 2380
    goto :goto_45

    .line 2381
    :cond_8e
    const/4 v0, 0x0

    .line 2382
    :goto_45
    if-eqz v0, :cond_8f

    .line 2383
    .line 2384
    if-nez v8, :cond_8f

    .line 2385
    .line 2386
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2387
    .line 2388
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v0

    .line 2392
    const/4 v10, 0x0

    .line 2393
    invoke-virtual {v0, v4, v5, v10}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2394
    .line 2395
    .line 2396
    goto/16 :goto_4b

    .line 2397
    .line 2398
    :cond_8f
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2399
    .line 2400
    if-nez v0, :cond_93

    .line 2401
    .line 2402
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2403
    .line 2404
    if-eqz v0, :cond_90

    .line 2405
    .line 2406
    goto :goto_46

    .line 2407
    :cond_90
    if-nez v8, :cond_a3

    .line 2408
    .line 2409
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2410
    .line 2411
    invoke-virtual {v0, v6}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 2412
    .line 2413
    .line 2414
    move-result v0

    .line 2415
    if-eqz v0, :cond_92

    .line 2416
    .line 2417
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 2418
    .line 2419
    .line 2420
    move-result v0

    .line 2421
    const/high16 v10, 0x10000000

    .line 2422
    .line 2423
    and-int/2addr v0, v10

    .line 2424
    if-nez v0, :cond_92

    .line 2425
    .line 2426
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2427
    .line 2428
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2429
    .line 2430
    const/4 v5, 0x4

    .line 2431
    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 2432
    .line 2433
    .line 2434
    move-result v0

    .line 2435
    if-nez v0, :cond_91

    .line 2436
    .line 2437
    if-eqz v9, :cond_91

    .line 2438
    .line 2439
    const/4 v5, 0x1

    .line 2440
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    .line 2441
    .line 2442
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2443
    .line 2444
    const-string v5, "KeyCustomization: Not calling media session. mShouldHandleVolumeLongpress="

    .line 2445
    .line 2446
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2447
    .line 2448
    .line 2449
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    .line 2450
    .line 2451
    invoke-static {v12, v0, v5}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2452
    .line 2453
    .line 2454
    goto/16 :goto_4b

    .line 2455
    .line 2456
    :cond_92
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2457
    .line 2458
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2459
    .line 2460
    .line 2461
    move-result-object v0

    .line 2462
    const/4 v10, 0x1

    .line 2463
    invoke-virtual {v0, v4, v5, v10}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2464
    .line 2465
    .line 2466
    goto/16 :goto_4b

    .line 2467
    .line 2468
    :cond_93
    :goto_46
    const/4 v8, 0x1

    .line 2469
    goto/16 :goto_4b

    .line 2470
    .line 2471
    :goto_47
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->MEDIA_KEY:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2472
    .line 2473
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2474
    .line 2475
    .line 2476
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2477
    .line 2478
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v0

    .line 2482
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    .line 2483
    .line 2484
    .line 2485
    move-result v0

    .line 2486
    if-eqz v0, :cond_94

    .line 2487
    .line 2488
    const/4 v8, 0x0

    .line 2489
    :cond_94
    if-nez v8, :cond_a3

    .line 2490
    .line 2491
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2492
    .line 2493
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2494
    .line 2495
    .line 2496
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2497
    .line 2498
    new-instance v5, Landroid/view/KeyEvent;

    .line 2499
    .line 2500
    invoke-direct {v5, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2501
    .line 2502
    .line 2503
    const/4 v11, 0x3

    .line 2504
    invoke-virtual {v0, v11, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v0

    .line 2508
    const/4 v5, 0x1

    .line 2509
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2510
    .line 2511
    .line 2512
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2513
    .line 2514
    .line 2515
    goto/16 :goto_4b

    .line 2516
    .line 2517
    :cond_95
    move v13, v4

    .line 2518
    const/4 v11, 0x3

    .line 2519
    move-object/from16 v4, p1

    .line 2520
    .line 2521
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2522
    .line 2523
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2524
    .line 2525
    invoke-virtual {v0, v6, v11}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 2526
    .line 2527
    .line 2528
    move-result v0

    .line 2529
    if-eqz v0, :cond_96

    .line 2530
    .line 2531
    goto/16 :goto_4b

    .line 2532
    .line 2533
    :cond_96
    if-eqz v9, :cond_99

    .line 2534
    .line 2535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v0

    .line 2539
    if-eqz v0, :cond_97

    .line 2540
    .line 2541
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    .line 2542
    .line 2543
    .line 2544
    move-result v0

    .line 2545
    goto :goto_48

    .line 2546
    :cond_97
    const/4 v0, 0x0

    .line 2547
    :goto_48
    if-eqz v10, :cond_98

    .line 2548
    .line 2549
    if-nez v0, :cond_98

    .line 2550
    .line 2551
    const/4 v5, 0x0

    .line 2552
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2553
    .line 2554
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2555
    .line 2556
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 2557
    .line 2558
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2559
    .line 2560
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2561
    .line 2562
    .line 2563
    move-result-object v8

    .line 2564
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    .line 2565
    .line 2566
    .line 2567
    move-result-wide v10

    .line 2568
    invoke-virtual {v0, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2569
    .line 2570
    .line 2571
    const/4 v5, 0x1

    .line 2572
    goto/16 :goto_3a

    .line 2573
    .line 2574
    :cond_98
    const/4 v5, 0x1

    .line 2575
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2576
    .line 2577
    goto/16 :goto_3a

    .line 2578
    .line 2579
    :cond_99
    const/4 v5, 0x1

    .line 2580
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2581
    .line 2582
    if-nez v0, :cond_70

    .line 2583
    .line 2584
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2585
    .line 2586
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 2587
    .line 2588
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2589
    .line 2590
    .line 2591
    if-nez v16, :cond_70

    .line 2592
    .line 2593
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2594
    .line 2595
    and-int/2addr v0, v5

    .line 2596
    if-eqz v0, :cond_9a

    .line 2597
    .line 2598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    .line 2599
    .line 2600
    .line 2601
    move-result v0

    .line 2602
    if-eqz v0, :cond_9a

    .line 2603
    .line 2604
    goto/16 :goto_3a

    .line 2605
    .line 2606
    :cond_9a
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2607
    .line 2608
    const/4 v5, 0x2

    .line 2609
    and-int/2addr v0, v5

    .line 2610
    if-eqz v0, :cond_70

    .line 2611
    .line 2612
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2613
    .line 2614
    .line 2615
    move-result-wide v10

    .line 2616
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2617
    .line 2618
    const/4 v5, 0x0

    .line 2619
    const/4 v8, 0x4

    .line 2620
    invoke-virtual {v0, v10, v11, v8, v5}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2621
    .line 2622
    .line 2623
    goto/16 :goto_38

    .line 2624
    .line 2625
    :cond_9b
    move-object/from16 v4, p1

    .line 2626
    .line 2627
    const/4 v13, 0x6

    .line 2628
    if-eqz v9, :cond_a3

    .line 2629
    .line 2630
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v0

    .line 2634
    if-eqz v0, :cond_a3

    .line 2635
    .line 2636
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2637
    .line 2638
    .line 2639
    move-result v5

    .line 2640
    if-eqz v5, :cond_a3

    .line 2641
    .line 2642
    const-string v5, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    .line 2643
    .line 2644
    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    .line 2646
    .line 2647
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 2648
    .line 2649
    .line 2650
    goto/16 :goto_3a

    .line 2651
    .line 2652
    :cond_9c
    move-object/from16 v4, p1

    .line 2653
    .line 2654
    const/4 v13, 0x6

    .line 2655
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BACK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2656
    .line 2657
    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2658
    .line 2659
    .line 2660
    if-eqz v9, :cond_9d

    .line 2661
    .line 2662
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2663
    .line 2664
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->moveFocusToAdjacentEmbeddedActivityIfNeeded()Z

    .line 2665
    .line 2666
    .line 2667
    const/4 v5, 0x0

    .line 2668
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2669
    .line 2670
    goto :goto_4b

    .line 2671
    :cond_9d
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2672
    .line 2673
    if-eqz v0, :cond_9e

    .line 2674
    .line 2675
    const/4 v0, 0x1

    .line 2676
    goto :goto_49

    .line 2677
    :cond_9e
    const/4 v0, 0x0

    .line 2678
    :goto_49
    if-nez v0, :cond_a2

    .line 2679
    .line 2680
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2681
    .line 2682
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2683
    .line 2684
    const-string v10, "key_back_press"

    .line 2685
    .line 2686
    const/4 v11, 0x1

    .line 2687
    invoke-virtual {v5, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 2688
    .line 2689
    .line 2690
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2691
    .line 2692
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2693
    .line 2694
    if-eqz v10, :cond_a0

    .line 2695
    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2697
    .line 2698
    .line 2699
    move-result-object v10

    .line 2700
    if-eqz v10, :cond_a0

    .line 2701
    .line 2702
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2703
    .line 2704
    .line 2705
    move-result v14

    .line 2706
    if-eqz v14, :cond_9f

    .line 2707
    .line 2708
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 2709
    .line 2710
    .line 2711
    const/4 v11, 0x0

    .line 2712
    goto :goto_4a

    .line 2713
    :cond_9f
    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2714
    .line 2715
    and-int/2addr v14, v11

    .line 2716
    if-eqz v14, :cond_a0

    .line 2717
    .line 2718
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 2719
    .line 2720
    .line 2721
    move-result v11

    .line 2722
    if-eqz v11, :cond_a0

    .line 2723
    .line 2724
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->endCall()Z

    .line 2725
    .line 2726
    .line 2727
    move-result v11

    .line 2728
    goto :goto_4a

    .line 2729
    :cond_a0
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 2730
    .line 2731
    if-eqz v10, :cond_a1

    .line 2732
    .line 2733
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2734
    .line 2735
    const/16 v11, 0x14

    .line 2736
    .line 2737
    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v11

    .line 2741
    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2742
    .line 2743
    .line 2744
    :cond_a1
    move v11, v5

    .line 2745
    :goto_4a
    or-int/2addr v0, v11

    .line 2746
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2747
    .line 2748
    :cond_a2
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2749
    .line 2750
    if-eqz v0, :cond_a3

    .line 2751
    .line 2752
    goto/16 :goto_3a

    .line 2753
    .line 2754
    :cond_a3
    :goto_4b
    if-eqz v7, :cond_a4

    .line 2755
    .line 2756
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2757
    .line 2758
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 2759
    .line 2760
    if-nez v0, :cond_a5

    .line 2761
    .line 2762
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2763
    .line 2764
    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    .line 2765
    .line 2766
    .line 2767
    :cond_a4
    const/4 v5, 0x1

    .line 2768
    const/4 v7, 0x0

    .line 2769
    goto :goto_4c

    .line 2770
    :cond_a5
    const-string v0, "Virtual Key - Press"

    .line 2771
    .line 2772
    const/4 v5, 0x1

    .line 2773
    const/4 v7, 0x0

    .line 2774
    invoke-virtual {v1, v5, v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 2775
    .line 2776
    .line 2777
    :goto_4c
    if-eqz v21, :cond_ac

    .line 2778
    .line 2779
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2780
    .line 2781
    const/16 v10, 0xe0

    .line 2782
    .line 2783
    if-eq v6, v10, :cond_a6

    .line 2784
    .line 2785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2786
    .line 2787
    .line 2788
    goto :goto_4d

    .line 2789
    :cond_a6
    iget-boolean v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 2790
    .line 2791
    if-eqz v10, :cond_a7

    .line 2792
    .line 2793
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 2794
    .line 2795
    if-eqz v0, :cond_a7

    .line 2796
    .line 2797
    move v7, v5

    .line 2798
    :cond_a7
    :goto_4d
    if-eqz v7, :cond_ab

    .line 2799
    .line 2800
    if-eqz v9, :cond_ac

    .line 2801
    .line 2802
    and-int/lit16 v0, v3, 0x800

    .line 2803
    .line 2804
    if-eqz v0, :cond_a8

    .line 2805
    .line 2806
    move v11, v2

    .line 2807
    goto :goto_4e

    .line 2808
    :cond_a8
    move v11, v13

    .line 2809
    :goto_4e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2810
    .line 2811
    .line 2812
    move-result-object v0

    .line 2813
    if-eqz v0, :cond_a9

    .line 2814
    .line 2815
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 2816
    .line 2817
    .line 2818
    move-result-object v0

    .line 2819
    goto :goto_4f

    .line 2820
    :cond_a9
    const-string v0, ""

    .line 2821
    .line 2822
    :goto_4f
    const-string v2, "):"

    .line 2823
    .line 2824
    move-object/from16 v3, v32

    .line 2825
    .line 2826
    invoke-static {v6, v3, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v0

    .line 2830
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 2831
    .line 2832
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2833
    .line 2834
    .line 2835
    move-result-wide v3

    .line 2836
    iget-boolean v5, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2837
    .line 2838
    invoke-virtual {v2, v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 2839
    .line 2840
    .line 2841
    move-result v5

    .line 2842
    if-nez v5, :cond_aa

    .line 2843
    .line 2844
    goto :goto_50

    .line 2845
    :cond_aa
    invoke-virtual {v2, v3, v4, v11, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 2846
    .line 2847
    .line 2848
    goto :goto_50

    .line 2849
    :cond_ab
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 2850
    .line 2851
    .line 2852
    :cond_ac
    :goto_50
    if-eqz v8, :cond_ad

    .line 2853
    .line 2854
    move/from16 v2, v24

    .line 2855
    .line 2856
    const/4 v3, -0x1

    .line 2857
    if-eq v2, v3, :cond_ad

    .line 2858
    .line 2859
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 2860
    .line 2861
    if-eq v2, v0, :cond_ad

    .line 2862
    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2864
    .line 2865
    const-string v3, "Attempting to move non-focused display "

    .line 2866
    .line 2867
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2868
    .line 2869
    .line 2870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2871
    .line 2872
    .line 2873
    const-string v3, " to top because a key is targeting it"

    .line 2874
    .line 2875
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    .line 2877
    .line 2878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2879
    .line 2880
    .line 2881
    move-result-object v0

    .line 2882
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    .line 2884
    .line 2885
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2886
    .line 2887
    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTopIfAllowed(I)V

    .line 2888
    .line 2889
    .line 2890
    :cond_ad
    return v8

    .line 2891
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    :pswitch_data_1
    .packed-switch 0x134
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2906
    .line 2907
    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2918
    .line 2919
    .line 2920
    .line 2921
    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    :pswitch_data_3
    .packed-switch 0x134
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    .line 2942
    .line 2943
    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    :pswitch_data_5
    .packed-switch 0x18
        :pswitch_10
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    :pswitch_data_6
    .packed-switch 0x55
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 2964
    .line 2965
    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    :pswitch_data_7
    .packed-switch 0xde
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 2982
    .line 2983
    .line 2984
    .line 2985
    .line 2986
    .line 2987
    .line 2988
    .line 2989
    .line 2990
    .line 2991
    :pswitch_data_8
    .packed-switch 0x118
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 2992
    .line 2993
    .line 2994
    .line 2995
    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    :pswitch_data_9
    .packed-switch 0x121
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 3004
    .line 3005
    .line 3006
    .line 3007
    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    .line 3014
    .line 3015
    .line 3016
    .line 3017
    .line 3018
    .line 3019
    .line 3020
    .line 3021
    .line 3022
    .line 3023
    .line 3024
    .line 3025
    .line 3026
    .line 3027
    .line 3028
    .line 3029
    .line 3030
    .line 3031
    .line 3032
    .line 3033
    .line 3034
    .line 3035
    .line 3036
    .line 3037
    .line 3038
    .line 3039
    :pswitch_data_a
    .packed-switch 0x134
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 3040
    .line 3041
    .line 3042
    .line 3043
    .line 3044
    .line 3045
    .line 3046
    .line 3047
    .line 3048
    .line 3049
    .line 3050
    .line 3051
    :pswitch_data_b
    .packed-switch 0x139
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    const-wide/16 v6, 0x2

    .line 30
    .line 31
    mul-long/2addr v4, v6

    .line 32
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 40
    .line 41
    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    :cond_2
    move v1, v2

    .line 71
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    if-nez p2, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 90
    .line 91
    const/16 p2, 0x1a

    .line 92
    .line 93
    if-ne p2, p1, :cond_5

    .line 94
    .line 95
    const-string p1, "WindowManager"

    .line 96
    .line 97
    const-string p2, "Skip power key gesture for other policy has handled it."

    .line 98
    .line 99
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_0
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 110
    .line 111
    sget-boolean p2, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 112
    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string/jumbo v0, "setBeganFromNonInteractive old="

    .line 118
    .line 119
    .line 120
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-boolean v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 124
    .line 125
    const-string v1, "SingleKeyGesture"

    .line 126
    .line 127
    invoke-static {v1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iput-boolean v2, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 131
    .line 132
    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 141
    .line 142
    if-eqz p0, :cond_8

    .line 143
    .line 144
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_8

    .line 153
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-eqz p0, :cond_8

    .line 159
    .line 160
    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception p0

    .line 165
    const-string p1, "CoverPolicy"

    .line 166
    .line 167
    const-string p2, "CoverManager threw RemoteException"

    .line 168
    .line 169
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    :cond_8
    :goto_1
    return-void
.end method

.method public final interceptUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    move v8, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v8, v3

    .line 42
    :goto_1
    const/16 v9, 0x6e

    .line 43
    .line 44
    const-string v10, "WindowManager"

    .line 45
    .line 46
    if-eq v7, v9, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-nez v8, :cond_4

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-nez v7, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v7}, Landroid/view/InputDevice;->getVendorId()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {v7}, Landroid/view/InputDevice;->getProductId()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v6, v8, v7, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startGameToolsService(IIZ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    const-string p0, "Handled key. keyCode="

    .line 73
    .line 74
    invoke-static {v0, p0, v10}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v4

    .line 78
    :cond_4
    :goto_2
    const/16 v6, 0x36

    .line 79
    .line 80
    if-eq v0, v6, :cond_10

    .line 81
    .line 82
    const/16 v6, 0x3e

    .line 83
    .line 84
    const/4 v7, -0x1

    .line 85
    if-eq v0, v6, :cond_e

    .line 86
    .line 87
    const/16 p1, 0x6f

    .line 88
    .line 89
    if-eq v0, p1, :cond_b

    .line 90
    .line 91
    const/16 p1, 0x78

    .line 92
    .line 93
    if-eq v0, p1, :cond_8

    .line 94
    .line 95
    const/16 p1, 0x108

    .line 96
    .line 97
    if-eq v0, p1, :cond_5

    .line 98
    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_6

    .line 106
    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, "Illegal keycode provided to handleUnhandledSystemKey: "

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v10, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 157
    .line 158
    .line 159
    return v4

    .line 160
    :cond_8
    if-eqz v2, :cond_11

    .line 161
    .line 162
    if-nez v1, :cond_11

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 174
    .line 175
    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 176
    .line 177
    if-ne p1, v7, :cond_9

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    move v3, p1

    .line 181
    :goto_4
    invoke-virtual {p2, v4, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 182
    .line 183
    .line 184
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 185
    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    const-string p0, "PKBD0051"

    .line 194
    .line 195
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    return v4

    .line 199
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_c

    .line 204
    .line 205
    return v3

    .line 206
    :cond_c
    if-eqz v2, :cond_11

    .line 207
    .line 208
    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_11

    .line 213
    .line 214
    if-nez v1, :cond_11

    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->closeSystemDialogs()V

    .line 219
    .line 220
    .line 221
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 222
    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const-string p0, "PKBD0001"

    .line 231
    .line 232
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_d
    return v4

    .line 236
    :cond_e
    if-eqz v2, :cond_11

    .line 237
    .line 238
    if-nez v1, :cond_11

    .line 239
    .line 240
    and-int/lit16 v0, v5, -0xc2

    .line 241
    .line 242
    const/16 v1, 0x1000

    .line 243
    .line 244
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_11

    .line 249
    .line 250
    and-int/lit16 v0, v5, 0xc1

    .line 251
    .line 252
    if-eqz v0, :cond_f

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_f
    move v7, v4

    .line 256
    :goto_5
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    .line 257
    .line 258
    invoke-direct {v0, p1, p2, v7}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(Landroid/os/IBinder;Landroid/view/KeyEvent;I)V

    .line 259
    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 262
    .line 263
    const/16 p1, 0x19

    .line 264
    .line 265
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    .line 271
    .line 272
    return v4

    .line 273
    :cond_10
    if-eqz v2, :cond_11

    .line 274
    .line 275
    const/16 p1, 0x1002

    .line 276
    .line 277
    invoke-static {v5, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_11

    .line 282
    .line 283
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    invoke-virtual {p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_11

    .line 294
    .line 295
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 296
    .line 297
    const/16 p1, 0x11

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    .line 305
    .line 306
    return v4

    .line 307
    :cond_11
    :goto_6
    return v3
.end method

.method public final isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 1
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 p1, 0x7f8

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isKeyguardOccluded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 10
    .line 11
    return p0
.end method

.method public final isKeyguardSecure(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-boolean p1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 29
    .line 30
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 31
    .line 32
    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

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
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public final isKeyguardTrustedLw()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 14
    .line 15
    :cond_1
    return v0
.end method

.method public final isScreenOn(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 19
    .line 20
    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "user_setup_complete"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string/jumbo v4, "tv_user_setup_complete"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    :goto_1
    move v2, v1

    .line 42
    :cond_1
    and-int/2addr v0, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v4, "android.car.SETUP_WIZARD_IN_PROGRESS"

    .line 55
    .line 56
    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    return v0
.end method

.method public final keyguardOn()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    move p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 21
    .line 22
    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 23
    .line 24
    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 25
    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 29
    .line 30
    :goto_0
    if-eqz p0, :cond_3

    .line 31
    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    :cond_3
    return v0
.end method

.method public final launchAllAppsAction()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.ALL_APPS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "android.intent.action.MAIN"

    .line 13
    .line 14
    const-string v2, "android.intent.category.HOME"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    const/high16 v3, 0x100000

    .line 23
    .line 24
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 25
    .line 26
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final launchAllAppsViaA11y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/AccessibilityManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/AccessibilityManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/AccessibilityManagerInternal;->performSystemAction()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final launchAssistAction(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "assist"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, -0x2

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    if-eqz p5, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    const-string p1, "android.intent.extra.TIME"

    .line 35
    .line 36
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    const-string p1, "invocation_type"

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-class p2, Landroid/app/SearchManager;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/app/SearchManager;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final launchHomeFromHotKey(IZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p3, :cond_4

    .line 8
    .line 9
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 10
    .line 11
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    iget-object v1, p3, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move p3, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    :goto_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_4

    .line 31
    .line 32
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 33
    .line 34
    iget-object v1, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v2, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 41
    .line 42
    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 43
    .line 44
    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 45
    .line 46
    :cond_2
    iget-object p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 47
    .line 48
    iget-boolean p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 49
    .line 50
    if-eqz p3, :cond_4

    .line 51
    .line 52
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    .line 55
    .line 56
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :cond_4
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    if-eqz p3, :cond_6

    .line 78
    .line 79
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    if-eqz p2, :cond_5

    .line 87
    .line 88
    const-string p1, "dreams"

    .line 89
    .line 90
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    :try_start_1
    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    :catch_1
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    const-string/jumbo p3, "startDockOrHome"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p3, v1, p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;ZZI)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method public final lockNow(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.DEVICE_POWER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 19
    .line 20
    iput-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    const-string p1, "WindowManager"

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "lockNow, pid "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " , uid"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    const/4 v0, 0x1

    .line 68
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getIntValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2
    .line 3
    if-ne v0, p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x11101c8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_5

    .line 26
    .line 27
    if-nez p3, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    if-eqz v0, :cond_3

    .line 41
    .line 42
    new-instance v0, Landroid/content/Intent;

    .line 43
    .line 44
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 45
    .line 46
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 53
    .line 54
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 58
    .line 59
    const-wide/32 v3, 0xf4240

    .line 60
    .line 61
    .line 62
    div-long/2addr p1, v3

    .line 63
    iget-boolean v3, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 v3, 0x5

    .line 73
    const-string v4, "CAMERA_COVER"

    .line 74
    .line 75
    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 79
    .line 80
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 84
    .line 85
    return-void
.end method

.method public final okToAnimate(Z)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final performHapticFeedback(ILjava/lang/String;Z)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move v2, p1

    .line 15
    move-object v4, p2

    .line 16
    move v5, p3

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final postShortPressOnHome(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final powerMultiPressAction(JZILandroid/view/KeyEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "PhoneWindowManagerExt"

    .line 9
    .line 10
    packed-switch p4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string/jumbo p5, "powerMultiPress behavior was wrong. "

    .line 14
    .line 15
    .line 16
    invoke-static {p4, p5, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p5, 0x1

    .line 20
    const-string p6, "WindowManager"

    .line 21
    .line 22
    if-eq p4, p5, :cond_7

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq p4, v0, :cond_5

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    if-eq p4, p1, :cond_0

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "Executing the double press power action."

    .line 37
    .line 38
    invoke-static {p6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 42
    .line 43
    if-eqz p1, :cond_b

    .line 44
    .line 45
    new-instance p1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move p5, v3

    .line 79
    :goto_0
    const/high16 p2, 0x10200000

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    if-nez p5, :cond_3

    .line 85
    .line 86
    sget-object p2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 96
    .line 97
    if-eqz p0, :cond_b

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string p2, "Could not resolve activity with : "

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p0, " name."

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const-string p4, "Starting brightness boost."

    .line 134
    .line 135
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    if-nez p3, :cond_6

    .line 139
    .line 140
    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    .line 141
    .line 142
    .line 143
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 150
    .line 151
    .line 152
    move-result p4

    .line 153
    if-nez p4, :cond_8

    .line 154
    .line 155
    const-string p0, "Ignoring toggling theater mode - device not setup."

    .line 156
    .line 157
    invoke-static {p6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 164
    .line 165
    .line 166
    move-result-object p4

    .line 167
    const-string/jumbo v0, "theater_mode_on"

    .line 168
    .line 169
    .line 170
    invoke-static {p4, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result p4

    .line 174
    if-ne p4, p5, :cond_9

    .line 175
    .line 176
    move p4, p5

    .line 177
    goto :goto_1

    .line 178
    :cond_9
    move p4, v3

    .line 179
    :goto_1
    if-eqz p4, :cond_a

    .line 180
    .line 181
    const-string p4, "Toggling theater mode off."

    .line 182
    .line 183
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    .line 190
    .line 191
    move-result-object p4

    .line 192
    invoke-static {p4, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    .line 194
    .line 195
    if-nez p3, :cond_b

    .line 196
    .line 197
    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_a
    const-string p4, "Toggling theater mode on."

    .line 202
    .line 203
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    invoke-static {p4, v0, p5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    .line 214
    .line 215
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 216
    .line 217
    if-eqz p4, :cond_b

    .line 218
    .line 219
    if-eqz p3, :cond_b

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 222
    .line 223
    const/4 p3, 0x4

    .line 224
    invoke-virtual {p0, p1, p2, p3, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_2
    return-void

    .line 228
    :pswitch_0
    invoke-virtual {v1, p5, p6}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_a

    .line 232
    .line 233
    :pswitch_1
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 234
    .line 235
    if-eqz p0, :cond_1b

    .line 236
    .line 237
    const/16 p0, 0x8

    .line 238
    .line 239
    invoke-virtual {v1, p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    const/16 p1, 0x7d2

    .line 244
    .line 245
    if-ne p0, p1, :cond_1b

    .line 246
    .line 247
    const-string p0, "Launch TvMode by power key double press"

    .line 248
    .line 249
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    invoke-static {v0, p5, p3}, Lcom/android/server/policy/SideKeyDoublePress;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :pswitch_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 258
    .line 259
    if-eqz p0, :cond_1b

    .line 260
    .line 261
    const-string p0, "Launch target app by side key double press"

    .line 262
    .line 263
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    invoke-static {v0, p5, p3}, Lcom/android/server/policy/SideKeyDoublePress;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_a

    .line 270
    .line 271
    :pswitch_3
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 272
    .line 273
    if-nez p0, :cond_c

    .line 274
    .line 275
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 276
    .line 277
    if-eqz p0, :cond_1b

    .line 278
    .line 279
    :cond_c
    new-instance p0, Landroid/content/Intent;

    .line 280
    .line 281
    const-string p1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    .line 282
    .line 283
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    const/high16 p2, 0x100000

    .line 293
    .line 294
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    const/4 p2, 0x0

    .line 299
    if-eqz p1, :cond_11

    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result p3

    .line 305
    if-eqz p3, :cond_d

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object p3

    .line 312
    :cond_e
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result p5

    .line 316
    if-eqz p5, :cond_10

    .line 317
    .line 318
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p5

    .line 322
    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 323
    .line 324
    if-eqz p5, :cond_e

    .line 325
    .line 326
    iget-object p6, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 327
    .line 328
    if-nez p6, :cond_f

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_f
    const-string v1, "com.samsung.android.emergency"

    .line 332
    .line 333
    iget-object p6, p6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result p6

    .line 339
    if-eqz p6, :cond_e

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    move-object p5, p1

    .line 347
    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_11
    :goto_4
    move-object p5, p2

    .line 351
    :goto_5
    if-nez p5, :cond_12

    .line 352
    .line 353
    const-string p0, "Couldn\'t find an app to process the emergency intent."

    .line 354
    .line 355
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    :goto_6
    move-object p0, p2

    .line 359
    goto :goto_7

    .line 360
    :cond_12
    iget-object p1, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 361
    .line 362
    if-nez p1, :cond_13

    .line 363
    .line 364
    const-string p0, "activityInfo is null, Can not update the emergency intent."

    .line 365
    .line 366
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_13
    new-instance p2, Landroid/content/ComponentName;

    .line 371
    .line 372
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 373
    .line 374
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 375
    .line 376
    invoke-direct {p2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    .line 381
    .line 382
    const/high16 p1, 0x10000000

    .line 383
    .line 384
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    .line 386
    .line 387
    :goto_7
    if-nez p0, :cond_14

    .line 388
    .line 389
    const-string p0, "Can not launch emergency SOS, the intent is null"

    .line 390
    .line 391
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    goto/16 :goto_a

    .line 395
    .line 396
    :cond_14
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    sget-object p2, Lcom/android/server/policy/KeyCombinationManager;->HW_KEY_LIST_EXCEPT_POWER:[I

    .line 406
    .line 407
    array-length p3, p2

    .line 408
    move p5, v3

    .line 409
    :goto_8
    if-ge p5, p3, :cond_16

    .line 410
    .line 411
    aget p6, p2, p5

    .line 412
    .line 413
    iget-object v1, p1, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 414
    .line 415
    invoke-virtual {v1, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    if-nez v1, :cond_15

    .line 420
    .line 421
    add-int/lit8 p5, p5, 0x1

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_15
    move v3, p6

    .line 425
    :cond_16
    if-eqz v3, :cond_17

    .line 426
    .line 427
    const-string p0, "Can not launch emergency SOS, other key is pressed "

    .line 428
    .line 429
    invoke-static {v3, p0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string p2, "launch emergency SOS, behavior="

    .line 436
    .line 437
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-static {p4}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 455
    .line 456
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 457
    .line 458
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 459
    .line 460
    .line 461
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 462
    .line 463
    if-eqz p0, :cond_1b

    .line 464
    .line 465
    const/16 p0, 0x66

    .line 466
    .line 467
    if-ne p4, p0, :cond_18

    .line 468
    .line 469
    const-string p0, "HWB1003"

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_18
    const-string p0, "HWB1005"

    .line 473
    .line 474
    :goto_9
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    goto :goto_a

    .line 478
    :pswitch_4
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 479
    .line 480
    if-eqz p0, :cond_1a

    .line 481
    .line 482
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    .line 483
    .line 484
    .line 485
    move-result p0

    .line 486
    if-eqz p0, :cond_1a

    .line 487
    .line 488
    const-string p0, "Launch camera by power key double press"

    .line 489
    .line 490
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    if-nez p0, :cond_19

    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPowerDoublePressCamera()V

    .line 500
    .line 501
    .line 502
    :cond_19
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    .line 503
    .line 504
    .line 505
    goto :goto_a

    .line 506
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    const-string p1, "Can not launch camera, maybe behavior was wrong. "

    .line 509
    .line 510
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iget p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 514
    .line 515
    invoke-static {p0, p1, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    :cond_1b
    :goto_a
    return-void

    .line 519
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final powerPress(JIILandroid/view/KeyEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v7, v1, :cond_2

    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v5, "SideFpsEventHandler"

    .line 18
    .line 19
    const-string/jumbo v8, "notifyPowerPressed"

    .line 20
    .line 21
    .line 22
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    iget-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v8, Landroid/hardware/fingerprint/FingerprintManager;

    .line 40
    .line 41
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    .line 46
    .line 47
    iput-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 48
    .line 49
    :cond_0
    iget-object v4, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 58
    .line 59
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 60
    .line 61
    const/4 v5, 0x5

    .line 62
    const/4 v8, 0x2

    .line 63
    const/4 v9, 0x3

    .line 64
    if-eqz v4, :cond_8

    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 67
    .line 68
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 69
    .line 70
    if-nez v4, :cond_8

    .line 71
    .line 72
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 73
    .line 74
    iget-object v10, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 75
    .line 76
    if-eq v7, v8, :cond_5

    .line 77
    .line 78
    if-eq v7, v9, :cond_4

    .line 79
    .line 80
    if-eq v7, v5, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 84
    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    iget v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 88
    .line 89
    const/16 v10, 0x67

    .line 90
    .line 91
    if-ne v4, v10, :cond_7

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 95
    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    iget v4, v10, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 99
    .line 100
    const/16 v10, 0x66

    .line 101
    .line 102
    if-ne v4, v10, :cond_7

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    iget v4, v10, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 110
    .line 111
    const/16 v11, 0x68

    .line 112
    .line 113
    if-eq v4, v11, :cond_8

    .line 114
    .line 115
    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 116
    .line 117
    if-eqz v4, :cond_7

    .line 118
    .line 119
    iget v4, v10, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 120
    .line 121
    const/16 v10, 0x65

    .line 122
    .line 123
    if-ne v4, v10, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    :goto_1
    const-string v0, "WindowManager"

    .line 127
    .line 128
    const-string v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    .line 129
    .line 130
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_8
    :goto_2
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 135
    .line 136
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 137
    .line 138
    const/16 v10, 0x1a

    .line 139
    .line 140
    if-ne v7, v1, :cond_12

    .line 141
    .line 142
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 143
    .line 144
    iget-object v13, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 145
    .line 146
    iget-object v14, v13, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 147
    .line 148
    iget-boolean v14, v14, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 149
    .line 150
    if-eqz v6, :cond_10

    .line 151
    .line 152
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v15, v6}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-nez v15, :cond_10

    .line 161
    .line 162
    iget v15, v13, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 163
    .line 164
    and-int/2addr v15, v8

    .line 165
    if-nez v15, :cond_a

    .line 166
    .line 167
    :cond_9
    const/4 v14, 0x0

    .line 168
    goto :goto_4

    .line 169
    :cond_a
    if-eqz v4, :cond_b

    .line 170
    .line 171
    if-nez v14, :cond_b

    .line 172
    .line 173
    :goto_3
    move v14, v1

    .line 174
    goto :goto_4

    .line 175
    :cond_b
    sget-boolean v14, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 176
    .line 177
    if-eqz v14, :cond_9

    .line 178
    .line 179
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    invoke-virtual {v14}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-eqz v14, :cond_9

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :goto_4
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    if-nez v13, :cond_c

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_c
    invoke-virtual {v13}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    const-string v11, "PhoneWindowManagerExt"

    .line 202
    .line 203
    if-eqz v15, :cond_e

    .line 204
    .line 205
    const-string/jumbo v13, "silenceRinger"

    .line 206
    .line 207
    .line 208
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    const-class v11, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 212
    .line 213
    invoke-static {v11}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    check-cast v11, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 218
    .line 219
    if-nez v11, :cond_d

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_d
    invoke-virtual {v11, v10}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_e
    if-eqz v14, :cond_10

    .line 227
    .line 228
    invoke-virtual {v13}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-eqz v13, :cond_10

    .line 233
    .line 234
    const-string v0, "endCall"

    .line 235
    .line 236
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 246
    .line 247
    if-nez v0, :cond_f

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_f
    invoke-virtual {v0, v10}, Lcom/samsung/android/telecom/SemTelecomManager;->endCall(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_10
    :goto_5
    sget-boolean v11, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    .line 255
    .line 256
    if-eqz v11, :cond_12

    .line 257
    .line 258
    iget-boolean v11, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 259
    .line 260
    if-nez v11, :cond_11

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_11
    :goto_6
    const-string v0, "WindowManager"

    .line 264
    .line 265
    const-string v1, "consumed by powerPress, interactive="

    .line 266
    .line 267
    invoke-static {v1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_12
    :goto_7
    const-string v11, "WindowManager"

    .line 272
    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string/jumbo v13, "powerPress: eventTime="

    .line 276
    .line 277
    .line 278
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v13, " interactive="

    .line 285
    .line 286
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v13, " count="

    .line 293
    .line 294
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v13, " mShortPressOnPowerBehavior="

    .line 301
    .line 302
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 306
    .line 307
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v13, " systemKeyRequested="

    .line 311
    .line 312
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 316
    .line 317
    invoke-static {v11, v12, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 318
    .line 319
    .line 320
    if-ne v7, v8, :cond_17

    .line 321
    .line 322
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 328
    .line 329
    if-nez v8, :cond_13

    .line 330
    .line 331
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    .line 332
    .line 333
    if-nez v8, :cond_13

    .line 334
    .line 335
    iget-boolean v8, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    .line 336
    .line 337
    if-nez v8, :cond_13

    .line 338
    .line 339
    iget-boolean v8, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 340
    .line 341
    if-eqz v8, :cond_16

    .line 342
    .line 343
    :cond_13
    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    .line 344
    .line 345
    if-eqz v5, :cond_16

    .line 346
    .line 347
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 348
    .line 349
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 350
    .line 351
    const-string v3, "PhoneWindowManagerExt"

    .line 352
    .line 353
    if-eqz v2, :cond_14

    .line 354
    .line 355
    new-instance v2, Landroid/content/Intent;

    .line 356
    .line 357
    const-string v4, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 358
    .line 359
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v4, "ERRNAME"

    .line 363
    .line 364
    const-string v5, "User pressed h/w key for logging"

    .line 365
    .line 366
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    const-string v4, "ERRCODE"

    .line 370
    .line 371
    const/16 v6, -0x83

    .line 372
    .line 373
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    const-string v4, "ERRMSG"

    .line 377
    .line 378
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    const-string v4, "lockScreen"

    .line 382
    .line 383
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 389
    .line 390
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 391
    .line 392
    .line 393
    const-string/jumbo v0, "sendBroadcast to issuetracker."

    .line 394
    .line 395
    .line 396
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto/16 :goto_d

    .line 400
    .line 401
    :cond_14
    const-string v1, "dumpstate.is_running"

    .line 402
    .line 403
    const-string v2, "0"

    .line 404
    .line 405
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v2, "1"

    .line 410
    .line 411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_15

    .line 416
    .line 417
    const-string v0, "Running dump due to requestCustomFullBugreport."

    .line 418
    .line 419
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    goto/16 :goto_d

    .line 423
    .line 424
    :cond_15
    const-string v1, "Called requestCustomFullBugreport, reason=key_combination"

    .line 425
    .line 426
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 430
    .line 431
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

    .line 432
    .line 433
    const/4 v2, 0x1

    .line 434
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    .line 439
    .line 440
    goto/16 :goto_d

    .line 441
    .line 442
    :cond_16
    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 443
    .line 444
    move-object/from16 v1, p0

    .line 445
    .line 446
    move-wide/from16 v2, p1

    .line 447
    .line 448
    move-object/from16 v6, p5

    .line 449
    .line 450
    move/from16 v7, p3

    .line 451
    .line 452
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_d

    .line 456
    .line 457
    :cond_17
    if-ne v7, v9, :cond_18

    .line 458
    .line 459
    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 460
    .line 461
    move-object/from16 v1, p0

    .line 462
    .line 463
    move-wide/from16 v2, p1

    .line 464
    .line 465
    move-object/from16 v6, p5

    .line 466
    .line 467
    move/from16 v7, p3

    .line 468
    .line 469
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_d

    .line 473
    .line 474
    :cond_18
    const/4 v8, 0x4

    .line 475
    if-ne v7, v8, :cond_19

    .line 476
    .line 477
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 478
    .line 479
    iget v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 480
    .line 481
    move-object/from16 v1, p0

    .line 482
    .line 483
    move-wide/from16 v2, p1

    .line 484
    .line 485
    move-object/from16 v6, p5

    .line 486
    .line 487
    move/from16 v7, p3

    .line 488
    .line 489
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_d

    .line 493
    .line 494
    :cond_19
    if-ne v7, v5, :cond_1a

    .line 495
    .line 496
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 497
    .line 498
    iget v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 499
    .line 500
    move-object/from16 v1, p0

    .line 501
    .line 502
    move-wide/from16 v2, p1

    .line 503
    .line 504
    move-object/from16 v6, p5

    .line 505
    .line 506
    move/from16 v7, p3

    .line 507
    .line 508
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_d

    .line 512
    .line 513
    :cond_1a
    if-le v7, v9, :cond_1b

    .line 514
    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    if-gt v7, v5, :cond_1b

    .line 520
    .line 521
    const-string v0, "WindowManager"

    .line 522
    .line 523
    const-string v1, "No behavior defined for power press count "

    .line 524
    .line 525
    invoke-static {v7, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_d

    .line 529
    .line 530
    :cond_1b
    if-ne v7, v1, :cond_2d

    .line 531
    .line 532
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 533
    .line 534
    const-string v6, "WindowManager"

    .line 535
    .line 536
    if-eqz v5, :cond_1d

    .line 537
    .line 538
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 539
    .line 540
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    invoke-static {v4}, Landroid/view/Display;->isOnState(I)Z

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 549
    .line 550
    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 551
    .line 552
    if-eqz v4, :cond_1c

    .line 553
    .line 554
    if-nez v5, :cond_1f

    .line 555
    .line 556
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v1, "Ignoring short press of power button because the default display is not on. defaultDisplayOn="

    .line 559
    .line 560
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v1, ", beganFromDefaultDisplayOn="

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    goto/16 :goto_d

    .line 582
    .line 583
    :cond_1d
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 584
    .line 585
    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 586
    .line 587
    if-eqz v4, :cond_2c

    .line 588
    .line 589
    if-eqz v5, :cond_1e

    .line 590
    .line 591
    goto/16 :goto_c

    .line 592
    .line 593
    :cond_1e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    .line 594
    .line 595
    iget-object v4, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 596
    .line 597
    if-eqz v4, :cond_1f

    .line 598
    .line 599
    invoke-virtual {v4, v1}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed(Z)V

    .line 600
    .line 601
    .line 602
    :cond_1f
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 603
    .line 604
    if-nez v4, :cond_2b

    .line 605
    .line 606
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 607
    .line 608
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 609
    .line 610
    invoke-virtual {v4, v10, v9}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    if-eqz v4, :cond_20

    .line 615
    .line 616
    goto/16 :goto_b

    .line 617
    .line 618
    :cond_20
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 619
    .line 620
    packed-switch v4, :pswitch_data_0

    .line 621
    .line 622
    .line 623
    goto/16 :goto_d

    .line 624
    .line 625
    :pswitch_0
    const/4 v5, 0x7

    .line 626
    if-eq v4, v5, :cond_21

    .line 627
    .line 628
    const/4 v4, 0x0

    .line 629
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 630
    .line 631
    .line 632
    goto/16 :goto_d

    .line 633
    .line 634
    :cond_21
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 635
    .line 636
    if-nez v4, :cond_22

    .line 637
    .line 638
    const-class v4, Landroid/service/dreams/DreamManagerInternal;

    .line 639
    .line 640
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    check-cast v4, Landroid/service/dreams/DreamManagerInternal;

    .line 645
    .line 646
    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 647
    .line 648
    :cond_22
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 649
    .line 650
    if-eqz v4, :cond_24

    .line 651
    .line 652
    invoke-virtual {v4, v1}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-nez v1, :cond_23

    .line 657
    .line 658
    goto :goto_8

    .line 659
    :cond_23
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 660
    .line 661
    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 663
    .line 664
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 665
    .line 666
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 671
    .line 672
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {v4}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_d

    .line 677
    .line 678
    :catchall_0
    move-exception v0

    .line 679
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    throw v0

    .line 681
    :cond_24
    :goto_8
    const-string v1, "WindowManager"

    .line 682
    .line 683
    const-string v4, "Can\'t start dreaming when attempting to dream from short power press (isScreenOn=true)"

    .line 684
    .line 685
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    const/4 v1, 0x0

    .line 689
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 690
    .line 691
    .line 692
    goto/16 :goto_d

    .line 693
    .line 694
    :pswitch_1
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 695
    .line 696
    if-eqz v4, :cond_28

    .line 697
    .line 698
    iget-object v5, v4, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 699
    .line 700
    iget-boolean v6, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 701
    .line 702
    if-eqz v6, :cond_28

    .line 703
    .line 704
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 705
    .line 706
    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 707
    .line 708
    if-eqz v4, :cond_27

    .line 709
    .line 710
    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 711
    .line 712
    iget-object v7, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 713
    .line 714
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 715
    .line 716
    .line 717
    move-result v6

    .line 718
    if-nez v6, :cond_26

    .line 719
    .line 720
    iget-boolean v4, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 721
    .line 722
    if-eqz v4, :cond_25

    .line 723
    .line 724
    goto :goto_9

    .line 725
    :cond_25
    const/4 v1, 0x0

    .line 726
    :cond_26
    :goto_9
    iput-boolean v1, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 727
    .line 728
    :cond_27
    iget-boolean v1, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 729
    .line 730
    if-eqz v1, :cond_28

    .line 731
    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_29

    .line 737
    .line 738
    :cond_28
    const/4 v4, 0x0

    .line 739
    goto :goto_a

    .line 740
    :cond_29
    const/4 v1, 0x0

    .line 741
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_d

    .line 745
    .line 746
    :goto_a
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 747
    .line 748
    .line 749
    goto/16 :goto_d

    .line 750
    .line 751
    :pswitch_2
    const/4 v4, 0x0

    .line 752
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 753
    .line 754
    if-eqz v2, :cond_2a

    .line 755
    .line 756
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    const/16 v1, 0x11

    .line 761
    .line 762
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideAllInputMethods(I)V

    .line 763
    .line 764
    .line 765
    goto :goto_d

    .line 766
    :cond_2a
    invoke-virtual {v0, v4, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 767
    .line 768
    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-eqz v1, :cond_2d

    .line 774
    .line 775
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 776
    .line 777
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 778
    .line 779
    if-eqz v0, :cond_2d

    .line 780
    .line 781
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onShortPowerPressedGoHome()V

    .line 782
    .line 783
    .line 784
    goto :goto_d

    .line 785
    :pswitch_3
    const/4 v2, 0x0

    .line 786
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 787
    .line 788
    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    if-eqz v1, :cond_2d

    .line 794
    .line 795
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 796
    .line 797
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 798
    .line 799
    if-eqz v0, :cond_2d

    .line 800
    .line 801
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onShortPowerPressedGoHome()V

    .line 802
    .line 803
    .line 804
    goto :goto_d

    .line 805
    :pswitch_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_2d

    .line 810
    .line 811
    const/4 v4, 0x0

    .line 812
    invoke-virtual {v0, v4, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 813
    .line 814
    .line 815
    goto :goto_d

    .line 816
    :pswitch_5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 817
    .line 818
    .line 819
    goto :goto_d

    .line 820
    :pswitch_6
    const/4 v4, 0x0

    .line 821
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 822
    .line 823
    .line 824
    goto :goto_d

    .line 825
    :cond_2b
    :goto_b
    const-string v0, "WindowManager"

    .line 826
    .line 827
    const-string/jumbo v1, "skip single press power, requestedSystemKey"

    .line 828
    .line 829
    .line 830
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .line 832
    .line 833
    return-void

    .line 834
    :cond_2c
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 835
    .line 836
    const-string v1, "Ignoring short press of power button because the device is not interactive. interactive="

    .line 837
    .line 838
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v1, ", beganFromNonInteractive="

    .line 845
    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    :cond_2d
    :goto_d
    return-void

    .line 860
    nop

    .line 861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readConfigurationDependentBehaviors()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_SEARCLE:Z

    .line 8
    .line 9
    const/16 v2, 0x65

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_BIXBY_TOUCH_CHN:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const v1, 0x10e00cf

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 32
    .line 33
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-ltz v1, :cond_2

    .line 37
    .line 38
    if-le v1, v2, :cond_3

    .line 39
    .line 40
    :cond_2
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 41
    .line 42
    :cond_3
    const v1, 0x10e009c

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    if-ltz v1, :cond_4

    .line 53
    .line 54
    if-le v1, v2, :cond_5

    .line 55
    .line 56
    :cond_4
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 57
    .line 58
    :cond_5
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    const-string v4, "android.software.picture_in_picture"

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 72
    .line 73
    :cond_6
    const v1, 0x10e014a

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 81
    .line 82
    if-ltz v0, :cond_7

    .line 83
    .line 84
    if-le v0, v2, :cond_8

    .line 85
    .line 86
    :cond_7
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 87
    .line 88
    :cond_8
    return-void
.end method

.method public final screenTurnedOff(IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Display"

    .line 8
    .line 9
    const-string v2, " turned off..."

    .line 10
    .line 11
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_6

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/android/window/flags/Flags;->skipSleepingWhenSwitchingDisplay()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 43
    .line 44
    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    iget-object v1, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const-string v1, "KeyguardServiceDelegate"

    .line 58
    .line 59
    const-string/jumbo v2, "onScreenTurnedOff()"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v1, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff()V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 71
    .line 72
    iput v0, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 73
    .line 74
    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 86
    .line 87
    const/4 p1, 0x2

    .line 88
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    throw p0

    .line 97
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_6
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 100
    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-ne p1, p2, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 116
    .line 117
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_2
    return-void
.end method

.method public final screenTurnedOn(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Display "

    .line 8
    .line 9
    const-string v2, " turned on..."

    .line 10
    .line 11
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onScreenTurnedOn(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    if-eqz p1, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const-string v2, "KeyguardServiceDelegate"

    .line 51
    .line 52
    const-string/jumbo v3, "onScreenTurnedOn()"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 64
    .line 65
    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 66
    .line 67
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 74
    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public final screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const-string p2, "KeyguardServiceDelegate"

    .line 21
    .line 22
    const-string/jumbo v0, "onScreenTurningOff()"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOff()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    iput p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 37
    .line 38
    :cond_2
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "WindowManager"

    .line 6
    .line 7
    const-string v2, "Display "

    .line 8
    .line 9
    const-string v3, " turning on..."

    .line 10
    .line 11
    invoke-static {p1, v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onScreenTurningOn(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    const-wide/16 v2, 0x20

    .line 37
    .line 38
    if-nez p1, :cond_6

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v4

    .line 43
    :try_start_0
    const-string/jumbo p1, "screenTurningOn"

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p1

    .line 65
    :try_start_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 70
    .line 71
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 82
    .line 83
    const-class v1, Lcom/android/server/SystemServiceManager;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/android/server/SystemServiceManager;

    .line 90
    .line 91
    iget v1, v1, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 92
    .line 93
    const/16 v2, 0x3e8

    .line 94
    .line 95
    if-lt v1, v2, :cond_3

    .line 96
    .line 97
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 98
    .line 99
    int-to-long v1, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-wide/16 v1, 0x1388

    .line 102
    .line 103
    :goto_0
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    .line 105
    .line 106
    const-string p2, "WindowManager"

    .line 107
    .line 108
    const-string/jumbo v0, "screenTurningOn(+), before calling onScreenTurningOn to KeyguardDelegate"

    .line 109
    .line 110
    .line 111
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 119
    .line 120
    .line 121
    const-string p2, "WindowManager"

    .line 122
    .line 123
    const-string/jumbo v0, "screenTurningOn(-), after calling onScreenTurningOn to KeyguardDelegate"

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    if-eqz v0, :cond_5

    .line 133
    .line 134
    const-string p2, "WindowManager"

    .line 135
    .line 136
    const-string/jumbo v0, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 143
    .line 144
    const/4 v0, 0x5

    .line 145
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    .line 147
    .line 148
    :goto_1
    monitor-exit p1

    .line 149
    goto :goto_3

    .line 150
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p0

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    throw p0

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ne p1, v0, :cond_7

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 172
    .line 173
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 177
    .line 178
    const/4 v4, 0x0

    .line 179
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 183
    .line 184
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const-string/jumbo p2, "waitForAllWindowsDrawn"

    .line 188
    .line 189
    .line 190
    invoke-static {v2, v3, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 196
    .line 197
    const/4 v2, 0x7

    .line 198
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-wide/16 v1, 0x3e8

    .line 203
    .line 204
    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    .line 205
    .line 206
    .line 207
    :goto_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 212
    .line 213
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 214
    .line 215
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 225
    .line 226
    new-instance p2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public final sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setCurrentUserLw(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 15
    .line 16
    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final setDeferredKeyActionsExecutableAsync(IJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2
    .line 3
    const/16 v0, 0x1b

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setSwitchingUser(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final shouldDispatchInputWhenNonInteractive(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move v2, v1

    .line 12
    :goto_1
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_2
    if-eqz p1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, v1, :cond_3

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    return v1

    .line 39
    :cond_4
    if-eqz v2, :cond_5

    .line 40
    .line 41
    const-string p0, "dreams"

    .line 42
    .line 43
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_5

    .line 52
    .line 53
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz p0, :cond_5

    .line 58
    .line 59
    return v1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string p1, "WindowManager"

    .line 62
    .line 63
    const-string v1, "RemoteException when checking if dreaming"

    .line 64
    .line 65
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_3
    return v0
.end method

.method public final shouldEnableWakeGestureLp()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "lid_behavior"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 28
    .line 29
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    move p0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p0, v1

    .line 45
    :goto_0
    monitor-exit v0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    move v1, v2

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :cond_2
    :goto_1
    return v1
.end method

.method public final showDismissibleKeyguard()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->showDismissibleKeyguard()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final showGlobalActions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final showGlobalActionsInternal(I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "show Global Action, type="

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "KEY_COMBINATION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "LONG_PRESS"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v2, "DEFAULT"

    .line 35
    .line 36
    :goto_0
    const-string v3, "WindowManager"

    .line 37
    .line 38
    invoke-static {v0, v2, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/policy/GlobalActions;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "device_provisioned"

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    move v3, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move v3, v5

    .line 79
    :goto_1
    iget-object v4, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 92
    .line 93
    iget v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 94
    .line 95
    and-int/lit8 v4, v4, 0x8

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    iput-boolean v0, v2, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 101
    .line 102
    iput-boolean v3, v2, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 103
    .line 104
    iput-boolean v1, v2, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 105
    .line 106
    iget-boolean v0, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    iget-object v0, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 111
    .line 112
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 121
    .line 122
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 127
    .line 128
    .line 129
    iget-object v0, v2, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    .line 130
    .line 131
    iget-boolean v3, v2, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 132
    .line 133
    iget-boolean v2, v2, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 134
    .line 135
    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    .line 136
    .line 137
    .line 138
    :catch_0
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 139
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    invoke-virtual {p0, v0, v1, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final showRecentApps(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final showSystemSettings()V
    .locals 3

    .line 1
    const-string v0, "android.settings.SETTINGS"

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.android.settings/.homepage.SettingsHomepageActivity"

    .line 10
    .line 11
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final sleepDefaultDisplayFromPowerButton(IJ)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    .line 11
    .line 12
    if-eq v2, v1, :cond_0

    .line 13
    .line 14
    const/16 v3, 0x10

    .line 15
    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    const/16 v3, 0x11

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 27
    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 31
    .line 32
    int-to-long v7, v4

    .line 33
    add-long/2addr v5, v7

    .line 34
    cmp-long v4, v2, v5

    .line 35
    .line 36
    if-gez v4, :cond_1

    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, "Sleep from power button suppressed. Time since gesture: "

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-wide p1, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 46
    .line 47
    sub-long/2addr v2, p1

    .line 48
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string/jumbo p1, "ms"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "WindowManager"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 69
    .line 70
    invoke-virtual {p0, p2, p3, v1, p1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    return p0
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .locals 1

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Not starting activity because user setup is in progress: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :goto_1
    return-void
.end method

.method public final startDockOrHome(Ljava/lang/String;ZZI)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    const-string v0, "homekey"

    .line 9
    .line 10
    invoke-static {v0, p4}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-string p3, "dreams"

    .line 16
    .line 17
    invoke-static {p3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-interface {p3}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    :catch_1
    :cond_0
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 31
    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    const-string p0, "WindowManager"

    .line 41
    .line 42
    const-string p1, "Not going home because user setup is in progress."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-boolean p3, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    sget-object p3, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object p3, v0

    .line 62
    :goto_0
    const/4 v1, 0x0

    .line 63
    if-eqz p3, :cond_5

    .line 64
    .line 65
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    const-string v2, "ActivityManagerPerformance"

    .line 70
    .line 71
    const-string v3, "isHomeKeyPressed() called"

    .line 72
    .line 73
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v4, "isHomeKeyPressed() Trace\n"

    .line 83
    .line 84
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    new-instance v2, Ljava/lang/Exception;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :cond_3
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 114
    .line 115
    if-nez v2, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/4 v2, 0x1

    .line 119
    invoke-virtual {p3, v0, v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v2, "startDockOrHome, Callers="

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/16 v2, 0xa

    .line 136
    .line 137
    const-string v3, "PhoneWindowManagerExt"

    .line 138
    .line 139
    invoke-static {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 143
    .line 144
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-direct {v2, v3, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    if-eqz p3, :cond_7

    .line 158
    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    :try_start_2
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    .line 162
    .line 163
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    :cond_6
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 167
    .line 168
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_2
    :cond_7
    sget-boolean p3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 173
    .line 174
    if-eqz p3, :cond_8

    .line 175
    .line 176
    const-string p3, "WindowManager"

    .line 177
    .line 178
    const-string/jumbo v0, "startDockOrHome: startReason= "

    .line 179
    .line 180
    .line 181
    invoke-static {v0, p1, p3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 185
    .line 186
    invoke-virtual {p3, p4}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 191
    .line 192
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 193
    .line 194
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 195
    .line 196
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 197
    .line 198
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 199
    .line 200
    .line 201
    monitor-enter p3

    .line 202
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 205
    .line 206
    const/4 v4, 0x1

    .line 207
    move-object v1, p1

    .line 208
    move v3, p4

    .line 209
    move v5, p2

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(Ljava/lang/String;IIZZ)Z

    .line 211
    .line 212
    .line 213
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception p0

    .line 219
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 221
    .line 222
    .line 223
    throw p0
.end method

.method public final startedEarlyWakingUp(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "startedEarlyWakingUp reason="

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "KeyguardServiceDelegate"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startedEarlyWakingUp(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final startedGoingToSleep(II)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Started going to sleep... (groupId="

    .line 8
    .line 9
    const-string v2, " why="

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    const/4 v0, 0x1

    .line 45
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 48
    .line 49
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 55
    .line 56
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/android/window/flags/Flags;->skipSleepingWhenSwitchingDisplay()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 91
    .line 92
    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 93
    .line 94
    const/4 p2, 0x3

    .line 95
    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 96
    .line 97
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 109
    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    iput-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 113
    .line 114
    :cond_5
    return-void

    .line 115
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw p0
.end method

.method public final startedWakingUp(II)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Started waking up... (groupId="

    .line 8
    .line 9
    const-string v2, " why="

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const p1, 0x11170

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 63
    .line 64
    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const-string v2, "KeyguardServiceDelegate"

    .line 80
    .line 81
    const-string/jumbo v3, "onStartedWakingUp()"

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 88
    .line 89
    invoke-virtual {v2, p2, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 93
    .line 94
    iput v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 95
    .line 96
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 97
    .line 98
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 99
    .line 100
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 101
    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 105
    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    iput-boolean v0, v1, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 109
    .line 110
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    .line 111
    .line 112
    const-string v3, "0"

    .line 113
    .line 114
    const-string v4, "1"

    .line 115
    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    iget-boolean v2, v1, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    .line 119
    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    move-object v2, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    move-object v2, v3

    .line 125
    :goto_0
    const/4 v5, 0x5

    .line 126
    invoke-virtual {v1, v5, v2, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    :cond_5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    .line 130
    .line 131
    if-eqz v2, :cond_7

    .line 132
    .line 133
    iget-object v2, v1, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    iget-boolean v2, v1, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    .line 138
    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    move-object v3, v4

    .line 142
    :cond_6
    const/4 v2, 0x6

    .line 143
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    :cond_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 147
    .line 148
    if-eqz p1, :cond_8

    .line 149
    .line 150
    iget-boolean p1, v1, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 151
    .line 152
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TspStateController;->setOrientation(ZZ)V

    .line 153
    .line 154
    .line 155
    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 156
    .line 157
    if-eqz p1, :cond_a

    .line 158
    .line 159
    const/16 p1, 0x6f

    .line 160
    .line 161
    if-ne p2, p1, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_9
    const/4 p1, 0x7

    .line 168
    if-ne p2, p1, :cond_a

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 171
    .line 172
    .line 173
    :cond_a
    :goto_1
    return-void

    .line 174
    :catchall_0
    move-exception p0

    .line 175
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    throw p0
.end method

.method public final systemBooted()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 24
    .line 25
    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "android.hardware.fingerprint"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v2, v0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 58
    .line 59
    new-instance v3, Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 60
    .line 61
    invoke-direct {v3, v0, v2}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v3, 0x2

    .line 85
    if-ne v2, v3, :cond_3

    .line 86
    .line 87
    move v2, v1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v2, v0

    .line 90
    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    move v3, v1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v3, v0

    .line 99
    :goto_3
    if-nez v2, :cond_6

    .line 100
    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 114
    .line 115
    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    .line 119
    .line 120
    .line 121
    :goto_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-eqz v2, :cond_8

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    and-int/2addr v2, v1

    .line 137
    if-ne v2, v1, :cond_7

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_7
    move v1, v0

    .line 141
    :goto_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 142
    .line 143
    :cond_8
    return-void

    .line 144
    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw p0
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 13
    .line 14
    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    .line 15
    .line 16
    :goto_0
    const-class v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    const-string/jumbo v0, "uimode"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 65
    .line 66
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 67
    .line 68
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    :catch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v0

    .line 82
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSettings()V

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 99
    .line 100
    iget-object v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 108
    .line 109
    iput-boolean v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 124
    .line 125
    const-class p0, Lcom/android/server/GestureLauncherService;

    .line 126
    .line 127
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Lcom/android/server/GestureLauncherService;

    .line 132
    .line 133
    return-void

    .line 134
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    throw p0
.end method

.method public final toggleNotificationPanel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :cond_0
    return-void
.end method

.method public final toggleRecentApps()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "toggleRecentApps displayId=0"

    .line 11
    .line 12
    .line 13
    const-string v1, "WindowManager"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->toggleRecentApps()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final updateLockScreenTimeout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "WindowManager"

    .line 9
    .line 10
    const-string v1, "lockNow pending, ignore updating lockscreen timeout"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 39
    .line 40
    iget-object v4, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 48
    .line 49
    iget-object v6, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    iget-boolean v3, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v3, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    move v3, v5

    .line 65
    :goto_1
    iput-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 66
    .line 67
    :cond_3
    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    move v2, v5

    .line 72
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 73
    .line 74
    if-eq v1, v2, :cond_6

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 88
    .line 89
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 90
    .line 91
    int-to-long v4, v4

    .line 92
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 104
    .line 105
    :cond_6
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method

.method public final updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    const-string v1, "end_button_behavior"

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, -0x2

    .line 26
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 31
    .line 32
    const-string v1, "incall_power_button_behavior"

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 40
    .line 41
    const-string v1, "incall_back_button_behavior"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 49
    .line 50
    const-string/jumbo v1, "system_navigation_keys_enabled"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ne v1, v2, :cond_1

    .line 58
    .line 59
    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v1, v4

    .line 62
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 63
    .line 64
    const-string/jumbo v1, "volume_hush_gesture"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 72
    .line 73
    const-string/jumbo v1, "power_button_suppression_delay_after_gesture_wake"

    .line 74
    .line 75
    .line 76
    const/16 v5, 0x320

    .line 77
    .line 78
    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const v5, 0x1110289

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_b

    .line 104
    .line 105
    :cond_2
    :goto_1
    const-string/jumbo v1, "wake_gesture_enabled"

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    move v1, v2

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move v1, v4

    .line 117
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 118
    .line 119
    if-eq v5, v1, :cond_4

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 124
    .line 125
    .line 126
    :cond_4
    const-string/jumbo v1, "screen_off_timeout"

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 134
    .line 135
    const-string v1, "default_input_method"

    .line 136
    .line 137
    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-lez v1, :cond_5

    .line 148
    .line 149
    move v1, v2

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    move v1, v4

    .line 152
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 153
    .line 154
    if-eq v5, v1, :cond_6

    .line 155
    .line 156
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 157
    .line 158
    move v1, v2

    .line 159
    goto :goto_4

    .line 160
    :cond_6
    move v1, v4

    .line 161
    :goto_4
    const-string/jumbo v5, "power_button_short_press"

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const v7, 0x10e014b

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 182
    .line 183
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 184
    .line 185
    if-eqz v5, :cond_7

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_7
    const-string/jumbo v5, "power_button_double_press"

    .line 189
    .line 190
    .line 191
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    const v7, 0x10e009a

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 209
    .line 210
    :goto_5
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 211
    .line 212
    if-eqz v5, :cond_8

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_8
    const-string/jumbo v5, "power_button_triple_press"

    .line 216
    .line 217
    .line 218
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const v7, 0x10e0161

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 236
    .line 237
    :goto_6
    const-string/jumbo v5, "power_button_long_press"

    .line 238
    .line 239
    .line 240
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    const v7, 0x10e00d0

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    const-string/jumbo v6, "power_button_very_long_press"

    .line 258
    .line 259
    .line 260
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    const v8, 0x10e0167

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 278
    .line 279
    if-ne v7, v5, :cond_9

    .line 280
    .line 281
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 282
    .line 283
    if-eq v7, v6, :cond_a

    .line 284
    .line 285
    :cond_9
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 286
    .line 287
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 288
    .line 289
    :cond_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    const-string/jumbo v6, "power_button_long_press_duration_ms"

    .line 296
    .line 297
    .line 298
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    const v8, 0x10e00d1

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    int-to-long v7, v7

    .line 312
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 313
    .line 314
    .line 315
    move-result-wide v5

    .line 316
    iput-wide v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 317
    .line 318
    const-string v5, "key_chord_power_volume_up"

    .line 319
    .line 320
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    const v7, 0x10e00c1

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 338
    .line 339
    const-string/jumbo v5, "stem_primary_button_short_press"

    .line 340
    .line 341
    .line 342
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    const v7, 0x10e014d

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 360
    .line 361
    const-string/jumbo v5, "stem_primary_button_double_press"

    .line 362
    .line 363
    .line 364
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 365
    .line 366
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    const v7, 0x10e009b

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 382
    .line 383
    const-string/jumbo v5, "stem_primary_button_triple_press"

    .line 384
    .line 385
    .line 386
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    const v7, 0x10e0162

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 404
    .line 405
    const-string/jumbo v5, "stem_primary_button_long_press"

    .line 406
    .line 407
    .line 408
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    const v7, 0x10e00d2

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 426
    .line 427
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 428
    .line 429
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    const v6, 0x1110221

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 441
    .line 442
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 443
    .line 444
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    const v6, 0x1110222

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 456
    .line 457
    const-string/jumbo v5, "stylus_buttons_enabled"

    .line 458
    .line 459
    .line 460
    invoke-static {p1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-ne v5, v2, :cond_b

    .line 465
    .line 466
    move v5, v2

    .line 467
    goto :goto_7

    .line 468
    :cond_b
    move v5, v4

    .line 469
    :goto_7
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 470
    .line 471
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 472
    .line 473
    iget-object v6, v6, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 474
    .line 475
    iget-object v6, v6, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 476
    .line 477
    invoke-interface {v6, v5}, Lcom/android/server/input/NativeInputManagerService;->setStylusButtonMotionEventsEnabled(Z)V

    .line 478
    .line 479
    .line 480
    const-string/jumbo v5, "nav_bar_kids_mode"

    .line 481
    .line 482
    .line 483
    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-ne p1, v2, :cond_c

    .line 488
    .line 489
    move p1, v2

    .line 490
    goto :goto_8

    .line 491
    :cond_c
    move p1, v4

    .line 492
    :goto_8
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    .line 493
    .line 494
    if-eq v3, p1, :cond_d

    .line 495
    .line 496
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    .line 497
    .line 498
    move v3, v2

    .line 499
    goto :goto_9

    .line 500
    :cond_d
    move v3, v4

    .line 501
    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    if-eqz v3, :cond_10

    .line 503
    .line 504
    const/4 v0, 0x0

    .line 505
    if-eqz p1, :cond_f

    .line 506
    .line 507
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 508
    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    const v3, 0x1110211

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_e

    .line 521
    .line 522
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 523
    .line 524
    const/16 v0, 0x8

    .line 525
    .line 526
    filled-new-array {v4, v0}, [I

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    const/4 v3, 0x6

    .line 531
    filled-new-array {v3, v3}, [I

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {p1, v2, v0, v3}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    .line 536
    .line 537
    .line 538
    goto :goto_a

    .line 539
    :cond_e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 540
    .line 541
    invoke-virtual {p1, v2, v0, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 546
    .line 547
    invoke-virtual {p1, v4, v0, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    .line 548
    .line 549
    .line 550
    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    .line 551
    .line 552
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 553
    .line 554
    invoke-interface {p0, v2, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    .line 555
    .line 556
    .line 557
    :cond_11
    return-void

    .line 558
    :goto_b
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    throw p0
.end method

.method public final updateWakeGestureListenerLp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    .line 26
    .line 27
    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    .line 34
    goto :goto_3

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    .line 56
    .line 57
    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :cond_2
    :goto_2
    monitor-exit v0

    .line 64
    :goto_3
    return-void

    .line 65
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    throw p0
.end method

.method public final wakeUpFromWakeKey(IJZ)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 6
    iget-boolean v2, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    .line 8
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v2, p2, p3, p1, p4}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromKey(JIZ)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_3

    :cond_2
    if-ne p1, v1, :cond_3

    move p4, v3

    goto :goto_1

    :cond_3
    const/4 p4, 0x6

    :goto_1
    if-ne p1, v1, :cond_4

    .line 11
    const-string v2, "POWER"

    goto :goto_2

    .line 12
    :cond_4
    const-string v2, "KEY("

    const-string v4, ")"

    .line 13
    invoke-static {p1, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_2
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    :goto_3
    const/4 p2, 0x3

    const/4 p3, 0x0

    if-eq p1, p2, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    move p4, p3

    goto :goto_5

    :cond_6
    :goto_4
    move p4, v3

    .line 15
    :goto_5
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_7

    goto :goto_7

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v0, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    .line 18
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v2, :cond_8

    .line 19
    const-string/jumbo v2, "shouldWakeUpWithHomeIntent: sleepDurationRealtime= "

    const-string v4, " mWakeUpToLastStateTimeout= "

    .line 20
    invoke-static {v2, v0, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_8
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_a

    if-eqz p4, :cond_a

    if-ne p1, p2, :cond_9

    move p2, v3

    goto :goto_6

    :cond_9
    move p2, p3

    .line 23
    :goto_6
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Wake from "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;ZZI)V

    :cond_a
    :goto_7
    return-void
.end method

.method public final wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    return-void
.end method
